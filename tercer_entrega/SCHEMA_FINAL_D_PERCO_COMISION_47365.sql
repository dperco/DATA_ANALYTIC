
CREATE SCHEMA IF NOT EXISTS  trabajo_final ; 

USE trabajo_final ; 
-- estadisticas campeonato de futbol Argentino 2023- Masculino 

CREATE TABLE `argentina_campeonato_masc_matches_2023` (
  `timestamp` varchar(50),
  `date_GMT` varchar(50),
  `status` varchar(50),
  `attendance` varchar(50),
  `home_team_name` varchar(50),
  `away_team_name` varchar(50),
  `referee` varchar(50),
  `Game Week` varchar(50),
  `Pre-Match PPG (Home)` varchar(50),
  `Pre-Match PPG (Away)` varchar(50),
  `home_ppg` varchar(50),
  `away_ppg` varchar(50),
  `home_team_goal_count` varchar(50),
  `away_team_goal_count` varchar(50),
  `total_goal_count` varchar(50),
  `total_goals_at_half_time` varchar(50),
  `home_team_goal_count_half_time` varchar(50),
  `away_team_goal_count_half_time` varchar(50),
  `home_team_goal_timings` varchar(50),
  `away_team_goal_timings` varchar(50),
  `home_team_corner_count` varchar(50),
  `away_team_corner_count` varchar(50),
  `home_team_yellow_cards` varchar(50),
  `home_team_red_cards` varchar(50),
  `away_team_yellow_cards` varchar(50),
  `away_team_red_cards` varchar(50),
  `home_team_first_half_cards` varchar(50),
  `home_team_second_half_cards` varchar(50),
  `away_team_first_half_cards` varchar(50),
  `away_team_second_half_cards` varchar(50),
  `home_team_shots` varchar(50),
  `away_team_shots` varchar(50),
  `home_team_shots_on_target` varchar(50),
  `away_team_shots_on_target` varchar(50),
  `home_team_shots_off_target` varchar(50),
  `away_team_shots_off_target` varchar(50),
  `home_team_fouls` varchar(50),
  `away_team_fouls` varchar(50),
  `home_team_possession` varchar(50),
  `away_team_possession` varchar(50),
  `Home Team Pre-Match xG` varchar(50),
  `Away Team Pre-Match xG` varchar(50),
  `team_a_xg` varchar(50),
  `team_b_xg` varchar(50),
  `average_goals_per_match_pre_match` varchar(50),
  `btts_percentage_pre_match` varchar(50),
  `over_15_percentage_pre_match` varchar(50),
  `over_25_percentage_pre_match` varchar(50),
  `over_35_percentage_pre_match` varchar(50),
  `over_45_percentage_pre_match` varchar(50),
  `over_15_HT_FHG_percentage_pre_match` varchar(50),
  `over_05_HT_FHG_percentage_pre_match` varchar(50),
  `over_15_2HG_percentage_pre_match` varchar(50),
  `over_05_2HG_percentage_pre_match` varchar(50),
  `average_corners_per_match_pre_match` varchar(50),
  `average_cards_per_match_pre_match` varchar(50),
  `odds_ft_home_team_win` varchar(50),
  `odds_ft_draw` varchar(50),
  `odds_ft_away_team_win` varchar(50),
  `odds_ft_over15` varchar(50),
  `odds_ft_over25` varchar(50),
  `odds_ft_over35` varchar(50),
  `odds_ft_over45` varchar(50),
  `odds_btts_yes` varchar(50),
  `odds_btts_no` varchar(50),
  `stadium_name` varchar(255),
  `id_masc_match` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_masc_match`)
) ENGINE=InnoDB AUTO_INCREMENT=575 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `argentina_campeonato_masc_player_2023` (
  `full_name` varchar(50),
  `age` int  NOT NULL,
  `birthday` int  NOT NULL,
  `birthday_GMT` varchar(50),
  `league` varchar(50),
  `season` int  NOT NULL,
  `position` varchar(50),
  `Current Club` varchar(50),
  `minutes_played_overall` int  NOT NULL,
  `minutes_played_home` int  NOT NULL,
  `minutes_played_away` int  NOT NULL,
  `nationality` varchar(50),
  `appearances_overall` int  NOT NULL,
  `appearances_home` int  NOT NULL,
  `appearances_away` int  NOT NULL,
  `goals_overall` int  NOT NULL,
  `goals_home` int  NOT NULL,
  `goals_away` int  NOT NULL,
  `assists_overall` int  NOT NULL,
  `assists_home` int  NOT NULL,
  `assists_away` int  NOT NULL,
  `penalty_goals` int  NOT NULL,
  `penalty_misses` int  NOT NULL,
  `clean_sheets_overall` int  NOT NULL,
  `clean_sheets_home` int  NOT NULL,
  `clean_sheets_away` int  NOT NULL,
  `conceded_overall` int  NOT NULL,
  `conceded_home` int  NOT NULL,
  `conceded_away` int  NOT NULL,
  `yellow_cards_overall` int  NOT NULL,
  `red_cards_overall` int  NOT NULL,
  `goals_involved_per_90_overall` double  NOT NULL,
  `assists_per_90_overall` double  NOT NULL,
  `goals_per_90_overall` double  NOT NULL,
  `goals_per_90_home` double  NOT NULL,
  `goals_per_90_away` double  NOT NULL,
  `min_per_goal_overall` int  NOT NULL,
  `conceded_per_90_overall` double  NOT NULL,
  `min_per_conceded_overall` int  NOT NULL,
  `min_per_match` int  NOT NULL,
  `min_per_card_overall` int  NOT NULL,
  `min_per_assist_overall` int  NOT NULL,
  `cards_per_90_overall` double  NOT NULL,
  `rank_in_league_top_attackers` int  NOT NULL,
  `rank_in_league_top_midfielders` int  NOT NULL,
  `rank_in_league_top_defenders` int  NOT NULL,
  `rank_in_club_top_scorer` int  NOT NULL,
  `average_rating_overall` double  NOT NULL,
  `assists_per_game_overall` double  NOT NULL,
  `penalties_won_total_overall` int  NOT NULL,
  `shirt_number` int  NOT NULL,
  `annual_salary_gbp` int  NOT NULL,
  `annual_salary_usd` int  NOT NULL,
  `MyUnknownColumn` varchar(50),
  `id_masc_player` int NOT  NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_masc_player`)
) ENGINE=InnoDB AUTO_INCREMENT=9  CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `argentina_campeonato_masc_teams2_2023` (
  `team_name` varchar(50),
  `common_name` varchar(50),
  `season` int  NOT NULL,
  `country` varchar(50),
  `average_attendance_overall` int  NOT NULL,
  `average_attendance_home` int  NOT NULL,
  `average_attendance_away` int  NOT NULL,
  `minutes_per_goal_scored_overall` int  NOT NULL,
  `minutes_per_goal_scored_home` int  NOT NULL,
  `minutes_per_goal_scored_away` int  NOT NULL,
  `minutes_per_goal_conceded_overall` int  NOT NULL,
  `minutes_per_goal_conceded_home` int  NOT NULL,
  `minutes_per_goal_conceded_away` int  NOT NULL,
  `highest_goals_scored_home` int  NOT NULL,
  `highest_goals_scored_away` int  NOT NULL,
  `highest_goals_conceded_home` int  NOT NULL,
  `highest_goals_conceded_away` int  NOT NULL,
  `half_time_points_overall` int  NOT NULL,
  `half_time_points_home` int  NOT NULL,
  `half_time_points_away` int  NOT NULL,
  `firstGoalScoredPercentage_overall` int  NOT NULL,
  `firstGoalScoredPercentage_home` int  NOT NULL,
  `firstGoalScoredPercentage_away` int  NOT NULL,
  `shots_per_match_overall` double  NOT NULL,
  `shots_per_match_home` double  NOT NULL,
  `shots_per_match_away` double  NOT NULL,
  `fouls_by_this_team_overall` int  NOT NULL,
  `fouls_by_this_team_home` int  NOT NULL,
  `scoredBothHalvesPercentage_overall` int  NOT NULL,
  `scoredBothHalvesPercentage_home` int  NOT NULL,
  `scoredBothHalvesPercentage_away` int  NOT NULL,
  `matches_goal_timings_recorded_overall` int  NOT NULL,
  `matches_goal_timings_recorded_home` int  NOT NULL,
  `matches_goal_timings_recorded_away` int  NOT NULL,
  `total_goals_2h_overall` int  NOT NULL,
  `total_goals_2h_home` int  NOT NULL,
  `total_goals_2h_away` int  NOT NULL,
  `average_total_goals_2h_per_match_overall` double  NOT NULL,
  `average_total_goals_2h_per_match_home` double  NOT NULL,
  `average_total_goals_2h_per_match_away` double  NOT NULL,
  `points_2h_overall` int  NOT NULL,
  `points_2h_home` int  NOT NULL,
  `points_2h_away` int  NOT NULL,
  `ppg_2h_overall` double  NOT NULL,
  `ppg_2h_home` double  NOT NULL,
  `ppg_2h_away` double  NOT NULL,
  `wins_2h_overall` int  NOT NULL,
  `wins_2h_home` int  NOT NULL,
  `wins_2h_away` int  NOT NULL,
  `wins_2h_percentage_overall` int  NOT NULL,
  `wins_2h_percentage_home` int  NOT NULL,
  `wins_2h_percentage_away` int  NOT NULL,
  `draws_2h_overall` int  NOT NULL,
  `draws_2h_home` int  NOT NULL,
  `draws_2h_away` int  NOT NULL,
  `losses_2h_overall` int  NOT NULL,
  `losses_2h_home` int  NOT NULL,
  `losses_2h_away` int  NOT NULL,
  `failed_to_score_2h_overall` int  NOT NULL,
  `failed_to_score_2h_home` int  NOT NULL,
  `failed_to_score_2h_away` int  NOT NULL,
  `id_masc_team2` int NOT  NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_masc_team2`)
) ENGINE=InnoDB AUTO_INCREMENT=29  CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `argentina_campeonato_masc_teams_2023` (
  `team_name` varchar(50),
  `common_name` varchar(50),
  `season` int  NOT NULL,
  `country` varchar(50),
   `average_attendance_overall` int  NOT NULL,
  `average_attendance_home` int  NOT NULL,
  `average_attendance_away` int  NOT NULL,
  `minutes_per_goal_scored_overall` int  NOT NULL,
  `minutes_per_goal_scored_home` int  NOT NULL,
  `minutes_per_goal_scored_away` int  NOT NULL,
  `minutes_per_goal_conceded_overall` int  NOT NULL,
  `minutes_per_goal_conceded_home` int  NOT NULL,
  `minutes_per_goal_conceded_away` int  NOT NULL,
  `highest_goals_scored_home` int  NOT NULL,
  `highest_goals_scored_away` int  NOT NULL,
  `highest_goals_conceded_home` int  NOT NULL,
  `highest_goals_conceded_away` int  NOT NULL,
  `half_time_points_overall` int  NOT NULL,
  `half_time_points_home` int  NOT NULL,
  `half_time_points_away` int  NOT NULL,
  `firstGoalScoredPercentage_overall` int  NOT NULL,
  `firstGoalScoredPercentage_home` int  NOT NULL,
  `firstGoalScoredPercentage_away` int  NOT NULL,
  `shots_per_match_overall` double  NOT NULL,
  `shots_per_match_home` double  NOT NULL,
  `shots_per_match_away` double  NOT NULL,
  `fouls_by_this_team_overall` int  NOT NULL,
  `fouls_by_this_team_home` int  NOT NULL,
  `scoredBothHalvesPercentage_overall` int  NOT NULL,
  `scoredBothHalvesPercentage_home` int  NOT NULL,
  `scoredBothHalvesPercentage_away` int  NOT NULL,
  `matches_goal_timings_recorded_overall` int  NOT NULL,
  `matches_goal_timings_recorded_home` int  NOT NULL,
  `matches_goal_timings_recorded_away` int  NOT NULL,
  `total_goals_2h_overall` int  NOT NULL,
  `total_goals_2h_home` int  NOT NULL,
  `total_goals_2h_away` int  NOT NULL,
  `average_total_goals_2h_per_match_overall` double  NOT NULL,
  `average_total_goals_2h_per_match_home` double  NOT NULL,
  `average_total_goals_2h_per_match_away` double  NOT NULL,
  `points_2h_overall` int  NOT NULL,
  `points_2h_home` int  NOT NULL,
  `points_2h_away` int  NOT NULL,
  `ppg_2h_overall` double  NOT NULL,
  `ppg_2h_home` double  NOT NULL,
  `ppg_2h_away` double  NOT NULL,
  `wins_2h_overall` int  NOT NULL,
  `wins_2h_home` int  NOT NULL,
  `wins_2h_away` int  NOT NULL,
  `wins_2h_percentage_overall` int  NOT NULL,
  `wins_2h_percentage_home` int  NOT NULL,
  `wins_2h_percentage_away` int  NOT NULL,
  `draws_2h_overall` int  NOT NULL,
  `draws_2h_home` int  NOT NULL,
  `draws_2h_away` int  NOT NULL,
  `losses_2h_overall` int  NOT NULL,
  `losses_2h_home` int  NOT NULL,
  `losses_2h_away` int  NOT NULL,
  `failed_to_score_2h_overall` int  NOT NULL,
  `failed_to_score_2h_home` int  NOT NULL,
  `failed_to_score_2h_away` int  NOT NULL,
  `id_masc_team` int NOT  NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_masc_team`)
) ENGINE=InnoDB AUTO_INCREMENT=29  CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*ALTER TABLE tu_tabla
    ADD CONSTRAINT `fk_relacion` FOREIGN KEY (columna_que_referencia_a_otra_tabla)
        REFERENCES la_otra_tabla(columnaEnLaOtraTabla);*/

