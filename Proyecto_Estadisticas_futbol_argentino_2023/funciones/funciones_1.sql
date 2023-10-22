use trabajo_final;

####  buscar jugadores por nombre
DELIMITER $$

CREATE FUNCTION BuscarJugadoresPorNombre(nombreBuscado VARCHAR(255))
RETURNS TEXT
DETERMINISTIC
NO SQL
BEGIN
    DECLARE resultado TEXT;
    
    SELECT GROUP_CONCAT(full_name) INTO resultado
    FROM argentina_campeonato_masc_player_2023
    WHERE full_name LIKE CONCAT('%', nombreBuscado, '%');
    
    IF resultado IS NULL THEN
        SET resultado = 'No se encontraron jugadores con ese nombre.';
    END IF;
    
    RETURN resultado;
END;
$$

DELIMITER ;

###  buscar jugadores mayores a 27 años de 2 equipos que jugaron un dia determindo


DELIMITER $$

CREATE FUNCTION JugadoresPorFechaYEquipos(fechaConsulta DATE, equipo1 VARCHAR(255), equipo2 VARCHAR(255))
RETURNS TEXT
DETERMINISTIC
NO SQL
BEGIN
    DECLARE resultado TEXT;
    
    SELECT GROUP_CONCAT(p.full_name) INTO resultado
    FROM argentina_campeonato_masc_player_2023 p
    JOIN argentina_campeonato_masc_matches_2023 m ON p.Current_club IN (equipo1, equipo2)
    WHERE DATE(m.date_GMT) = fechaConsulta;
    
    IF resultado IS NULL THEN
        SET resultado = 'No se encontraron jugadores que cumplan con los criterios.';
    END IF;
    
    RETURN resultado;
END;
$$

DELIMITER ;


####  los jugadores de un equipo que jugaron un dia especifico##########################################################

DELIMITER $$

CREATE FUNCTION JugadoresEnPartido(fechaHoraPartido VARCHAR(255), equipoLocal VARCHAR(255), equipoVisitante VARCHAR(255))
RETURNS TEXT
DETERMINISTIC
NO SQL
BEGIN
    DECLARE nombresJugadores TEXT;
    
    SELECT GROUP_CONCAT(p.full_name) INTO nombresJugadores
    FROM argentina_campeonato_masc_player_2023 p
    JOIN argentina_campeonato_masc_matches_2023 m ON (
        (p.Current_club = equipoLocal OR p.Current_club = equipoVisitante) AND
        m.home_team_name = equipoLocal AND
        m.away_team_name = equipoVisitante AND
        m.date_GMT = fechaHoraPartido
    );
    
    IF nombresJugadores IS NULL THEN
        SET nombresJugadores = 'No se encontraron jugadores para ese partido.';
    END IF;
    
    RETURN nombresJugadores;
END;
$$

DELIMITER ;

