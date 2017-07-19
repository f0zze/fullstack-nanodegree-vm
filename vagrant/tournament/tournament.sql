-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

CREATE TABLE Players (
  id       SERIAL       NOT NULL,
  fullname VARCHAR(120) NOT NULL UNIQUE,
  
  CONSTRAINT players_pkc PRIMARY KEY (id),
  CONSTRAINT players_fullname_uniq UNIQUE (fullname)
);

INSERT INTO Players(fullname) VALUES ('Aigars B');
SELECT COUNT(*) as registred FROM Players;

CREATE TABLE Matches (
  id     SERIAL  NOT NULL,
  playe1 INTEGER NOT NULL,
  playe2 INTEGER NOT NULL,
  winner INTEGER,
  CONSTRAINT id_pkc PRIMARY KEY (id),
  CONSTRAINT player1_fkc FOREIGN KEY (player1) REFERENCES Players (id)
  CONSTRAINT player2_fkc FOREIGN KEY (player2) REFERENCES Players (id)
  CONSTRAINT winner_fkc  FOREIGN KEY (winner)  REFERENCES Players (id)
);

-- deleteMatches
DELETE FROM Players;
-- deletePlayers
DELETE FROM Matches;

-- countPlayers
SELECT COUNT(*) as registered FROM PLAYERS;

-- registerPlayer
INSERT INTO Players(fullname) VALUES ('%Player fullname%')