##ALTER TABLE argentina_campeonato_masc_player_2023
##ADD INDEX idx_ (nombre_de_columna);

##########################################################################

### ALTER TABLE argentina_campeonato_futbol_femenino_2023_stats
### ADD constraint TEAMS_2_stats foreign key (id_fem_stats)
##### references  argentina_campeonato_femenino_teams2_2023(id_fem_teams2);

ALTER TABLE argentina_campeonato_masc_player_2023
ADD INDEX idx_Current_club (Current_club);

ALTER TABLE argentina_campeonato_masc_matches_2023
ADD CONSTRAINT fk_tabla_match_player FOREIGN KEY (home_team_name)
 REFERENCES argentina_campeonato_masc_player_2023(Current_club);
 
 ALTER TABLE argentina_campeonato_masc_matches_2023
ADD INDEX idx_home_team_name (home_team_name);

ALTER TABLE argentina_campeonato_masc_player_2023
ADD CONSTRAINT fk_tabla_player_matches FOREIGN KEY (Current_club)
 REFERENCES argentina_campeonato_masc_matches_2023(home_team_name);
 
ALTER TABLE argentina_campeonato_masc_teams2_2023
ADD INDEX idx_common_name (common_name);





ALTER TABLE argentina_campeonato_masc_teams2_2023
ADD CONSTRAINT fk_tabla_teams2_matches FOREIGN KEY (common_name)
 REFERENCES argentina_campeonato_masc_matches_2023(home_team_name);


ALTER TABLE argentina_campeonato_masc_matches_2023
ADD CONSTRAINT fk_tabla_match_teams2 FOREIGN KEY (home_team_name)
REFERENCES argentina_campeonato_masc_teams2_2023(common_name);
 
 
