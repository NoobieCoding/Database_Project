-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 24, 2017 at 07:51 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Game-Searcher`
--

-- --------------------------------------------------------

--
-- Table structure for table `Classifiable`
--

CREATE TABLE `Classifiable` (
  `gameID` text NOT NULL,
  `typeID` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Classifiable`
--

INSERT INTO `Classifiable` (`gameID`, `typeID`) VALUES
('G101', 'T101'),
('G102', 'T101'),
('G102', 'T102'),
('G103', 'T101'),
('G103', 'T108'),
('G104', 'T101'),
('G104', 'T108'),
('G105', 'T101'),
('G105', 'T112'),
('G106', 'T101\r\n'),
('G107', 'T104'),
('G108', 'T101'),
('G108', 'T107'),
('G109', 'T110'),
('G110', 'T110'),
('G111', 'T107\r\n'),
('G112', 'T107'),
('G113', 'T107'),
('G114', 'T107'),
('G115', 'T107'),
('G116', 'T107'),
('G117', 'T109'),
('G117', 'T110'),
('G118', 'T101'),
('G119', 'T111'),
('G120', 'T105'),
('G121', 'T112'),
('G122', 'T102'),
('G122', 'T106'),
('G123', 'T102'),
('G123', 'T106'),
('G124', 'T102'),
('G124', 'T106'),
('G125', 'T102'),
('G125', 'T106'),
('G126', 'T102'),
('G126', 'T106'),
('G127', 'T102'),
('G127', 'T106'),
('G128', 'T102'),
('G128', 'T106'),
('G129', 'T102'),
('G129', 'T106'),
('G130', 'T102'),
('G130', 'T106'),
('G131', 'T107'),
('G132', 'T101'),
('G132', 'T107'),
('G133', 'T112'),
('G134', 'T105'),
('G135', 'T108'),
('G136', 'T107'),
('G136', 'T109'),
('G137', 'T101'),
('G137', 'T104'),
('G134', 'T108'),
('G138', 'T108'),
('G139', 'T108'),
('G140', 'T110'),
('G141', 'T108'),
('G141', 'T112'),
('G142', 'T106'),
('G143', 'T101'),
('G144', 'T101'),
('G145', 'T111'),
('G146', 'T108'),
('G147', 'T105'),
('G148', 'T107'),
('G148', 'T109'),
('G149', 'T107'),
('G150', 'T107'),
('G151', 'T107'),
('G152', 'T108'),
('G153', 'T101'),
('G153', 'T102'),
('G154', 'T109'),
('G155', 'T109'),
('G156', 'T108'),
('G157', 'T104'),
('G158', 'T101'),
('G158', 'T102'),
('G159', 'T108'),
('G160', 'T104');

-- --------------------------------------------------------

--
-- Table structure for table `Game`
--

