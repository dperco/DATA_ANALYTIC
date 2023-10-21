use trabajo_final;

Select * from  argentina_campeonato_femenino_matches_2023;

ALTER TABLE argentina_campeonato_femenino_matches_2023
DROP id_fem_match;

ALTER TABLE argentina_campeonato_femenino_matches_2023
ADD COLUMN id_fem_match INT  PRIMARY KEY auto_increment;

ALTER TABLE argentina_campeonato_futbol_femenino_2023_stats
DROP id_fem_stats;

ALTER TABLE argentina_campeonato_futbol_femenino_2023_stats
ADD COLUMN id_fem_stats INT  PRIMARY KEY auto_increment;

ALTER TABLE argentina_campeonato_femenino_teams_2023
DROP id_fem_teams;

ALTER TABLE argentina_campeonato_femenino_teams_2023
ADD COLUMN id_fem_teams INT  PRIMARY KEY auto_increment;

ALTER TABLE argentina_campeonato_femenino_teams2_2023
DROP id_fem_teams2;

ALTER TABLE argentina_campeonato_femenino_teams2_2023
ADD COLUMN id_fem_teams2 INT  PRIMARY KEY auto_increment;

ALTER TABLE argentina_campeonato_futbol_femenino_2023_stats
ADD UNIQUE INDEX idx_unique_name (name);

ALTER TABLE argentina_campeonato_femenino_teams_2023
ADD CONSTRAINT fk_tabla_teams_stats
FOREIGN KEY (team_name) REFERENCES argentina_campeonato_futbol_femenino_2023_stats(name);

ALTER TABLE argentina_campeonato_femenino_matches_2023
ADD CONSTRAINT fk_tabla_match_stats
FOREIGN KEY (home_team_name) REFERENCES argentina_campeonato_futbol_femenino_2023_stats(name);

ALTER TABLE argentina_campeonato_masc_liga_2023
DROP id_masc_liga;

ALTER TABLE argentina_campeonato_masc_liga_2023
ADD COLUMN id_masc_liga INT  PRIMARY KEY auto_increment;

ALTER TABLE argentina_campeonato_masc_liga_2023
ADD UNIQUE INDEX idx_unique_name (name);

ALTER TABLE argentina_campeonato_masc_matches_2023
DROP id_masc_match;

ALTER TABLE argentina_campeonato_masc_matches_2023
ADD COLUMN id_masc_match INT  PRIMARY KEY auto_increment;

ALTER TABLE argentina_campeonato_masc_matches_2023
ADD CONSTRAINT fk_tabla_match_liga
FOREIGN KEY (home_team_name) REFERENCES argentina_campeonato_masc_liga_2023(name);

ALTER TABLE argentina_campeonato_masc_player_2023
DROP id_masc_player;

ALTER TABLE argentina_campeonato_masc_player_2023
ADD COLUMN id_masc_player INT  PRIMARY KEY auto_increment;

ALTER TABLE argentina_campeonato_masc_player_2023
CHANGE COLUMN `Current Club` Current_Club VARCHAR(50);


ALTER TABLE argentina_campeonato_masc_player_2023
ADD CONSTRAINT fk_tabla_player_liga
FOREIGN KEY (Current_Club) REFERENCES argentina_campeonato_masc_liga_2023(name);


ALTER TABLE argentina_campeonato_masc_teams_2023
ADD COLUMN id_masc_team INT  PRIMARY KEY auto_increment;

ALTER TABLE argentina_campeonato_masc_teams_2023
ADD CONSTRAINT fk_tabla_masc_team_liga
FOREIGN KEY (team_name) REFERENCES argentina_campeonato_masc_liga_2023(name);

ALTER TABLE argentina_campeonato_masc_teams2_2023
ADD COLUMN id_masc_team2 INT  PRIMARY KEY auto_increment;

ALTER TABLE argentina_campeonato_masc_teams2_2023
ADD CONSTRAINT fk_tabla_masc_team2_liga
FOREIGN KEY (team_name) REFERENCES argentina_campeonato_masc_liga_2023(name);

