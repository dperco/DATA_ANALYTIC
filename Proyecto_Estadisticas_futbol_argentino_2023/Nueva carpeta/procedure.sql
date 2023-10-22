
####  devuleve los nombres de todos los jugadores de un equipo
DELIMITER $$

CREATE PROCEDURE ObtenerJugadoresPorEquipo(IN nombreEquipo VARCHAR(255))
BEGIN
    SELECT full_name
    FROM argentina_campeonato_masc_player_2023
    WHERE Current_club = nombreEquipo;
END;
$$

DELIMITER ;


#####  uscar todos los equipos que jugaron un dia determinado 

DELIMITER $$

CREATE PROCEDURE EquiposQueJugaronEnFecha(IN fechaConsulta DATE)
BEGIN
    SELECT DISTINCT home_team_name AS equipo
    FROM argentina_campeonato_masc_matches_2023
    WHERE DATE(STR_TO_DATE(date_GMT, '%M %d %Y - %l:%i%p')) = fechaConsulta
    UNION
    SELECT DISTINCT away_team_name AS equipo
    FROM argentina_campeonato_masc_matches_2023
    WHERE DATE(STR_TO_DATE(date_GMT, '%M %d %Y - %l:%i%p')) = fechaConsulta;
END;
$$

DELIMITER ;


####  procedur con sql dinamico 
###argentina_campeonato_masc_player_2023  argentina_campeonato_masc_matches_2023


DELIMITER $$

CREATE PROCEDURE BuscarJugadoresPorCriterio(IN columnaBusqueda VARCHAR(255), IN valorBusqueda VARCHAR(255))
BEGIN
    DECLARE sqlConsulta TEXT;

    -- Construye la consulta SQL dinámica
    SET @sqlConsulta = CONCAT('SELECT full_name, Current_club FROM argentina_campeonato_masc_player_2023 WHERE ', columnaBusqueda, ' = ?');
    
    -- Prepara la consulta SQL
    PREPARE stmt FROM @sqlConsulta;

    -- Ejecuta la consulta
    SET @valorBusqueda = valorBusqueda;
    EXECUTE stmt USING @valorBusqueda;
    
    -- Libera la consulta preparada
    DEALLOCATE PREPARE stmt;
END;
$$

DELIMITER ;


####  buscar los equipos con promedio de tiempo en   convertir goles  mayor a 50 minutos 
###   y saber el pormedio de edad de su equipo

DELIMITER $$

CREATE PROCEDURE EquiposConPromedioMinutosPorGol(IN minPromedio INT)
BEGIN
    DECLARE sqlConsulta TEXT;
    SET @minPromedio = minPromedio; -- Asigna el valor del parámetro a una variable

    -- Construye la consulta SQL dinámica
    SET @sqlConsulta = CONCAT(
        'SELECT t.common_name AS equipo, AVG(p.age) AS promedio_edad
        FROM argentina_campeonato_masc_teams2_2023 t
        JOIN argentina_campeonato_masc_player_2023 p ON t.common_name = p.Current_club
        WHERE t.common_name IN (
            SELECT equipo
            FROM (
                SELECT DISTINCT home_team_name AS equipo
                FROM argentina_campeonato_masc_matches_2023
                UNION
                SELECT DISTINCT away_team_name AS equipo
                FROM argentina_campeonato_masc_matches_2023
            ) subquery
            WHERE equipo IN (
                SELECT home_team_name AS equipo
                FROM argentina_campeonato_masc_matches_2023
                GROUP BY home_team_name
                HAVING AVG(minutes_per_goal_scored_overall) > ', @minPromedio, '
                UNION
                SELECT away_team_name AS equipo
                FROM argentina_campeonato_masc_matches_2023
                GROUP BY away_team_name
                HAVING AVG(minutes_per_goal_scored_overall) > ', @minPromedio, '
            )
        )
        GROUP BY t.common_name
        HAVING AVG(p.age) IS NOT NULL' -- Para evitar divisiones por cero
    );

    -- Prepara la consulta SQL
    PREPARE stmt FROM @sqlConsulta;

    -- Ejecuta la consulta
    EXECUTE stmt;
    
    -- Libera la consulta preparada
    DEALLOCATE PREPARE stmt;
END;
$$

DELIMITER ;

 