CREATE TABLE `Game` (
  `gameID` text,
  `name` text,
  `rated` text NOT NULL,
  `description` text NOT NULL,
  `publisherID` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Game`
--

INSERT INTO `Game` (`gameID`, `name`, `rated`, `description`, `publisherID`) VALUES
('G101', 'Attack on Titan Wings of Freedom', '18+', 'Battle between the man-eating Titans and Eren Yeager\'s companions of the survey corps.', 'PB111'),
('G102', 'Batman: Arkham Knight', '18+', 'Batman™: Arkham Knight brings the award-winning Arkham trilogy from Rocksteady Studios to its epic conclusion.', 'PB121'),
('G103', 'Battlefield: Bad Company 2', '17+', 'Battlefield: Bad Company 2™ brings the award-winning Battlefield gameplay to the forefront of PC gaming with best-in-class vehicular combat and unexpected \"Battlefield moments.\"', 'PB109'),
('G104', 'Counter-Strike: Global Offensive', '17+', 'Counter-Strike: Global Offensive will expand upon the team-based action gameplay that it pioneered when it was launched 14 years ago.', 'PB120'),
('G105', 'Dead by Daylight', '18+', 'A multiplayer horror game where one player takes on the role of the savage Killer, and the other four players play as Survivors, trying to escape the Killer and avoid being caught, tortured and killed.', 'PB119'),
('G106', 'Diablo III', '17+', 'Diablo III is a hack and slash action role-playing video game developed and published by Blizzard Entertainment.', 'PB103'),
('G107', 'Dota 2', 'RATING PENDING', 'Dota is a competitive game of action and strategy, played both professionally and casually by millions of passionate fans worldwide.', 'PB120'),
('G108', 'DRAGON QUEST HEROES II', '12+', 'DRAGON QUEST HEROES II is a hack-and-slash Action RPG that sends you on a new adventure to restore order to a once peaceful world filled with monsters and battles of epic proportions.', 'PB118'),
('G109', 'FIFA 16', 'Everyone', 'Football game for 2015/2016 season', 'PB109'),
('G110', 'FIFA 17', 'Everyone', 'Football game for 2016/2017 season', 'PB109'),
('G111', 'Final Fantasy VII', '12+', 'In Midgar, a city controlled by the mega-conglomerate Shinra Inc., the No. 1 Mako Reactor has been blown up by a rebel group, AVALANCHE.', 'PB118'),
('G112', 'Final Fantasy VIII', '16+', 'It is a time of war. Galbadia, a Global Superpower, has declared war on Dollet, a country whose training academy is home to two personalities: the hot-headed Seifer and the \'lone wolf\', Squall Leonhart.', 'PB118'),
('G113', 'Final Fantasy XI', '13+', 'Enter an online multiplayer RPG that challenges players to journey through the world of Vana’diel® — a world of fantasy, adventure, and exploration.', 'PB118'),
('G114', 'Final Fantasy XII', '13+', ' The story takes place in a world called \"Ivalice,\" in an age when magic was commonplace and airships plied the skies - the Archadian Empire, seeking to strengthen its base of power', 'PB118'),
('G115', 'Final Fantasy XIV', '13+', 'A massively multiplayer online role-playing game (MMORPG) for Windows® PC, PlayStation®3 and PlayStation®4 that invites you to explore the realm of Eorzea with friends from around the world.', 'PB118'),
('G116', 'Final Fantasy XV', '13+', 'FINAL FANTASY XV is a fantasy based on reality. Escaping the flames of war, Noctis, the Crown Prince of the Kingdom of Lucis, embarks on an epic journey with his best friends', 'PB118'),
('G117', 'Football Manager 2017', '3+', 'Take control of your favourite football team in Football Manager 2017, the most realistic and immersive football management game to date.', 'PB116'),
('G118', 'Grand Theft Auto V', '18+', 'Los Santos: a sprawling sun-soaked metropolis full of self-help gurus, starlets and fading celebrities, once the envy of the Western world, now struggling to stay afloat in an era of economic uncertainty and cheap reality TV.', 'PB115'),
('G119', 'Hearthstone', '13+', 'Hearthstone, originally known as Hearthstone: Heroes of Warcraft, is a free-to-play online collectible card video game.', 'PB103'),
('G120', 'Heroes of the Storm', '13+', 'Heroes of the Storm is a multiplayer online battle arena video game.', 'PB103'),
('G121', 'Left 4 Dead 2', '17+', 'This co-operative action horror FPS takes you and your friends through the cities, swamps and cemeteries of the Deep South, from Savannah to New Orleans across five expansive campaigns.', 'PB120'),
('G122', 'LEGO Batman: The Videogame', '7+', 'The fun of LEGO, the drama of Batman and the uniqueness of the combination makes for a comical and exciting adventure in LEGO Batman: The Videogame.', 'PB121'),
('G123', 'LEGO Batman 2 DC Super Heroes', '7+', 'The Dynamic Duo of Batman and Robin join other famous super heroes from the DC Universeto save Gotham City from destruction at the hands of the notorious villains Lex Luthor and the Joker.', 'PB121'),
('G124', 'LEGO Batman 3: Beyond Gotham', '7+', 'The Caped Crusader joins forces with the super heroes of the DC Comics universe and blasts off to outer space to stop the evil Brainiac from destroying Earth.', 'PB121'),
('G125', 'LEGO Marvel Super Heroes', '7+', 'LEGO® Marvel™ Super Heroes features an original story crossing the entire Marvel Universe.', 'PB121'),
('G126', 'LEGO MARVEL\'s Avengers', '7+', 'Avengers Assemble! The best-selling LEGO® MARVEL videogame franchise returns with a new action-packed, Super Hero adventure.', 'PB121'),
('G127', 'LEGO Star Wars - The Complete Saga', '3+', 'Kick Some Brick in I through VI! Play through all six Star Wars movies in one videogame!', 'PB121'),
('G128', 'LEGO Star Wars III - The Clone Wars', '7+', 'LEGO Star Wars III: The Clone Wars will allow fans to explore endlessly and laugh their way through the Star Wars galaxy in the most humorous, accessible and action-packed LEGO game to date.', 'PB121'),
('G129', 'LEGO STAR WARS: The Force Awakens', '7+', 'The game features brand new story content from the Star Wars Universe that explores the time between Star Wars: Return of the Jedi and Star Wars: The Force Awakens.', 'PB121'),
('G130', 'LEGO The Lord of the Rings', '7+', 'Based on The Lord of the Rings motion picture trilogy.', 'PB121'),
('G131', 'Mobius Final Fantasy', '13+', 'An episodic role-playing video game. The player controls Warrior of Light (Wol), a man who wakes with amnesia in the world of Palamecia, and must help conquer the dark forces attacking its people.', 'PB118'),
('G132', 'NieR:Automata', '18+', 'NieR: Automata tells the story of androids 2B, 9S and A2 and their battle to reclaim the machine-driven dystopia overrun by powerful machines.', 'PB118'),
('G133', 'Outlast 2', '18+', 'Set in the same universe as the first game, but with different characters and a different setting, Outlast 2 is a twisted new journey into the depths of the human mind and its dark secrets.', 'PB114'),
('G134', 'Overwatch', '13+', 'Overwatch is a team-based online multiplayer first-person shooter video game.', 'PB103'),
('G135', 'PAYDAY 2', '18+', 'An action-packed, four-player co-op shooter that once again lets gamers don the masks of the original PAYDAY crew as they descend on Washington DC for an epic crime spree', 'PB101'),
('G136', 'Persona 5', '18+', ' follows a group of troubled high school students: These disturbed and troubled teenagers gradually realize that they are living in a toxic and dangerous world resembling a prison full of slavery, oppression and injustice, ruled by corrupted and twisted adults', 'PB116'),
('G137', 'Phantasy Star Online 2', '15+', 'A video game in the Phantasy Star series published by Sega. Customize characters and go against D-Arkers.', 'PB116'),
('G138', 'Plants vs. Zombies Garden Warfare', '10+', 'Blast zombies, plants and unique characters across a mine-blowing world that delivers the depth of a traditional online shooter and the refreshing humor of the game.', 'PB103'),
('G139', 'Plants vs. Zombies Garden Warfare 2', '10+', 'Dr. Zomboss has conquered Suburbia and transformed it into a zombie-filled, plant-free paradise. Now it\'s the plants\' turn to take the offensive in the new 24-player Herbal Assault mode and reclaim their turf.', 'PB103'),
('G140', 'Pro Evolution Soccer 2017', '3+', 'The 16th installment in the Pro Evolution Soccer series sports video game.', 'PB112'),
('G141', 'RESIDENT EVIL 7 biohazard', '18+', 'A dramatic new shift for the series to first person view in a photorealistic style, Resident Evil 7 delivers an unprecedented level of immersion that brings the thrilling horror up close and personal.', 'PB104'),
('G142', 'SENRAN KAGURA Bon Appetit! - Full Course', '17+', 'A cooking-based rhythm game.', 'PB113'),
('G143', 'SENRAN KAGURA ESTIVAL VERSUS', '17+', 'Thrust into a parallel dimension, our buxom shinobi prepare for a new kind of beach-side battle.', 'PB113'),
('G144', 'SENRAN KAGURA SHINOVI VERSUS', '17+', 'The third video game in the Senran Kagura series, and is the sequel to Senran Kagura Burst. The game revolves around three female ninja groups from dueling shinobi schools.', 'PB113'),
('G145', 'Shadowverse CCG', 'RATING PENDING', 'Shadowverse, Japan\'s #1 competitive card collecting game!', 'PB107'),
('G146', 'Sniper Ghost Warrior 3', '18+', 'Go behind enemy lines with the ultimate modern military shooter. Play as an American sniper dropped in Georgia, near Russian border. Choose your own path to accomplish your missions across an unforgiving open world.', 'PB106'),
('G147', 'Starcraft II', '13+', ' StarCraft II continues the epic saga of the Protoss, Terran, and Zerg. These three distinct and powerful races clash once again in the fast-paced real-time strategy ', 'PB103'),
('G148', 'Stardew Valley', '7+', 'You\'ve inherited your grandfather\'s old farm plot in Stardew Valley. Armed with hand-me-down tools and a few coins, you set out to begin your new life.', 'PB105'),
('G149', 'Sword Art Online Re: Hollow Fragment', '13+', 'The adventure started in \'Infinity Moment\' continues in Sword Art Online Re: Hollow Fragment! Traverse floor after floor of a grand dungeon in an online fantasy world while meeting lifelong friends and unforgettable characters from the hit anime series!', 'PB102'),
('G150', 'Sword Art Online: Hollow Realization', '13+', 'An action RPG written under the supervision of Sword Art Online creator Reki Kawahara! Kirito receives a single mysterious message — a cryptic “I’m back to Aincrad” ', 'PB102'),
('G151', 'Sword Art Online: Lost Song', '13+', 'Sword Art Online: Lost Song features all-new Aerial Battles and an array of customization features. With an original story based on the ALfheim Online realm', 'PB102'),
('G152', 'Team Fortress 2', '17+', 'Nine distinct classes provide a broad range of tactical abilities and personalities. Constantly updated with new game modes, maps, equipment and, most importantly, hats!', 'PB120'),
('G153', 'The LEGO Movie - Videogame', '7+', 'Join Emmet and an unlikely group of resistance fighters in their heroic quest to thwart Lord Business’ evil plans.', 'PB121'),
('G154', 'The Sims 3', '13+', 'Start with your Sim, design your dream home, but don’t let a grid limit you; place, rotate and stack furniture and walls freely and to your heart’s content.', 'PB109'),
('G155', 'The Sims 4', '13+', 'The game has the same concept as its predecessor, The Sims 3; players control their Sims in various activities and can form relationships.', 'PB109'),
('G156', 'Titanfall 2', '17+', 'Introduces a new single player campaign that explores the bond between Pilot and Titan. Or blast your way through an even more innovative and intense multiplayer experience.', 'PB109'),
('G157', 'Tree of Savior (English Ver.)', 'RATING PENDING', 'Tree of Savior is an MMORPG in which you embark on a journey to search for the goddesses in the world of chaos.', 'PB110'),
('\r\n', NULL, '', '', ''),
('G158', 'Uncharted 4: A Thief\'s End', '13+', 'Uncharted 4: A Thief\'s End will explore what it means when Drake is forced back into the world of thieves.', 'PB117'),
('G159', 'Warframe', '18+', 'Warframe is a cooperative free-to-play third person online action game set in an evolving sci-fi world.', 'PB108'),
('G160', 'World of Warcraft', '13+', 'World of Warcraft is a massively multiplayer online role-playing game.', 'PB103');

-- --------------------------------------------------------

--
-- Table structure for table `Platform`
--

CREATE TABLE `Platform` (
  `platformID` text NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Platform`
--

INSERT INTO `Platform` (`platformID`, `name`) VALUES
('PF101', 'PC - Steam'),
('PF102', 'PC - Origin'),
('PF103', 'PC - Battle.net'),
('PF199', 'PC - Other'),
('PF201', 'XBOX'),
('PF304', 'PlayStation 4');

-- --------------------------------------------------------

--
-- Table structure for table `Playable`
--

CREATE TABLE `Playable` (
  `gameID` text NOT NULL,
  `platformID` text NOT NULL,
  `price` double NOT NULL,
  `releaseYear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Playable`
--

INSERT INTO `Playable` (`gameID`, `platformID`, `price`, `releaseYear`) VALUES
('G101', 'PF101', 29.99, 2016),
('G101', 'PF201', 49.99, 2016),
('G101', 'PF304', 59.99, 2016),
('G102', 'PF101', 19.99, 2015),
('G102', 'PF201', 19.99, 2015),
('G102', 'PF304', 19.99, 2015),
('G103', 'PF101', 19.99, 2010),
('G103', 'PF201', 19.99, 2010),
('G104', 'PF101', 9.99, 2014),
('G104', 'PF201', 14.99, 2012),
('G105', 'PF101', 9.99, 2016),
('G105', 'PF304', 29.99, 2017),
('G106', 'PF103', 19.99, 2012),
('G106', 'PF201', 59.99, 2012),
('G106', 'PF304', 39.99, 2012),
('G107', 'PF101', 0, 2013),
('G108', 'PF101', 59.99, 2016),
('G108', 'PF304', 59.99, 2016),
('G109', 'PF102', 29.99, 2015),
('G109', 'PF201', 29.99, 2015),
('G109', 'PF304', 29.99, 2015),
('G110', 'PF102', 59.99, 2016),
('G110', 'PF201', 59.99, 2016),
('G110', 'PF304', 59.99, 2016),
('G111', 'PF101', 11.99, 2013),
('G111', 'PF304', 15.99, 1997),
('G112', 'PF101', 11.99, 2013),
('G113', 'PF101', 11.99, 2013),
('G114', 'PF304', 49.99, 2017),
('G115', 'PF101', 39.99, 2013),
('G116', 'PF201', 59.99, 2016),
('G116', 'PF304', 59.99, 2016),
('G117', 'PF101', 49.99, 2016),
('G118', 'PF101', 59.99, 2015),
('G118', 'PF201', 59.99, 2013),
('G118', 'PF304', 59.99, 2014),
('G119', 'PF103', 19.99, 2014),
('G120', 'PF103', 0, 2015),
('G121', 'PF101', 19.99, 2009),
('G121', 'PF201', 24.99, 2012),
('G121', 'PF304', 24.99, 2012),
('G122', 'PF101', 9.99, 2008),
('G122', 'PF201', 19.99, 2008),
('G122', 'PF304', 29.99, 2008),
('G123', 'PF101', 9.99, 2012),
('G123', 'PF201', 19.99, 2012),
('G123', 'PF304', 29.99, 2012),
('G124', 'PF101', 9.99, 2014),
('G124', 'PF201', 19.99, 2014),
('G124', 'PF304', 29.99, 2014),
('G125', 'PF101', 9.99, 2013),
('G125', 'PF201', 19.99, 2013),
('G125', 'PF304', 29.99, 2013),
('G126', 'PF101', 9.99, 2016),
('G126', 'PF201', 19.99, 2016),
('G126', 'PF304', 29.99, 2016),
('G127', 'PF101', 9.99, 2009),
('G127', 'PF201', 19.99, 2009),
('G127', 'PF304', 29.99, 2009),
('G128', 'PF101', 9.99, 2011),
('G128', 'PF201', 19.99, 2011),
('G128', 'PF304', 29.99, 2011),
('G129', 'PF101', 9.99, 2016),
('G129', 'PF201', 19.99, 2016),
('G129', 'PF304', 29.99, 2016),
('G130', 'PF101', 9.99, 2012),
('G130', 'PF201', 19.99, 2012),
('G130', 'PF304', 29.99, 2012),
('G131', 'PF101', 0, 2017),
('G132', 'PF101', 59.99, 2017),
('G132', 'PF304', 59.99, 2017),
('G133', 'PF101', 29.99, 2017),
('G133', 'PF201', 29.99, 2017),
('G133', 'PF304', 29.99, 2017),
('G134', 'PF103', 39.99, 2016),
('G134', 'PF201', 39.99, 2016),
('G134', 'PF304', 39.99, 2016),
('G135', 'PF101', 19.99, 2013),
('G135', 'PF201', 19.99, 2013),
('G135', 'PF304', 49.99, 2013),
('G136', 'PF304', 59.99, 2016),
('G137', 'PF101', 0, 2012),
('G137', 'PF304', 64.99, 2016),
('G138', 'PF102', 59.99, 2014),
('G138', 'PF201', 59.99, 2014),
('G138', 'PF304', 59.99, 2014),
('G139', 'PF102', 59.99, 2016),
('G139', 'PF201', 59.99, 2016),
('G139', 'PF304', 59.99, 2016),
('G140', 'PF101', 19.99, 2016),
('G140', 'PF201', 39.99, 2016),
('G140', 'PF304', 39.99, 2016),
('G141', 'PF101', 59.99, 2017),
('G141', 'PF201', 59.99, 2017),
('G141', 'PF304', 59.99, 2017),
('G142', 'PF101', 29.99, 2016),
('G143', 'PF101', 39.99, 2017),
('G143', 'PF304', 39.99, 2017),
('G144', 'PF101', 29.99, 2016),
('G144', 'PF304', 29.99, 2016),
('G145', 'PF101', 0, 2016),
('G146', 'PF101', 49.99, 2017),
('G146', 'PF201', 59.99, 2017),
('G146', 'PF304', 59.99, 2017),
('G147', 'PF103', 39.99, 2010),
('G148', 'PF101', 14.99, 2016),
('G149', 'PF304', 59.99, 2015),
('G150', 'PF304', 59.99, 2016),
('G151', 'PF304', 59.99, 2015),
('G152', 'PF101', 0, 2007),
('G152', 'PF201', 0, 2007),
('G153', 'PF101', 9.99, 2014),
('G153', 'PF201', 19.99, 2014),
('G153', 'PF304', 29.99, 2014),
('G154', 'PF101', 15.99, 2009),
('G154', 'PF102', 15.99, 2009),
('G156', 'PF102', 39.99, 2014),
('G156', 'PF201', 39.99, 2014),
('G156', 'PF304', 39.99, 2014),
('G157', 'PF101', 0, 2016),
('G158', 'PF304', 39.99, 2016),
('G159', 'PF101', 0, 2013),
('G159', 'PF201', 0, 2013),
('G159', 'PF304', 0, 2013),
('G160', 'PF103', 19.99, 2004);

-- --------------------------------------------------------

--
-- Table structure for table `Publisher`
--

CREATE TABLE `Publisher` (
  `publisherID` text NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Publisher`
--

INSERT INTO `Publisher` (`publisherID`, `name`) VALUES
('PB101', '505 Games'),
('PB102', 'Bandai Namco Entertainment'),
('PB103', 'Blizzard Entertainment'),
('PB104', 'CAPCOM'),
('PB105', 'Chucklefish'),
('PB106', 'CI Games'),
('PB107', 'Cygames'),
('PB108', 'Digital Extremes'),
('PB109', 'Electronic Arts'),
('PB110', 'IMCGAMES'),
('PB111', 'Koei Techmo Games'),
('PB112', 'Konami Digital Entertainment'),
('PB113', 'Marvelous USA'),
('PB114', 'Red Barrels'),
('PB115', 'Rockstar Games'),
('PB116', 'SEGA'),
('PB117', 'Sony Interactive Entertainment'),
('PB118', 'Square Enix'),
('PB119', 'Starbreeze Studios'),
('PB120', 'Valve'),
('PB121', 'Warner Bros. Interactive Entertainment');

-- --------------------------------------------------------

--
-- Table structure for table `Type`
--

CREATE TABLE `Type` (
  `typeID` text NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Type`
--

INSERT INTO `Type` (`typeID`, `name`) VALUES
('T101', 'Action'),
('T102', 'Adventure'),
('T103', 'Fighting'),
('T104', 'MMORPG'),
('T105', 'MOBA'),
('T106', 'Platform'),
('T107', 'RPG'),
('T108', 'Shooter'),
('T109', 'Simulation'),
('T110', 'Sports'),
('T111', 'Strategy'),
('T112', 'Survival');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `userID` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`userID`, `username`, `password`) VALUES
(1, 'Morokoshi', 'poipoi12345'),
(2, 'tuterdust', 'xDlnwza007'),
(3, 'jettyZa', 'ThisIsAnEZPassword'),
(5, 'BOBOLA', '123XD'),
(6, 'Z', '12'),
(7, 'noname', '123'),
(8, 'sd', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `Wishlist`
--

CREATE TABLE `Wishlist` (
  `userID` int(11) NOT NULL,
  `gameID` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Wishlist`
--

INSERT INTO `Wishlist` (`userID`, `gameID`) VALUES
(1, 'G101'),
(1, 'G144'),
(1, 'G143'),
(3, 'G102'),
(3, 'G132');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
