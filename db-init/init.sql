CREATE DATABASE soccer_teams;

use soccer_teams;

CREATE TABLE epl_teams (
  team_name VARCHAR(50),
  team_nickname VARCHAR(50)
);

INSERT INTO epl_teams
  (team_name, team_nickname)
VALUES
('Liverpool', 'The Reds'),
('Arsenal', 'The Gunners'),
('Aston Villa', 'The Villains'),
('Burnley', 'The Clarets'),
('Chelsea', 'The Blues, The Pensioners'),
('Crystal Palace', 'The Eagles'),
('Everton', 'The Toffees'),
('Hull City', 'The Tigers'),
('Leicester City', 'The Foxes'),
('Manchester City', 'The Citizens'),
('Manchester United', 'The Red Devils'),
('Newcastle United', 'The Magpies'),
('Queens Park Rangers', 'Super Hoops'),
('Southampton', 'The Saints'),
('Stoke City', 'The Potters'),
('Sunderland', 'The Black Cats'),
('Swansea City', 'The Swans'),
('Tottenham Hotspur', 'The Spurs'),
('West Bromwich Albion', 'The Baggies'),
('West Ham United', 'The Hammers');