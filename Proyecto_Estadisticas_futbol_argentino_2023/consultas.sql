USE proyecto_liga_futbol;

SELECT JugadoresEnPartido('Jan 28 2023 - 10:15pm', 'Talleres Cordoba', 'Independiente');

CALL ObtenerJugadoresPorEquipo('Boca Juniors');

CALL EquiposQueJugaronEnFecha('2023-01-28');

CALL BuscarJugadoresPorCriterio('position', 'Defender');


CALL EquiposConPromedioMinutosPorGol(50);



