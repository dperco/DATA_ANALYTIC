use trabajo_final;


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
