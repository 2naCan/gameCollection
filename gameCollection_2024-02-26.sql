# ************************************************************
# Sequel Ace SQL dump
# Version 20062
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: 127.0.0.1 (MySQL 11.2.2-MariaDB-1:11.2.2+maria~ubu2204)
# Database: gameCollection
# Generation Time: 2024-02-26 15:42:02 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table gameDisplay
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gameDisplay`;

CREATE TABLE `gameDisplay` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `appID` int(11) NOT NULL,
  `gameName` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `steamID` varchar(255) DEFAULT NULL,
  `totalPlaytime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `gameDisplay` WRITE;
/*!40000 ALTER TABLE `gameDisplay` DISABLE KEYS */;

INSERT INTO `gameDisplay` (`id`, `appID`, `gameName`, `description`, `image`, `steamID`, `totalPlaytime`)
VALUES
	(101,3320,'Insaniquarium Deluxe','The craziest aquarium game ever! Tend to your fish, keep them happy and they\'ll reward you with coins and jewels. Buy tank upgrades or egg parts which hatch different in-tank pets. These pets can help you feed your fish, collect coins, or even protect against the aliens that will invade your tank.','https://cdn.akamai.steamstatic.com/steam/apps/3320/header.jpg?t=1615205929','76561198149865619',129),
	(102,4000,'Garry\'s Mod','Garry\'s Mod is a physics sandbox. There aren\'t any predefined aims or goals. We give you the tools and leave you to play.','https://cdn.akamai.steamstatic.com/steam/apps/4000/header.jpg?t=1698777053','76561198149865619',18881),
	(103,12200,'Bully: Scholarship Edition','Bully tells the story of mischievous 15-year-old Jimmy Hopkins as he goes through the hilarity and awkwardness of adolescence. Beat the jocks at dodge ball, play pranks on the preppies, save the nerds, kiss the girl and navigate the social hierarchy in the worst school around.','https://cdn.akamai.steamstatic.com/steam/apps/12200/header.jpg?t=1695140211','76561198149865619',414),
	(104,17410,'Mirror\'s Edge™','In a city where information is heavily monitored, couriers called Runners transport sensitive data. In this seemingly utopian paradise, a crime has been committed, &amp; you are being hunted. You are a Runner called Faith and this innovative first-person action-adventure is your story.','https://cdn.akamai.steamstatic.com/steam/apps/17410/header.jpg?t=1668566648','76561198149865619',966),
	(105,550,'Left 4 Dead 2','Set in the zombie apocalypse, Left 4 Dead 2 (L4D2) is the highly anticipated sequel to the award-winning Left 4 Dead, the #1 co-op game of 2008. This co-operative action horror FPS takes you and your friends through the cities, swamps and cemeteries of the Deep South, from Savannah to New Orleans across five expansive campaigns.','https://cdn.akamai.steamstatic.com/steam/apps/550/header.jpg?t=1675801903','76561198149865619',219),
	(106,8190,'Just Cause 2','Dive into an adrenaline-fuelled free-roaming adventure with 400 square miles of rugged terrain and hundreds of weapons and vehicles.','https://cdn.akamai.steamstatic.com/steam/apps/8190/header.jpg?t=1660140289','76561198149865619',1154),
	(107,105600,'Terraria','Копайте, сражайтесь, исследуйте, стройте! Нет ничего невозможного в этой насыщенной событиями приключенческой игре. Также доступен комплект для четверых!','https://cdn.akamai.steamstatic.com/steam/apps/105600/header.jpg?t=1666290860','76561198149865619',49470),
	(108,104600,'Portal 2 - The Final Hours','Portal 2 draws from the award-winning formula of innovative gameplay, story, and music that earned the original Portal over 70 industry accolades and created a cult following. For more information on Portal 2 click here.','https://cdn.akamai.steamstatic.com/steam/apps/104600/header.jpg?t=1447354230','76561198149865619',0),
	(109,55150,'Warhammer 40,000: Space Marine - Anniversary Edition','In Warhammer 40,000 Space Marine you are Captain Titus, a Space Marine of the Ultramarines chapter and a seasoned veteran of countless battles.','https://cdn.akamai.steamstatic.com/steam/apps/55150/header.jpg?t=1653590231','76561198149865619',1),
	(110,72850,'The Elder Scrolls V: Skyrim','EPIC FANTASY REBORN The next chapter in the highly anticipated Elder Scrolls saga arrives from the makers of the 2006 and 2008 Games of the Year, Bethesda Game Studios. Skyrim reimagines and revolutionizes the open-world fantasy epic, bringing to life a complete virtual world open for you to explore any way you choose.','https://cdn.akamai.steamstatic.com/steam/apps/72850/header.jpg?t=1647357402','76561198149865619',21622),
	(111,105450,'Age of Empires® III (2007)','Microsoft Studios brings you three epic Age of Empires III games in one monumental collection for the first time.','https://cdn.akamai.steamstatic.com/steam/apps/105450/header.jpg?t=1667261661','76561198149865619',197),
	(112,115320,'Prototype 2','Become the ultimate shape-shifting weapon!','https://cdn.akamai.steamstatic.com/steam/apps/115320/header.jpg?t=1655761001','76561198149865619',40),
	(113,204360,'Castle Crashers®','Рубите, режьте и разрушайте все, чтобы добиться победы в приключенческой двумерной аркаде-призере от компании The Behemoth!','https://cdn.akamai.steamstatic.com/steam/apps/204360/header.jpg?t=1707857982','76561198149865619',2148),
	(114,205100,'Dishonored','Dishonored is an immersive first-person action game that casts you as a supernatural assassin driven by revenge. With Dishonored’s flexible combat system, creatively eliminate your targets as you combine the supernatural abilities, weapons and unusual gadgets at your disposal.','https://cdn.akamai.steamstatic.com/steam/apps/205100/header.jpg?t=1705604245','76561198149865619',2722),
	(115,200210,'Realm of the Mad God Exalt','Team up with dozens of players and battle through the Realm of the Mad God, Oryx. With a retro 8-bit style, Realm is an evolution of traditional MMO gameplay.','https://cdn.akamai.steamstatic.com/steam/apps/200210/header.jpg?t=1659426890','76561198149865619',15),
	(116,218230,'PlanetSide 2','PlanetSide 2 is an all-out planetary war, where thousands of players battle as one across enormous continents. Utilize infantry, ground and air vehicles, and teamwork to destroy your enemies in this revolutionary first-person shooter on a massive scale.','https://cdn.akamai.steamstatic.com/steam/apps/218230/header.jpg?t=1700252005','76561198149865619',1233),
	(117,1083500,'PlanetSide 2 - Test','PlanetSide 2 is an all-out planetary war, where thousands of players battle as one across enormous continents. Utilize infantry, ground and air vehicles, and teamwork to destroy your enemies in this revolutionary first-person shooter on a massive scale.','https://cdn.akamai.steamstatic.com/steam/apps/1083500/header.jpg?t=1623778069','76561198149865619',0),
	(118,230410,'Warframe','Awaken as an unstoppable warrior and battle alongside your friends in this story-driven free-to-play online action game','https://cdn.akamai.steamstatic.com/steam/apps/230410/header.jpg?t=1708445781','76561198149865619',1598),
	(119,238960,'Path of Exile','You are an Exile, struggling to survive on the dark continent of Wraeclast, as you fight to earn power that will allow you to exact your revenge against those who wronged you. Path of Exile is an online Action RPG set in a dark fantasy world. The game is completely free and will never be pay-to-win.','https://cdn.akamai.steamstatic.com/steam/apps/238960/header.jpg?t=1707963590','76561198149865619',41),
	(120,39120,'RIFT','Dive into a world of epic adventure! Create your perfect hero thanks to a uniquely customizable class system. Collect, craft, and customize your gear. Go it alone or group up to challenge dungeons, raids, dynamic open-world content, and your fellow players.','https://cdn.akamai.steamstatic.com/steam/apps/39120/header.jpg?t=1700242293','76561198149865619',668),
	(121,206480,'Dungeons & Dragons Online®','Enter a world of danger and adventure with Dungeons &amp; Dragons Online® based on the beloved RPG that started it all.','https://cdn.akamai.steamstatic.com/steam/apps/206480/header.jpg?t=1679941154','76561198149865619',614),
	(122,233860,'Kenshi','A free-roaming squad based RPG. Focusing on open-ended sandbox gameplay features rather than a linear story. Be a trader, a thief, a rebel, a warlord, an adventurer, a farmer, a slave, or just food for the cannibals. Train your men up from puny victims to master warriors.','https://cdn.akamai.steamstatic.com/steam/apps/233860/header.jpg?t=1677606321','76561198149865619',5215),
	(123,233450,'Prison Architect','Only the world’s most ruthless Warden can contain the world’s most ruthless inmates. Design and develop your personalized penitentiary in Prison Architect.','https://cdn.akamai.steamstatic.com/steam/apps/233450/header.jpg?t=1705500802','76561198149865619',1666),
	(124,218620,'PAYDAY 2','PAYDAY 2 is an action-packed, four-player co-op shooter that once again lets gamers don the masks of the original PAYDAY crew - Dallas, Hoxton, Wolf and Chains - as they descend on Washington DC for an epic crime spree.','https://cdn.akamai.steamstatic.com/steam/apps/218620/header.jpg?t=1706686603','76561198149865619',4),
	(125,219640,'Chivalry: Medieval Warfare','Besiege castles and raid villages in Chivalry: Medieval Warfare, a fast-paced medieval first person slasher with a focus on multiplayer battles','https://cdn.akamai.steamstatic.com/steam/apps/219640/header.jpg?t=1649876994','76561198149865619',226),
	(126,252390,'DwarfCorp','Build a colony of ruthless capitalist Dwarves in a strange fantasy land.','https://cdn.akamai.steamstatic.com/steam/apps/252390/header.jpg?t=1617492440','76561198149865619',103),
	(127,252490,'Rust','The only aim in Rust is to survive. Everything wants you to die - the island’s wildlife and other inhabitants, the environment, other survivors. Do whatever it takes to last another night.','https://cdn.akamai.steamstatic.com/steam/apps/252490/header.jpg?t=1701938429','76561198149865619',24172),
	(129,49520,'Borderlands 2','The Ultimate Vault Hunter’s Upgrade lets you get the most out of the Borderlands 2 experience.','https://cdn.akamai.steamstatic.com/steam/apps/49520/header.jpg?t=1693524237','76561198149865619',1498),
	(130,257830,'Violett Remastered','Dragged by her parents, a young and rebellious teenage girl – Violett, moves to an old spooky house in the middle of nowhere. Forced away from her friends and life in the city; she imagines how boring life in countryside will be: spending day after day, bored in her room with absolutely nothing to do.','https://cdn.akamai.steamstatic.com/steam/apps/257830/header.jpg?t=1568807783','76561198149865619',0),
	(131,221380,'Age of Empires II (Retired)','Age of Empires II has been re-imagined in high definition. With the release of Age of Empires II: Definitive Edition, this product will not be updated further.','https://cdn.akamai.steamstatic.com/steam/apps/221380/header.jpg?t=1705596928','76561198149865619',3647),
	(132,211820,'Starbound','You’ve fled your home, only to find yourself lost in space with a damaged ship. Your only option is to beam down to the planet below, repair your ship and set off to explore the universe...','https://cdn.akamai.steamstatic.com/steam/apps/211820/header.jpg?t=1661178495','76561198149865619',99),
	(134,226840,'Age of Wonders III','Age of Wonders III is the long anticipated sequel to the award-winning strategy series. Delivering a unique mix of Empire Building, Role Playing and Warfare, Age of Wonders III offers the ultimate in turn-based fantasy strategy for veterans of the series and new players alike!','https://cdn.akamai.steamstatic.com/steam/apps/226840/header.jpg?t=1683014870','76561198149865619',25),
	(135,221100,'DayZ','How long can you survive a post-apocalyptic world? A land overrun with an infected &quot;zombie&quot; population, where you compete with other survivors for limited resources. Will you team up with strangers and stay strong together? Or play as a lone wolf to avoid betrayal? This is DayZ – this is your story.','https://cdn.akamai.steamstatic.com/steam/apps/221100/header.jpg?t=1703605389','76561198149865619',11),
	(136,268850,'EVGA Precision X1','The next generation of EVGA Precision has arrived with EVGA Precision X1. This software allows you to fine tune your NVIDIA graphics card, maximizing cooling and performance.','https://cdn.akamai.steamstatic.com/steam/apps/268850/header.jpg?t=1585764502','76561198149865619',22966),
	(137,8930,'Sid Meier\'s Civilization® V','Create, discover, and download new player-created maps, scenarios, interfaces, and more!','https://cdn.akamai.steamstatic.com/steam/apps/8930/header.jpg?t=1579731804','76561198149865619',3475),
	(138,271590,'Grand Theft Auto V','Grand Theft Auto V for PC offers players the option to explore the award-winning world of Los Santos and Blaine County in resolutions of up to 4k and beyond, as well as the chance to experience the game running at 60 frames per second.','https://cdn.akamai.steamstatic.com/steam/apps/271590/header.jpg?t=1706131787','76561198149865619',9239),
	(139,224480,'Octodad: Dadliest Catch','Octodad: Dadliest Catch is a game about destruction, deception, and fatherhood. The player controls Octodad, a dapper octopus masquerading as a human, as he goes about his life. Octodad\'s existence is a constant struggle, as he must master mundane tasks with his unwieldy boneless tentacles while simultaneously keeping his cephalopodan...','https://cdn.akamai.steamstatic.com/steam/apps/224480/header.jpg?t=1694015218','76561198149865619',749),
	(140,274190,'Broforce','Broforce — это ода свободе и динамичный сайд-скроллер, где тебе предстоит управлять хорошо вооруженной, но плохо финансируемой околовоенной организацией, которая привыкла решать вопросы исключительно силой.','https://cdn.akamai.steamstatic.com/steam/apps/274190/header.jpg?t=1700602380','76561198149865619',34),
	(141,293540,'Guns and Robots','Guns and Robots is free to play online third person shooter. The game brings robot action with massive customization. Players get cartoony bright 3D graphics in attractive environments and challenge each other in open arenas.','https://cdn.akamai.steamstatic.com/steam/apps/293540/header.jpg?t=1447361246','76561198149865619',1514),
	(142,294100,'RimWorld','知性のあるAIストーリーテラーによって織りなされるSFコロニーシミュレーションゲームです。人の性格、自然環境、銃撃戦、近接戦、気候、バイオーム、外交、対人関係、芸術、医学、貿易などをシミュレートし、ストーリーを生成します。','https://cdn.akamai.steamstatic.com/steam/apps/294100/header.jpg?t=1699265633','76561198149865619',21490),
	(143,294230,'Millie','A joyful, casual puzzle game that will tease both your wits and your memory!','https://cdn.akamai.steamstatic.com/steam/apps/294230/header.jpg?t=1568803919','76561198149865619',0),
	(144,296470,'Mount Your Friends','Experience the extreme simulated sporting sensation that\'s sweeping our digital nation! Mount Your Friends is a fiercely competitive sporting event for you to play with your friends in the contextual security of your own home, assuming that your home is not composed of sexual innuendo.','https://cdn.akamai.steamstatic.com/steam/apps/296470/header.jpg?t=1587494719','76561198149865619',181),
	(145,301520,'Robocraft','Build insane, fully customisable robot battle vehicles that drive, hover, walk and fly in the free-to-play action game Robocraft. Add weapons from the future and jump in the driving seat as you take your creation into battle against other players online!','https://cdn.akamai.steamstatic.com/steam/apps/301520/header.jpg?t=1706886871','76561198149865619',3525),
	(146,304050,'Trove','Grab your friends, hone your blades, and set off for adventure in Trove, the ultimate action MMO! Battle the forces of Shadow in realms filled with dungeons and items created by your fellow players. Whether hunting treasure or building realms of your own, it’s never been this good to be square!','https://cdn.akamai.steamstatic.com/steam/apps/304050/header.jpg?t=1702497569','76561198149865619',11799),
	(147,304930,'Unturned','You\'re a survivor in the zombie infested ruins of society, and must work with your friends and forge alliances to remain among the living.','https://cdn.akamai.steamstatic.com/steam/apps/304930/header.jpg?t=1707174662','76561198149865619',6753),
	(148,311690,'Enter the Gungeon','Enter the Gungeon is a bullet hell dungeon crawler following a band of misfits seeking to shoot, loot, dodge roll and table-flip their way to personal absolution by reaching the legendary Gungeon’s ultimate treasure: the gun that can kill the past.','https://cdn.akamai.steamstatic.com/steam/apps/311690/header.jpg?t=1691624090','76561198149865619',1822),
	(149,291480,'Warface: Clutch','Warface: Clutch is a contemporary MMO first person shooter with millions of fans around the world. It offers intense PvP modes, compelling PvE missions and raids that you can challenge with five diverse classes and a colossal customizable arsenal.','https://cdn.akamai.steamstatic.com/steam/apps/291480/header.jpg?t=1702056025','76561198149865619',68),
	(150,313120,'Stranded Deep','Take the role of a plane crash survivor stranded somewhere in the Pacific Ocean. Come face to face with some of the most life threatening scenarios that will result in a different experience each time you play. Scavenge. Discover. Survive.','https://cdn.akamai.steamstatic.com/steam/apps/313120/header.jpg?t=1671005552','76561198149865619',1978),
	(151,227940,'Heroes & Generals','Shoot, blow sh!t up, fly or bark orders in the ultimate Free-to-Play, large scale, multiplayer, shooter experience. Thousands of players in multiple battles fighting one massive war of nations. The first to capture 15 cities takes the glory.','https://cdn.akamai.steamstatic.com/steam/apps/227940/header.jpg?t=1685049235','76561198149865619',857),
	(152,316010,'Magic Duels','MORE CARDS. MORE STRATEGY. BIGGER STORY. Collect 1,300+ earnable cards, battle in 60+ single-player campaign missions, and emerge victorious in epic online duels.','https://cdn.akamai.steamstatic.com/steam/apps/316010/header.jpg?t=1574793149','76561198149865619',52),
	(153,45760,'Ultra Street Fighter® IV','The world’s greatest fighting game evolves to a whole new level with Ultra Street Fighter IV.','https://cdn.akamai.steamstatic.com/steam/apps/45760/header.jpg?t=1687765428','76561198149865619',293),
	(154,326460,'ShellShock Live','Demolish your friends with hundreds of upgradable weapons shot from your customizable tank in this action-packed online multiplayer tanks game. Earn XP to level up and unlock new tanks, weapons, and gear. Fight against or alongside your friends for strategic team or free-for-all matches.','https://cdn.akamai.steamstatic.com/steam/apps/326460/header.jpg?t=1683306935','76561198149865619',6690),
	(155,261640,'Borderlands: The Pre-Sequel','Launch into the Borderlands universe and shoot ‘n’ loot your way through a brand new adventure that rockets you onto Pandora’s moon in Borderlands: The Pre-Sequel!','https://cdn.akamai.steamstatic.com/steam/apps/261640/header.jpg?t=1693524255','76561198149865619',2391),
	(156,65980,'Sid Meier\'s Civilization®: Beyond Earth™','Sid Meier’s Civilization: Beyond Earth is a new science-fiction-themed entry into the award winning Civilization series. As part of an expedition sent to find a home beyond Earth, lead your people into a new frontier, explore and colonize an alien planet and create a new civilization in space.','https://cdn.akamai.steamstatic.com/steam/apps/65980/header.jpg?t=1568764824','76561198149865619',2024),
	(157,730,'Counter-Strike 2','For over two decades, Counter-Strike has offered an elite competitive experience, one shaped by millions of players from across the globe. And now the next chapter in the CS story is about to begin. This is Counter-Strike 2.','https://cdn.akamai.steamstatic.com/steam/apps/730/header.jpg?t=1698860631','76561198149865619',25415),
	(158,305620,'The Long Dark','THE LONG DARK is a thoughtful, exploration-survival experience that challenges solo players to think for themselves as they explore an expansive frozen wilderness in the aftermath of a geomagnetic disaster. There are no zombies -- only you, the cold, and all the threats Mother Nature can muster.','https://cdn.akamai.steamstatic.com/steam/apps/305620/header.jpg?t=1691688878','76561198149865619',5873),
	(159,333930,'Dirty Bomb®','Work together or die alone! Fight to restore peace to London or tear it down for profit in the most challenging team based shooter around.','https://cdn.akamai.steamstatic.com/steam/apps/333930/header.jpg?t=1591272761','76561198149865619',518),
	(167,346110,'ARK: Survival Evolved','Stranded on the shores of a mysterious island, you must learn to survive. Use your cunning to kill or tame the primeval creatures roaming the land, and encounter other players to survive, dominate... and escape!','https://cdn.akamai.steamstatic.com/steam/apps/346110/header.jpg?t=1702590643','76561198149865619',29645),
	(170,255710,'Cities: Skylines','Cities: Skylines is a modern take on the classic city simulation. The game introduces new game play elements to realize the thrill and hardships of creating and maintaining a real city whilst expanding on some well-established tropes of the city building experience.','https://cdn.akamai.steamstatic.com/steam/apps/255710/header.jpg?t=1707984372','76561198149865619',744),
	(174,8870,'BioShock Infinite','Indebted to the wrong people, with his life on the line, veteran of the U.S. Cavalry and now hired gun, Booker DeWitt has only one opportunity to wipe his slate clean. He must rescue Elizabeth, a mysterious girl imprisoned since childhood and locked up in the flying city of Columbia.','https://cdn.akamai.steamstatic.com/steam/apps/8870/header.jpg?t=1602794480','76561198149865619',0),
	(186,374320,'DARK SOULS™ III','Dark Souls continues to push the boundaries with the latest, ambitious chapter in the critically-acclaimed and genre-defining series. Prepare yourself and Embrace The Darkness!','https://cdn.akamai.steamstatic.com/steam/apps/374320/header.jpg?t=1700587390','76561198149865619',3725),
	(187,380600,'Fishing Planet','Fishing Planet® is a free-to-play and highly realistic first-person online multiplayer fishing simulator. Developed by avid fishing enthusiasts to bring you the full thrill of actual angling on your PC.','https://cdn.akamai.steamstatic.com/steam/apps/380600/header.jpg?t=1707725244','76561198149865619',0),
	(192,391540,'Undertale','UNDERTALE! The RPG game where you don\'t have to destroy anyone.','https://cdn.akamai.steamstatic.com/steam/apps/391540/header.jpg?t=1579096091','76561198149865619',26),
	(193,394360,'Hearts of Iron IV','Victory is at your fingertips! Your ability to lead your nation is your supreme weapon, the strategy game Hearts of Iron IV lets you take command of any nation in World War II; the most engaging conflict in world history.','https://cdn.akamai.steamstatic.com/steam/apps/394360/header.jpg?t=1706879156','76561198149865619',6035),
	(197,413150,'Stardew Valley','You\'ve inherited your grandfather\'s old farm plot in Stardew Valley. Armed with hand-me-down tools and a few coins, you set out to begin your new life. Can you learn to live off the land and turn these overgrown fields into a thriving home?','https://cdn.akamai.steamstatic.com/steam/apps/413150/header.jpg?t=1666917466','76561198149865619',161),
	(202,359550,'Tom Clancy\'s Rainbow Six® Siege','Tom Clancy‘s Rainbow Six® Siege ist ein taktischer, teambasierter Elite-Shooter, bei dem die bessere Planung und Durchführung den Sieg bringt.','https://cdn.akamai.steamstatic.com/steam/apps/359550/header.jpg?t=1707874116','76561198149865619',8918),
	(207,431960,'Wallpaper Engine','Use stunning live wallpapers on your desktop. Animate your own images to create new wallpapers or import videos/websites and share them on the Steam Workshop!','https://cdn.akamai.steamstatic.com/steam/apps/431960/header.jpg?t=1665921297','76561198149865619',4307),
	(208,433340,'Slime Rancher','Slime Rancher is the tale of Beatrix LeBeau, a plucky, young rancher who sets out for a life a thousand light years away from Earth on the ‘Far, Far Range’ where she tries her hand at making a living wrangling slimes.','https://cdn.akamai.steamstatic.com/steam/apps/433340/header.jpg?t=1692314094','76561198149865619',134),
	(211,438100,'VRChat','Join our growing community as you explore, play, and help craft the future of social VR. Create worlds and custom avatars. Welcome to VRChat.','https://cdn.akamai.steamstatic.com/steam/apps/438100/header.jpg?t=1693940129','76561198149865619',26);

/*!40000 ALTER TABLE `gameDisplay` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table userData
# ------------------------------------------------------------

DROP TABLE IF EXISTS `userData`;

CREATE TABLE `userData` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rating` int(11) DEFAULT NULL,
  `review` text DEFAULT NULL,
  `appID` int(11) DEFAULT NULL,
  `steamID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
