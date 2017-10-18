

-- Create aml schema

-- CREATE DATABASE IF NOT EXISTS aml;
USE aml;

-- All information was found on myanimelist.net

-- Define `aml`.`anime` table

/*DROP TABLE IF EXISTS `aml`.`anime`;
CREATE TABLE `aml`.`anime` (
`anime_id` smallint(6) NOT NULL default '0',
`anime_name` char(50) default NULL,
`type` char(7) default NULL,
`status` char(17) NOT NULL default 'Not Aired',
`date_aired` date default NULL,
`date_end` date default NULL,
`episodes` smallint(6) NOT NULL default '0',
`rating` char(10) default NULL,
`genres` char(75) default NULL,
`studio_name` char(20) default NULL,
`duration` char(25) default NULL,
`desc` text(2500) NOT NULL,
`direct_id` smallint(6) NOT NULL default '0',
`adapt_manga_id` smallint(6) NOT NULL default '0',
`adapt_novel_id` smallint(6) NOT NULL default '0',
PRIMARY KEY (`anime_id`)/*,
KEY `FK_anime1` (`adapt_manga_id`),
KEY `FK_anime2` (`adapt_novel_id`),
KEY `FK_anime3` (`direct_id`),
CONSTRAINT `FK_anime1` FOREIGN KEY (`adapt_manga_id`) REFERENCES `manga` (`manga_id`),
CONSTRAINT `FK_anime2` FOREIGN KEY (`adapt_novel_id`) REFERENCES `novel` (`novel_id`),
CONSTRAINT `FK_anime3` FOREIGN KEY (`direct_id`) REFERENCES `director` (`direct_id`)
);

-- Add data to `aml`.`anime` table

LOCK TABLES `anime` WRITE;
INSERT INTO `aml`.`anime` VALUES
(0, NULL, NULL, NULL, '0000-00-00', '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(1, 'Mahou Shoujo Madoka Magica', 'TV', 'Finished Airing', '2011-01-07', '2011-04-22', 12, 'PG-13', 'Drama, Magic, Psychological, Thriller', 'Shaft', '24 min. per episode', 'Madoka Kaname and Sayaka Miki are regular middle school girls with regular lives, but all that changes when they encounter Kyuubey, a cat-like magical familiar, and Homura Akemi, the new transfer student. Kyuubey offers them a proposition: he will grant one of their wishes and in exchange, they will each become a magical girl, gaining enough power to fulfill their dreams. However Homura, a magical girl herself, urges them not to accept the offer since everything is not what it seems. A story of hope, despair, and friendship, Mahou Shoujo Madoka Magica deals with the difficulties of being a magical girl and the price one has to pay to make a dream come true.', 1, 0, 0),
(2, 'Nichijou', 'TV', 'Finished Airing', '2011-04-03', '2011-09-25', 26, 'PG-13', 'Slice of Life, Comedy, School', 'Kyoto Animation', '23 min. per episode', 'Nichijou primarily focuses on the daily antics of a trio of childhood friends—high school girls Mio Naganohara, Yuuko Aioi and Mai Minakami—whose stories soon intertwine with the young genius Hakase Shinonome, her robot caretaker Nano, and their talking cat Sakamoto. With every passing day, the lives of these six, as well as of the many people around them, experience both the calms of normal life and the insanity of the absurd. Walking to school, being bitten by a talking crow, spending time with friends, and watching the principal suplex a deer: they are all in a day\'s work in the extraordinary everyday lives of those in Nichijou.', 2, 1, 0),
(3, 'Koe no Katachi', 'Movie', 'Finished Airing', '2016-09-17', '0000-00-00', 1, 'PG-13', 'Drama, School, Shounen', 'Kyoto Animation', '2 hr. 10 min.', 'Ishida Shouya bullies a deaf girl, Nishimiya Shouko, to the point that she transfers to another school. As a result, he is ostracized and bullied himself with no friends to speak of and no plans for the future. This is the story of his path to redemption.', 3, 2, 0),
(4, 'Gintama', 'TV', 'Finished Airing', '2006-04-04', '2010-03-25', 201, 'PG-13', 'Action, Comedy, Historical, Parody, Samurai, Sci-Fi, Shounen', 'Sunrise', '24 min. per episode', 'The Amanto, aliens from outer space, have invaded Earth and taken over feudal Japan. As a result, a prohibition on swords has been established, and the samurai of Japan are treated with disregard as a consequence. However one man, Gintoki Sakata, still possesses the heart of the samurai, although from his love of sweets and work as a yorozuya, one might not expect it. Accompanying him in his jack-of-all-trades line of work are Shinpachi Shimura, a boy with glasses and a strong heart, Kagura with her umbrella and seemingly bottomless stomach, as well as Sadaharu, their oversized pet dog. Of course, these odd jobs are not always simple, as they frequently have run-ins with the police, ragtag rebels, and assassins, oftentimes leading to humorous but unfortunate consequences. Who said life as an errand boy was easy?', 4, 3, 0),
(5, 'Kimi no Na wa.', 'Movie', 'Finished Airing', '2016-08-26', '0000-00-00', 1, 'PG-13', 'Supernatural, Drama, Romance, School', 'CoMix Wave Films', '1 hr. 46 min.', 'Mitsuha Miyamizu, a high school girl, yearns to live the life of a boy in the bustling city of Tokyo—a dream that stands in stark contrast to her present life in the countryside. Meanwhile in the city, Taki Tachibana lives a busy life as a high school student while juggling his part-time job and hopes for a future in architecture. One day, Mitsuha awakens in a room that is not her own and suddenly finds herself living the dream life in Tokyo—but in Taki\'s body! Elsewhere, Taki finds himself living Mitsuha\'s life in the humble countryside. In pursuit of an answer to this strange phenomenon, they begin to search for one another. Kimi no Na wa. revolves around Mitsuha and Taki\'s actions, which begin to have a dramatic impact on each other\'s lives, weaving them into a fabric held together by fate and circumstance.', 5, 0, 0),
(6, 'Little Witch Academia', 'Movie', 'Finished Airing', '2013-03-02', '0000-00-00', 1, 'PG-13', 'Adventure, Comedy, Fantasy, Magic, School', 'Trigger', '26 min.', 'In her admiration of Shiny Chariot, a famous witch renowned for her unorthodox yet enchanting spells, Kagari Akko, an ordinary girl, joined Witch Academia in the hope of someday becoming as spectacular as Shiny Chariot. She is determined to become a graduate of Witch Academy and make her dream come true despite not being from a lineage with witchcraft and wizardry. The story takes places when Akko, along with her two best friends, Lotte Yansson and Sucy Manbavaran, take their first lessons to become witches; however, Akko is furious when she finds out that Shiny Chariot is not as popular in the world of the witches as she had thought.', 6, 0, 0),
(7, 'Mahoutsukai no Yome: Hoshi Matsu Hito', 'OVA', 'Airing', '2016-09-10', '2017-09-09', 3, 'PG-13', 'Magic, Fantasy', 'Wit Studio', '23 min. per episode', 'Chise Hatori has lived a life full of neglect and abuse, devoid of anything resembling love. Far from the warmth of family, she has had her share of troubles and pitfalls. Just when all hope seems lost, a fateful encounter awaits her. When a man with the head of a beast, wielding strange powers, obtains her through a slave auction, Chise\'s life will never be the same again. The man is a "magus," a sorcerer of great power, who decides to free Chise from the bonds of captivity. The magus then makes a bold statement: Chise will become his apprentice—and his bride! Mahoutsukai no Yome: Hoshi Matsu Hito is a prequel to the Mahoutsukai no Yome manga series.', 7, 4, 0),
(8, 'Violet Evergarden', NULL, 'Not Yet Aired', '0000-00-00', '0000-00-00', 0, NULL, 'Drama, Fantasy', 'Kyoto Animation', NULL, 'Auto Memories Doll. It\'s been quite a while since that name caused a fuss. Originally invented by Professor Orland solely for his beloved wife, Auto Memories Dolls eventually spread out into the world, and a machine that allows people to rent out the dolls was also created. "I will run as fast as I can to wherever my customer desires. I am the Auto Memories Doll, Violet Evergarden." A girl who almost appears to have popped out of a fairy tale with her blonde hair and blue eyes said this with her inorganic beauty and sweet voice.', 0, 0, 1),
(9, 'FLCL', 'OVA', 'Finished Airing', '2000-04-26', '2001-03-16', 6, 'PG-13', 'Action, Comedy, Dementia, Mecha, Parody, Sci-Fi', 'Gainax, Production I.G', '25 min. per episode', 'Nothing interesting happens in Naota\'s life since his brother left for America, leaving him with his grandfather and father in their boring little town. On his way home with Mamimi—his brother\'s ex-girlfriend—a pink-haired, crazy woman riding a Vespa named Haruko suddenly slams into him, kisses him, and then bashes him in the head with her guitar before riding off. The next thing he knows, the crazy girl is working as his housekeeper, two robots sprout from his forehead to do battle, and the surviving one starts living with him as well. I think it\'s fair to say that Naota has parted ways with his old mundane life. FLCL is a kooky coming-of-age story with surprisingly deep undertones as the twelve-year-old Naota develops through the wild antics of Haruko and matures along the way into adulthood.', 8, 0, 0),
(10, 'Kobayashi-san Chi no Maid Dragon', 'TV', 'Not Yet Aired', '2017-01-00', '0000-00-00', 0, NULL, 'Slice of Life, Comedy, Fantasy', 'Kyoto Animation', NULL, 'Kobayashi lives alone in an apartment, until one day, Tooru appeared and they ended up living together. Tooru looks down on humans as inferior and foolish, but having been saved by Kobayashi-san, she does everything she can to repay the debt and help her with various things, although not everything goes according to plan. A mythical everyday life comedy about a hard working office lady living with a dragon girl.', 9, 5, 0),
(11, 'Digimon Adventures', 'TV', 'Finished Airing', '1999-03-07', '2000-05-26', 54, 'PG', 'Action, Adventure, Comedy, Fantasy, Kids', 'Toei Animation', '24 min. per episode', 'When a group of kids head out for summer camp, they don\'t expect it to snow in the middle of July. Out of nowhere, the kids receive strange devices which transport them to a very different world to begin their Digimon Adventure! Led by the plucky Taichi Yagami, the seven children must now survive in a realm far from home, filled with monsters and devoid of other humans. Luckily, they\'re not alone: each child is paired off with a companion digital monster called a Digimon. Together, the children and their new friends must overcome their insecurities, discover their inner strengths, and evolve into stronger fighters - literally. A force of evil is spreading through the Digital World, corrupting all the Digimon. The DigiDestined have arrived and it’s up to them to save the Digital World, if they ever want to see their home world again.', 10, 0, 0),
(12, 'Re:Zero kara Hajimeru Isekai Seikatsu', 'TV', 'Finished Airing', '2016-04-04', '2016-09-19', 25, 'R', 'Psychological, Drama, Thriller, Fantasy', 'White Fox', '25 min. per episode', 'When Subaru Natsuki leaves the convenience store, the last thing he expects is to be wrenched from his everyday life and dropped into a fantasy world. Things aren\'t looking good for the bewildered teenager, however: not long after his arrival, he is attacked by some thugs; armed with only a bag of groceries and a now useless cell phone, he is quickly beaten to a pulp. Fortunately, a mysterious beauty named Satella, in hot pursuit after the one who stole her insignia, happens upon Subaru and saves him. In order to thank the honest and kindhearted girl, Subaru offers to help in her search, and later that night, he even finds the whereabouts of that which she seeks. But unbeknownst to them, a much darker force stalks the pair from the shadows, and just minutes after locating the insignia, Subaru and Satella are brutally murdered. However, Subaru immediately reawakens to a familiar scene—confronted by the same group of thugs, meeting Satella all over again—the enigma deepens as history inexplicably repeats itself.', 11, 0, 2),
(13, 'Gekkan Shoujo Nozaki-kun', 'TV', 'Finished Airing', '2014-07-07', '2014-09-22', 12, 'PG-13', 'Comedy, Romance, School', 'Doga Kobo', '24 min. per episode', 'Chiyo Sakura is a cheerful high school girl who has fallen head over heels for the oblivious Umetarou Nozaki. Much to Chiyo\'s confusion, when she confesses to her beloved Nozaki, he hands her an unfamiliar autograph. As it turns out, the stoic teenage boy is actually a respected shoujo mangaka, publishing under the pen name Sakiko Yumeno! A series of misunderstandings leads to Chiyo becoming one of Nozaki\'s manga assistants. Throughout the hilarious events that ensue, she befriends many of her quirky schoolmates, including her seemingly shameless fellow assistant, Mikoto Mikoshiba, and the "Prince of the School," Yuu Kashima. Gekkan Shoujo Nozaki-kun follows Chiyo as she strives to help Nozaki with his manga and hopes that he will eventually notice her feelings.', 12, 6, 0),
(14, 'To LOVE-Ru', 'TV', 'Finished Airing', '2008-04-04', '2008-09-26', 26, 'R', 'Comedy, Ecchi, Harem, Romance, School, Sci-Fi', 'Xebec', '24 min. per episode', 'Timid 16-year-old Rito Yuuki has yet to profess his love to Haruna Sairenji—a classmate and object of his infatuation since junior high. Sadly, his situation becomes even more challenging when one night, a mysterious, stark-naked girl crash-lands right on top of a bathing Rito. To add to the confusion, Rito discovers that the girl, Lala Satalin Deviluke, is the crown princess of an alien empire and has run away from her home. Despite her position as the heiress to the most dominant power in the entire galaxy, Lala is surprisingly more than willing to marry the decidedly average Rito in order to avoid an unwanted political marriage. To LOVE-Ru depicts Rito\'s daily struggles with the bizarre chaos that begins upon the arrival of Lala. With an evergrowing legion of swooning beauties that continuously foil his attempted confessions to Haruna, To LOVE-Ru is a romantic comedy full of slapstick humor, sexy girls, and outlandishly lewd moments that defy the laws of physics.', 13, 7, 0),
(15, 'Ghost in the Shell', 'Movie', 'Finished Airing', '1995-11-18', '0000-00-00', 1, 'R', 'Action, Sci-Fi, Police, Psychologival, Mecha, Seinen', 'Production I.G, Production Reed', '1 hr. 23 min.', 'In the year 2029, advances in Cybernetics allow people to replace nearly all of their body parts and organs with robotics. Through these prosthetics, the weak are made strong, and the dying are given new life. Public Security Section 9 of Niihama City (a fictional setting inspired by Hong Kong), a diverse team of AI, cyborgs and unmodified humans, must investigate cases of corruption and terrorism. Major Motoko Kusanagi has full-body prosthetics, owing to a childhood accident. She, her second in command Batou and information specialist Ishikawa have been assigned an important task: to investigate a hacker known only as "The Puppetmaster." But as Motoko and her team discover, things are never so simple. Ghost in the Shell is a futuristic thriller with intense action scenes mixed with slower artistic sequences and many philosophical questions about one\'s soul, gender and human identity in such an advanced age of technology.', 14, 8, 0),
(16, 'Eve no Jikan', 'ONA', 'Finished Airing', '2008-08-01', '2009-09-18', 6, 'PG-13', 'Slice of Life, Sci-Fi', 'Studio Rikka', '18 min per episode', 'In Eve no Jikan, The Three Laws of Robotics are held above all else in a world where android housekeepers have become commonplace. Although they look human, they are treated the same as lesser technology such as toasters and alarm clocks. Not everyone feels this way, however. Android sympathizers, known as "android-holics," have been labelled as heretics and problematic members of society. Rikuo Sakisaka was raised to believe and uphold society\'s tenets about androids, and is perfectly aware they are not human. Then one day, he finds abnormal data in his family android\'s activity logs. This leads him to a café that has only one rule that its clientele must follow: there must be no discrimination between humans and androids inside. Curiosity drives Rikuo to discover more about this strange place and its regulars, even though he has no desire to befriend machines.', 15, 0, 0),
(17, 'Inferno Cop', 'ONA', 'Finished Airing', '2012-12-25', '2013-03-19', 13, 'R', 'Action, Police', 'Trigger', '3 min. per episode', 'The story deals with those in this world who dwell in the dark, invisible to the naked eye. From time to time, these figures bare their fangs and attack people. Inferno Cop is a messenger of justice who came from the depths of hell to protect people from them.', 16, 0, 0),
(18, 'Ginga Eiyuu Densetsu', 'OVA', 'Finished Airing', '1988-01-08', '1997-03-17', 110, 'R', 'Drama, Military, Sci-Fi, Police', 'Artland', '26 min. per episode', 'For 150 years the galaxy has been locked in an interstellar war between the Galactic Empire and the Free Planets Alliance, fighting battles with thousands of spaceships and millions of soldiers on both sides. The crumbling Goldenbaum dynasty rules the Empire while the Alliance is in an increasingly dysfunctional democratic state. Two new commanders enter the stage: Imperial Admiral Reinhard von Lohengramm and the FPA\'s Yang Wen-Li. Reinhard is a talented minor aristocrat given a high station—and a powerful grudge—after the Kaiser took his older sister as a concubine. Wen-Li originally joined the military only to fund his university education, but has become a brilliant though reluctant leader. Each begins to attract a circle of similarly gifted soldiers, generals and thinkers around him, and in time the rivalry between these two very different men will shatter the existing stalemate. As they deal with superiors and subordinates, maneuver through personal and political problems, plot strategies and fight battles, both will bend the course of events to their will and, in turn, be tested and changed by the greatest war in human history! Legend of the Galactic Heroes is a vast, sentimental and thoughtful military space opera. This 110-episode OVA is the central part of the franchise, and the other connected titles are supplements to it.', 17, 0, 3),
(19, 'Flip Flappers', 'TV', 'Airing', '2016-10-06', '0000-00-00', 0, 'PG-13', 'Sci-Fi, Comedy', 'Studio 3Hz', '23 min. per episode', 'Papika and Cocona hold the keys to open the door. When the two girls meet, their adventures in a different time and different overlapping dimension called "Pure Illusion" begin. Many things in Pure Illusion will stand in the girls\' way on their search for the mysterious crystal called the "Shard of Mimi," an item that is said to grant any wish. However, when the girls find themselves in danger, the Shard of Mimi shines, and they are able to transform.', 18, 0, 0),
(20, 'Citrus', NULL, 'Not Yet Aired', '0000-00-00', '0000-00-00', 0, NULL, 'Drama, Romance, School, Yuri', NULL, NULL, 'Fashionable Yuzu imagined the first day at her new school she transferred to after her mother\'s remarriage a bit differently; she didn\'t know it\'d be an ultra-strict and conservative girls\' school. So instead of a sweet high-school romance, she butts heads with the stern student council president Mei—who turns out to be her new step sister. And she has to learn that hate and attraction are often not that far apart.', 0, 9, 0),
(21, 'Sen to Chihiro no Kamikakushi', 'Movie', 'Finished Airing', '2001-07-20', NULL, 1, 'G', 'Adventure, Supernatural, Drama', 'Studio Ghibli', '2 hr. 5 min.', 'Stubborn, spoiled, and naïve, 10-year-old Chihiro Ogino is less than pleased when she and her parents discover an abandoned amusement park on the way to their new house. Cautiously venturing inside, she realizes that there is more to this place than meets the eye, as strange things begin to happen once dusk falls. Ghostly apparitions and food that turns her parents into pigs are just the start—Chihiro has unwittingly crossed over into the spirit world. Now trapped, she must summon the courage to live and work amongst spirits, with the help of the enigmatic Haku and the cast of unique characters she meets along the way. Vivid and intriguing, Sen to Chihiro no Kamikakushi tells the story of Chihiro\'s journey through an unfamiliar world as she strives to save her parents and return home.', 19, 0, 0),
(22, 'Ookami to Koushinryou', 'TV',' Finished Airing', '2008-01-09', '2008-03-26', 13, 'PG-13', 'Adventure, Fantasy, Historical, Romance', 'Imagin', '24 min. per episode', 'Holo is a powerful wolf deity who is celebrated and revered in the small town of Pasloe for blessing the annual harvest. Yet as years go by and the villagers become more self-sufficient, Holo, who stylizes herself as the "Wise Wolf of Yoitsu," has been reduced to a mere folk tale. When a traveling merchant named Kraft Lawrence stops at Pasloe, Holo offers to become his business partner if he eventually takes her to her northern home of Yoitsu. The savvy trader recognizes Holo\'s unusual ability to evaluate a person\'s character and accepts her proposition. Now in the possession of both sharp business skills and a charismatic negotiator, Lawrence inches closer to his goal of opening his own shop. However, as Lawrence travels the countryside with Holo in search of economic opportunities, he begins to realize that his aspirations are slowly morphing into something unexpected. Based on the popular light novel of the same name, Ookami to Koushinryou, also known as Spice and Wolf, fuses the two polar genres of economics and romance to create an enthralling story abundant with elaborate schemes, sharp humor, and witty dialogue. Ookami to Koushinryou is more than just a story of bartering; it turns into a journey of searching for a lost identity in an ever-changing world.', 20, 10, 4),
(23, 'Hataraku Maou-sama!', 'TV', 'Finished Airing', '2013-04-04', '2013-06-27', 13, 'PG-13', 'Comedy, Demons, Romance, Fantasy, Shounen', 'White Fox', '24 min. per episode', 'Striking fear into the hearts of mortals, the Demon Lord Satan begins to conquer the land of Ente Isla with his vast demon armies. However, while embarking on this brutal quest to take over the continent, his efforts are foiled by the hero Emilia, forcing Satan to make his swift retreat through a dimensional portal only to land in the human world. Along with his loyal general Alsiel, the demon finds himself stranded in modern-day Tokyo and vows to return and complete his subjugation of Ente Isla—that is, if they can find a way back! Powerless in a world without magic, Satan assumes the guise of a human named Sadao Maou and begins working at MgRonald\'s—a local fast-food restaurant—to make ends meet. He soon realizes that his goal of conquering Ente Isla is just not enough as he grows determined to climb the corporate ladder and become the ruler of Earth, one satisfied customer at a time! Whether it\'s part-time work, household chores, or simply trying to pay the rent on time, Hataraku Maou-sama! presents a hilarious view of the most mundane aspects of everyday life, all through the eyes of a hapless demon lord.', 21, 11, 5),
(24, 'Kono Subarashii Sekai ni Shukufuku wo!', 'TV', 'Finished Airing', '2016-01-14', '2016-03-17', 10, 'PG-13', 'Adventure, Comedy, Supernatural, Fantasty', 'Studio Deen', '23 min. per episdode', 'After dying a laughable and pathetic death on his way back from buying a game, high school student and recluse Kazuma Satou finds himself sitting before a beautiful but obnoxious goddess named Aqua. She provides the NEET with two options: continue on to heaven or reincarnate in every gamer\'s dream—a real fantasy world! Choosing to start a new life, Kazuma is quickly tasked with defeating a Demon King who is terrorizing villages. But before he goes, he can choose one item of any kind to aid him in his quest, and the future hero selects Aqua. But Kazuma has made a grave mistake—Aqua is completely useless! Unfortunately, their troubles don\'t end here; it turns out that living in such a world is far different from how it plays out in a game. Instead of going on a thrilling adventure, the duo must first work to pay for their living expenses. Indeed, their misfortunes have only just begun!', 22, 12, 6)
;
UNLOCK TABLES;


-- Define `aml`.`manga` table

DROP TABLE IF EXISTS `aml`.`manga`;
CREATE TABLE `aml`.`manga` (
`manga_id` smallint(6) NOT NULL default '0',
`manga_name` char(50) default NULL,
`author_id` smallint(6) NOT NULL default '0',
`artist_id` smallint(6) NOT NULL default '0',
`status` char(17) NOT NULL default 'Not Publishing',
`date_publish` date default NULL,
`date_end` date default NULL,
`volumes` smallint(6) NOT NULL default '0',
`chapters` smallint(6) NOT NULL default '0',
`magazine` char(30) default NULL,
`genres` char(75) default NULL,
`desc` text(2500) NOT NULL,
`adapt_anime_id` smallint(6) NOT NULL default '0',
`adapt_novel_id` smallint(6) NOT NULL default '0',
PRIMARY KEY (`manga_id`)/*,
KEY `FK_manga1` (`author_id`),
KEY `FK_manga2` (`artist_id`),
KEY `FK_manga3` (`adapt_anime_id`),
KEY `FK_manga4` (`adapt_novel_id`),
CONSTRAINT `FK_manga1` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`),
CONSTRAINT `FK_manga2` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`),
CONSTRAINT `FK_manga3` FOREIGN KEY (`adapt_anime_id`) REFERENCES `anime` (`anime_id`),
CONSTRAINT `FK_manga4` FOREIGN KEY (`adapt_novel_id`) REFERENCES `novel` (`novel_id`)
);

-- Add data to `aml`.`manga` table

LOCK TABLES `manga` WRITE;
INSERT INTO `aml`.`manga` VALUES
(0, NULL, 0, 0, NULL, '0000-00-00', '0000-00-00', 0, 0, NULL, NULL, NULL, 0, 0),
(1, 'Nichijou', 1, 0, 'Finished', '2006-06-26', '2015-10-26', 10, 210, 'Shounen Ace', 'Comedy, School, Shounen', 'While the title suggests a story of simple, everyday school life, the contents are more the opposite. The setting is a strange school where you may see the principal wrestle a deer or a robot\'s arm hide a rollcake. However there are still normal stories, like making a card castle or taking a test you didn\'t study for. The art style is cute but mixes with extreme expressions and action sequences for surprising comedy bits.', 2, 0),
(2, 'Koe no Katachi', 2, 0, 'Finished', '2013-08-07', '2014-11-19', 7, 64, 'Shounen Magazine', 'Drama, School, Shounen', 'Shouya Ishida, a boy always looking for ways to beat boredom, ends up looking for it in the wrong place. Weirded out by his new classmate, a deaf transfer student named Shouko Nishimiya, he deems her as the target of his ostracizing and bullying. Day after day, Shouya picks on Shouko, unaware of the effects of his thoughtless actions. He finally understands the pain he has inflicted on her when one day, his bullying culminates in her leaving the school, and his classmates begin to shun and harass him every chance they get instead. Determined to right his wrongs, five years later, Shouya, now a third year high school loner, meets Shouko again. Thus begins the story of a young man\'s path to redemption.', 3, 0),
(3, 'Gintama', 3, 0, 'Publishing', '2003-12-08', '0000-00-00', 0, 0, 'Shounen Jump', 'Action, Comedy, Parody, Samurai, Sci-Fi, Shounen', 'During the Edo period, Japan is suddenly invaded by alien creatures known as the "Amanto." Despite the samurai\'s attempts to combat the extraterrestrial menace, the Shogun soon realizes that their efforts are futile and decides to surrender. This marks the beginning of an uneasy agreement between the Shogunate and Amanto, one that results in a countrywide sword ban and the disappearance of the samurai spirit. However, there exists one eccentric individual who wields a wooden sword and refuses to let his samurai status die. Now that his kind are no longer needed, Gintoki Sakata performs various odd jobs around town in order to make ends meet. Joined by his self-proclaimed disciple Shinpachi Shimura, the fearsome alien Kagura, and a giant dog named Sadaharu, they run the business known as Yorozuya, often getting caught up in all sorts of crazy and hilarious shenanigans.', 4, 0),
(4, 'Mahoutsukai no Yome', 4, 0, 'Publishing', '2013-11-30', '0000-00-00', 0, 0, 'Comic Garden', 'Fantasy, Magic, Shounen, Slice of Life', 'Hatori Chise is only 16, but she has lost far more than most. With neither family nor hope, it seems all doors are closed to her. But, a chance encounter began to turn the rusted wheels of fate. In her darkest hour, a mysterious magus appears before Chitose, offering a chance she couldn\'t turn down. This magus who seems closer to demon than human, will he bring her the light she desperately seeks, or drown her in ever deeper shadows?', 8, 0),
(5, 'Kobayashi-san Chi no Maid Dragon', 5, 0, 'Publishing', '2013-05-23', '0000-00-00', 0, 0, 'Monthly Garden', 'Comedy, Fantasy, Slice of Life', 'Kobayashi lives alone in an apartment, until one day, Tooru appeared and they ended up living together. Tooru looks down on humans as inferior and foolish, but having been saved by Kobayashi-san, she does everything she can to repay the debt and help her with various things, although not everything goes according to plan. A mythical everyday life comedy about a hard working office lady living with a dragon girl.', 11, 0),
(6, 'Gekkan Shoujo Nozaki-kun', 6, 0, 'Publishing', '2011-08-25', '0000-00-00', 0, 0, 'Gangan Online', 'Comedy, Romance, School', 'Sakura Chiyo confesses to her crush, Nozaki-kun, but he mistakes her as a fan! Unable to convey her feelings, what happens when he invites her to his house? Find out in this hilarious series!', 14, 0),
(7, 'To LOVE-Ru', 7, 0, 'Finished', '2006-08-24', '2009-08-31', 18, 162, 'Shounen Jump', 'Comedy, Ecchi, Romance, School, Sci-Fi, Shounen, Harem, Supernatural', 'The story of To Love-Ru revolves around Rito Yūki, a high-school student who cannot confess to the girl of his dreams, Haruna Sairenji. One day when coming home and sulking in the bathtub, a mysterious, nude girl appears out of nowhere. Her name is Lala and she comes from the planet Deviluke, where she is the heir to the throne. Her father wants her to return to her home planet so she can marry one of the husband candidates. But she decides that she wants to marry Rito in order to stay on Earth. Commander Zastin has been ordered to bring Lala back and has already battled Rito. He reports to the emperor that Rito would be suited to marry Lala, after hearing Rito, who was actually defending himself instead of Lala, says that marriage is impossible unless it is with the person you love. Lala truly falls in love with Rito and decides that she wants to marry Rito after hearing what he said. Her father decides that, if Rito is able to protect Lala from her fiancés, then he can marry her, but if Rito cannot protect Lala from her other fiancés and meet the king\'s expectations, Lala\'s father will kill Rito and destroy the Earth.', 15, 0),
(8, 'Koukaku Kidoutai: Ghost in the Shell', 8, 0, 'Finished', '1989-03-00', '1991-09-00', 1, 11, 'Young Magazine', 'Action, Sci-Fi, Police, Psychological, Seinen', 'In a near future, technology has firmly taken root into society at large. Cybernetic implants are nothing uncommon and robots roam as plentiful as humans, all connected through their ''ghosts'' to the electronic datastreams of the net. Major Motoko Kusanagi and the Public Security Section 9 find themselves in a constant battle with the newly created wave of technological terrorists and cyber-hackers. But things take a turn once Motoko gets involved in a certain case involving an extremely dangerous ''ghost''hacker nicknamed the Puppeteer, as she dives deeper and deeper into the limitless reality of the net, to reach her own startling conclusions.', 16, 0),
(9, 'Citrus', 9, 0, 'Publishing', '2012-11-17', '0000-00-00', 0, 0, 'Comic Yuri Hime', 'Drama, Romance, School, Yuri', 'Fashionable Yuzu imagined the first day at her new school she transferred to after her mother\'s remarriage a bit differently; she didn\'t know it\'d be an ultra-strict and conservative girls\' school. So instead of a sweet high-school romance, she butts heads with the stern student council president Mei—who turns out to be her new step sister. And she has to learn that hate and attraction are often not that far apart.', 21, 0),
(10, 'Ookami to Koushinryou', 10, 0, 'Publishing', '2007-09-27', '0000-00-00', 0, 0, 'Dengeki Maoh', 'Adventure, Drama, Fantasy, Historical, Romance, Supernatural, Seinen', 'With his carthorse as his only companion, the young merchant Kraft Lawrence slowly wends his way through dusty back roads in search of profitable trade. But this monotony screeches to a halt when, one night, he encounters a harvest goddess in the guise of a beautiful young girl…with wolf ears and a tail! Longing for the northern lands of her birth, Holo the Wisewolf joins Lawrence as he follows the ebb and flow of trade through the countryside. And when the two come across a compelling but suspicious opportunity for profit, will Lawrence with his mercantile chops and Holo with her ancient instincts be able to separate the truth from the lies — and make some coin while they\'re at it?!', 23, 4),
(11, 'Hataraku Maou-sama!', 11, 0, 'Publishing', '2011-12-27', '0000-00-00', 0, 0, 'Dengeki Daioh', 'Comedy, Demons, Romance', 'Devil King Sadao is only one step away from conquering the world when he is beaten by Hero Emilia and forced to drift to the other world: modern-day Tokyo. As "conquering the world" are the only skills the Devil King possesses—and are obviously unnecessary in his new situation—he must work as a freeter to pay for his living expenses!', 24, 5),
(12, 'Kono Subarashii Sekai ni Shukufuku wo!', 12, 0, 'Publishing', '2014-09-09', '0000-00-00', 0, 0, 'Dragon Age', 'Adventure, Comedy, Fantasy, Romance, Shounen, Harem, Supernatural', 'The life of Satou Kazuma, a hikikomori who likes games, all too soon came to an end because of a traffic accident... It was supposed to, but when he woke up, a beautiful girl who called herself a goddess was in front of his eyes. "Hey, I have got something a little nice for you. Wanna go to another world? You can take only one thing of your choice along with you." "...then I\'ll take you." From here on, the great adventure of subjugating the Demon King will begin for the reincarnated Kazuma... Or so one would think, but it\'s the labor for obtaining food, clothing and shelter that begins! Despite Kazuma wanting to live in peace, the goddess keeps causing problems one after another, and eventually, they attract the attention of the Demon King\'s army!?', 25, 6),
(13, 'Yotsuba to!', 13, 0, 'Publishing', '2003-03-21', '0000-00-00', 0, 0, 'Dengeki Daioh', 'Comedy, Slice of Life', 'Yotsuba\'s daily life is full of adventure. She is energetic, curious, and a bit odd—odd enough to be called strange by her father as well as ignorant of many things that even a five-year-old should know. Because of this, the most ordinary experience can become an adventure for her. As the days progress, she makes new friends and shows those around her that every day can be enjoyable.', 0, 0),
(14, 'Oyasumi Punpun', 14, 0, 'Finished', '2007-03-15', '2013-11-02', 13, 147, 'Big Comic Spirits', 'Drama, Slice of Life, Psychological, Seinen', 'Punpun Onodera is a normal 11-year-old boy living in Japan. Hopelessly idealistic and romantic, Punpun begins to see his life take a subtle—though nonetheless startling—turn to the adult when he meets the new girl in his class, Aiko Tanaka. It is then that the quiet boy learns just how fickle maintaining a relationship can be, and the surmounting difficulties of transitioning from a naïve boyhood to a convoluted adulthood. When his father assaults his mother one night, Punpun realizes another thing: those whom he looked up to were not as impressive as he once thought. As his problems increase, Punpun\'s once shy demeanor turns into voluntary reclusiveness. Rather than curing him of his problems and conflicting emotions, this merely intensifies them, sending him down the dark path of maturity in this grim coming-of-age saga.', 0, 0),
(15, 'Yokohama Kaidashi Kikou', 15, 0, 'Finished', '1994-04-25', '2006-02-25', 14, 142, 'Afternoon', 'Drama, Sci-Fi, Slice of Life, Seinen', 'The story is set in future Japan, in which the sea level has risen and flooded many of the coastal areas and Mt. Fuji has erupted within living memory. The population has been considerably reduced and political and technological institutions have broken-down. Local communities have become nations and telephone and television no longer exist (although coffee vending machines and streetlights stubbornly continue to work). There are strange new animals and plants (like flying fish and glowing streetlight trees). The remaining people have adopted a slower-paced, simpler way of life and rely more on each other. Along with the human population are some intelligent, humanoid robots. One of the robots, a female named Alpha, runs a café by the same name in the country outside of what remains of Yokohama. With her trusty motor scooter and her camera she travels around the area making friends with the humans and robots, having new experiences and observing the passage of time.', 0, 0),
(16, 'Hoshi no Samidare', 16, 0, 'Finished', '2005-06-30', '2010-08-30', 10, 65, 'Young King OURs GH', 'Action, Adventure, Comedy, Drama, Psychological, Seinen', 'The world is in mortal peril. Sir Noi Crezant, the Lizard Knight, has been sent to gain the aid of the great warrior Amamiya Yuuhi in hopes of finding the Princess Samidare and protecting the planet from the incredible "Biscuit Hammer" poised to crack the Earth in two. Unfortunately Yuuhi wants no part of it, and the Princess doesn\'t prove to be the shining "hero of justice" role model that Noi had hoped for.', 0, 0),
(17, 'Girl Friends', 17, 0, 'Finished', '2006-10-21', '2010-08-21', 5, 35, 'Comic High!', 'School, Shoujo Ai, Seinen', 'When it comes to grades, bookish high school student Mariko Kumakura is at the top of her class. Socially, however, she is shy and lonely, typically eating lunch by herself. Enter the charismatic and beautiful Akko Oohashi, whose goal is to befriend Mariko and burst her out of her introverted shell. In the process of transforming Plain Jane Mariko into one of the cutest, most popular girls in school, deep feelings begin to emerge that suggest something deeper than friendship. Will these feelings destroy the budding relationship between Mariko and Akko, or will it turn into something else?', 0, 0),
(18, 'Oresama Teacher', 18, 0, 'Publishing', '2007-06-05', '0000-00-00', 0, 0, 'Hana to Yume', 'Comedy, School, Shoujo', 'Kurosaki Mafuyu was a juvenile delinquent and head of her gang before her subsequent arrest got her expelled from high school. Now that she\'s transferred to a new high school, she\'s determined to become an "ultra-shiny, super feminine high school student." But with a new friend like Hayasaka-kun and a homeroom teacher like Saeki Takaomi (who may be more than he seems), will Mafuyu really be able to live a girly-girl high school life!?', 0, 0),
(19, 'Mushoku Tensei: Isekai Ittara Honki Dasu', 19, 0, 'Publishing', '2014-05-02', '0000-00-00', 0, 0, 'Comic Flapper', 'Drama, Fantasy, Magic, Seinen', 'A 34-year-old NEET gets killed in a traffic accident and finds himself in a world of magic. Rather than waking up as a full-grown mage, he gets reincarnated as a newborn baby, retaining the memories of his past life. Before he can even properly move his body, he resolves to never make the same mistakes he made in his first life ever again and instead live a life with no regrets with the new one that was given to him. Because he has the knowledge of a middle-aged man, by the age of two, he has already become a prodigy and possesses power unthinkable for anyone his age and even older. Thus begins the chronicles of Rudeus Greyrat, son of swordsman Paul and healer Zenith, as he enters a new world to become the strongest mage known to man, with powers rivaling even the gods themselves.', 0, 7)
;
UNLOCK TABLES;
*/

-- Define `aml`.`novel` table

DROP TABLE IF EXISTS `aml`.`novel`;
CREATE TABLE `aml`.`novel` (
`novel_id` smallint(6) NOT NULL default '0',
`novel_name` char(50) default NULL,
`author_id` smallint(6) NOT NULL default '0',
`artist_id` smallint(6) NOT NULL default '0',
`status` char(17) NOT NULL default 'Not Publishing',
`date_publish` date default NULL,
`date_end` date default NULL,
`volumes` smallint(6) NOT NULL default '0',
`chapters` smallint(6) NOT NULL default '0',
`genres` char(90) default NULL,
`desc` text(2500) NOT NULL,
`adapt_anime_id` smallint(6) NOT NULL default '0',
`adapt_manga_id` smallint(6) NOT NULL default '0',
PRIMARY KEY (`novel_id`)/*,
KEY `FK_novel1` (`author_id`),
KEY `FK_novel2` (`artist_id`),
KEY `FK_novel3` (`adapt_anime_id`),
KEY `FK_novel4` (`adapt_manga_id`),
CONSTRAINT `FK_novel1` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`),
CONSTRAINT `FK_novel2` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`),
CONSTRAINT `FK_novel3` FOREIGN KEY (`adapt_anime_id`) REFERENCES `anime` (`anime_id`),
CONSTRAINT `FK_novel4` FOREIGN KEY (`adapt_manga_id`) REFERENCES `manga` (`manga_id`)*/
);

-- Add data to `aml`.`novel` table

LOCK TABLES `novel` WRITE;
INSERT INTO `aml`.`novel` VALUES
(0, NULL, 0, 0, NULL, '0000-00-00', '0000-00-00', 0, 0, NULL, NULL, 0, 0),
(1, 'Violet Evergarden', 20, 1, 'Publishing', '2015-12-25', '0000-00-00', 0, 0, 'Drama, Fantasy', 'Auto Memories Doll. It\'s already been a long time since that name was first popularized. It\'s a machine that Dr. Orlando created that talks in a natural voice. At first, he only made it to help out his loving wife, but before long they spread out into the world. and companies were made to lend them out. "I\'m Violet Evergarden, the Auto Memories Doll who will rush to provide service anywhere you wish." That translucent voice comes from a robotic beautiful girl with blonde hair and blue eyes like she came out of a storybook.', 8, 0),
(2, 'Re:Zero kara Hajimeru Isekai Sseikatsu', 21, 0, 'Publishing', '2014-01-23', '0000-00-00', 0, 0, 'Action, Drama, Fantasy', 'Suddenly, high school student Subaru Natsuki has been summoned to another world on the way back from the convenience store. With the biggest crisis of his life being summoned to another world, and with no sign of the one who summoned him, things become even worse when he is attacked. But when he is saved by a mysterious, silver-haired girl with a fairy cat, Subaru attempts to return the favor by helping her track down something that was stolen from her. When they finally manage to get a clue, Subaru and the girl are attacked and killed by someone. Subaru then awakens in the place he was summoned and notices he gained the ability "Returns by Death" and has become a helpless boy that only has the ability to rewind time to a certain point by dying. Beyond the despair, can he save the girl from the fate of death?', 12, 0),
(3, 'Ginga Eiyuu Densetsu', 22, 0, 'Finished', '1982-11-00', '1987-11-00', 10, 94, 'Action, Adventure, Drama, Sci-Fi, Space, Military', 'The story is staged in the distant future within our own Milky Way Galaxy, approximately in the 35th century. Unlike other science fiction stories, there are no alien civilizations. A portion of the galaxy is filled with terraformed worlds inhabited by interstellar traveling human beings. For 150 years two mighty space powers have intermittently warred with each other: the Galactic Empire and the Free Planets Alliance. Within the Galactic Empire, based on 19th century Prussia, an ambitious military genius, Reinhard von Müsel, is rising to power. He is driven by the desire to free his sister Annerose, who was taken by the Kaiser as a concubine. Later, he wants not only to end the corrupt Goldenbaum dynasty but also to defeat the Free Planets Alliance and to unify the whole galaxy under his rule. In the Free Planets Alliance is another genius, Yang Wen-li. He originally aspired to become a historian, and joined the military only because he needed money for tuition. He was rapidly promoted to an admiral because of his demonstrated excellence in military strategy. He becomes the archrival of Reinhard, though they highly respect one another. As a historian, Yang often narrates the rich history of his world and comments on it. One of his famous quotes is: "There are few wars between good and evil; most are between one good and another good." Besides the two main heroes, the story is full of vivid characters and intricate politics. All types of characters, from high nobility, admirals and politicians, to common soldiers and farmers, are interwoven into the story. There is a third neutral power nominally attached to the Galactic Empire called the Phezzan Dominion, a planet-state (city-state on a galactic scale) which trades with both warring powers. There is also a Terraism cult, which claims that humans should go back to Earth, gaining popularity throughout the galaxy. The story frequently switches away from the main heroes to the Unknown Soldier fighting for his life on the battlefield.', 18, 0),
(4, 'Ookami to Koushinryou', 0, 0, 'Finished', '2006-02-10', '2016-10-10', 18, 106, 'Adventure, Drama, Fantasy, Historical, Romance, Supernatural', 'The life of a traveling merchant is a lonely one, a fact with which Kraft Lawrence is well acquainted. Wandering from town to town with just his horse, cart, and whatever wares have come his way, the peddler has pretty well settled into his routine—that is, until the night Lawrence finds a wolf goddess asleep in his cart. Taking the form of a fetching girl with wolf ears and a tail, Holo has wearied of tending to harvests in the countryside and strikes up a bargain with the merchant to lend him the cunning of "Holo the Wisewolf" to increase his profits in exchange for taking her along on his travels. What kind of businessman could turn down such an offer? Lawrence soon learns, though, that having an ancient goddess as a traveling companion can be a bit of a mixed blessing. Will this wolf girl turn out to be too wild to tame?', 22, 10),
(5, 'Hataraku Maou-sama!', 0, 0, 'Publishing', '2011-02-10', '0000-00-00', 0, 0, 'Comedy, Demons, Fantasy, Romance, Supernatural', 'Devil King Sadao is only one step away from conquering the world when he is beaten by Hero Emilia and forced to drift to the other world: modern-day Tokyo. As "conquering the world" are the only skills the Devil King possesses—and are obviously unnecessary in his new situation—he must work as a freeter to pay for his living expenses!', 23, 11),
(6, 'Kono Subarashii Sekai ni Shukufuku wo!', 0, 0, 'Publishing', '2013-10-01', '0000-00-00', 0, 0, 'Adventure, Comedy, Fantasy, Romance, Harem, Supernatural', 'The life of Satou Kazuma, a hikikomori who likes games, all too soon came to an end because of a traffic accident... It was supposed to, but when he woke up, a beautiful girl who called herself a goddess was in front of his eyes. "Hey, I have got something a little nice for you. Wanna go to another world? You can take only one thing of your choice along with you." "...then I\'ll take you." From here on, the great adventure of subjugating the Demon King will begin for the reincarnated Kazuma... Or so one would think, but it\'s the labor for obtaining food, clothing and shelter that begins! Despite Kazuma wanting to live in peace, the goddess keeps causing problems one after another, and eventually, they attract the attention of the Demon King\'s army!?', 24, 11),
(7, 'Mushoku Tensei: Isekai Ittara Honki Dasu', 0, 0, 'Publishing', '2014-01-23', '0000-00-00', 0, 0, 'Fantasy', 'A 34-year-old NEET gets killed in a traffic accident and finds himself in a world of magic. Rather than waking up as a full-grown mage, he gets reincarnated as a newborn baby, retaining the memories of his past life. Before he can even properly move his body, he resolves to never make the same mistakes he made in his first life ever again and instead live a life with no regrets with the new one that was given to him. Because he has the knowledge of a middle-aged man, by the age of two, he has already become a magical prodigy and possesses power unthinkable for anyone his age and even older. Thus begins the chronicles of Rudeus Greyrat, son of swordsman Paul and healer Zenith, as he enters a new world to become the strongest mage known to man, with powers rivaling even the gods themselves.', 0, 19),
(8, 'Only Sense Online', 0, 0, 'Publishing', '2014-04-19', '0000-00-00', 0, 0, 'Action, Fantasy, Game, Sci-Fi', 'Utilizing a system called "Sense," each player aims to create their unique character in the VRMMORPG "Only Sense Online." Joining this realm is Yun, an absolute beginner in the world of gaming, equipped with some of the worst customized "Sense" ever. While his two sisters, both veterans in this world, criticize his choices of equipment, he continues to delve into the skill sets he has acquired. Along his way, he meets the art of "production" and people that have mastered this art. Watch as a total novice creates a revolution in the gaming world and create the "ultimate" support class.', 0, 0),
(9, 'Utsuro no Hako to Zero no Maria', 0, 0, 'Finished', '2009-01-10', '2015-06-10', 7, 40, 'Action, Mystery, Drama, Horror, Romance, School, Supernatural, Psychological, Thriller', 'Kazuki Hoshino values his everyday life above all else. He spends the days carefree with his friends at school, until the uneventful bliss suddenly comes to a halt with the transfer of the aloof beauty Aya Otonashi into his class and her cold, dramatic statement to him immediately upon arrival: "I\'m here to break you. This is my 13,118th school transfer, and even I can\'t help but reach the end of my tether after so many iterations. So for a change of pace, I\'ll declare war this time." And with those puzzling words, the ordinary days that Kazuki loved so dearly become a cycle of turmoil and fear—Aya\'s sudden appearance signals the unraveling of unseen mysteries surrounding Kazuki\'s seemingly normal friends, including the discovery of mysterious devices known as "boxes."', 0, 0)
;
UNLOCK TABLES;


-- Define `aml`.`director` table

DROP TABLE IF EXISTS `aml`.`director`;
CREATE TABLE `aml`.`director` (
`direct_id` smallint(6) NOT NULL default '0',
`first_name` char(15) default NULL,
`last_name` char(15) default NULL,
`dob` date default NULL,
PRIMARY KEY (`direct_id`)
);

-- Add data to `aml`.`director` table

LOCK TABLES `director` WRITE;
INSERT INTO `aml`.`director` VALUES
(0, NULL, NULL, '0000-00-00'),
(1, 'Akiyuki', 'Shinbou', '1961-09-27'),
(2, 'Tatsuya', 'Ishihara', '1966-07-31'),
(3, 'Naoko', 'Yamada', '1984-11-28'),
(4, 'Yoichi', 'Fujita', '0000-00-00'),
(5, 'Makoto', 'Shinkai', '1973-02-09'),
(6, 'You', 'Yoshinari', '1971-05-06'),
(7, 'Norihiro', 'Naganuma', '0000-00-00'),
(8, 'Kazuya', 'Tsurumaki', '1966-02-02'),
(9, 'Yasuhiro', 'Takemoto', '1972-05-04'),
(10, 'Hiroyuki', 'Kakudou', '1959-09-28'),
(11, 'Masaharu', 'Watanabe', '0000-00-00'),
(12, 'Ryouhei', 'Takeshita', '0000-00-00'),
(13, 'Takao', 'Kato', '1963-00-00'),
(14, 'Mamoru', 'Oshii', '1951-08-08'),
(15, 'Yasuhiro', 'Yoshiura', '1980-00-00'),
(16, 'Akira', 'Amemiya', '0000-00-00'),
(17, 'Noboru', 'Ishiguro', '1938-08-24'),
(18, 'Kiyotaka', 'Oshiyama', '0000-00-00'),
(19, 'Hayao', 'Miyazaki', '1941-05-01'),
(20, 'Takeo', 'Takahashi', '0000-00-00'),
(21, 'Naoto', 'Hosoda', '0000-00-00'),
(22, 'Takaomi', 'Kanasaki', '0000-00-00')
;
UNLOCK TABLES;


-- Define `aml`.`actor` table

DROP TABLE IF EXISTS `aml`.`actor`;
CREATE TABLE `aml`.`actor` (
`actor_id` smallint(6) NOT NULL default '0',
`first_name` char(15) default NULL,
`last_name` char(15) default NULL,
`dob` date default NULL,
PRIMARY KEY (`actor_id`)
);

-- Add data to `aml`.`actor` table

LOCK TABLES `actor` WRITE;
INSERT INTO `aml`.`actor` VALUES
(0, NULL, NULL, '0000-00-00'),
(1, 'Chiwa', 'Saito', '1981-03-12'),
(2, 'Aoi', 'Yuuki', '1992-03-27'),
(3, 'Emiri', 'Katou', '1983-11-26'),
(4, 'Eri', 'Kitamura', '1987-08-16'),
(5, 'Ai', 'Nonoka', '1981-06-08'),
(6, 'Kaori', 'Mizuhashi', '1974-08-28'),
(7, 'Mariko', 'Honda', '1986-10-03'),
(8, 'Misuzu', 'Togashi', '1986-08-07'),
(9, 'Mai', 'Aizawa', '1980-08-21'),
(10, 'Minoru', 'Shiraishi', '1978-10-18'),
(11, 'Shizuka', 'Furuya', '0000-12-26'),
(12, 'Hiromi', 'Konno', '1975-09-13'),
(13, 'Miyu', 'Irino', '1988-02-19'),
(14, 'Saori', 'Hayami', '1991-05-29'),
(15, 'Rie', 'Kugamiya', '1979-05-30'),
(16, 'Tomokazu', 'Sugita', '1980-10-11'),
(17, 'Daisuke', 'Sakaguchi', '1973-10-11'),
(18, 'Mone', 'Kamishiraishi', '1998-01-27'),
(19, 'Ryunosuke', 'Kamiki', '1993-05-19'),
(20, 'Yoko', 'Hikasa', '1985-07-16'),
(21, 'Megumi', 'Han', '1989-06-03'),
(22, 'Michiyo', 'Murase', '000-02-28'),
(23, 'Fumiko', 'Orikasa', '1974-12-27'),
(24, 'Ryouta', 'Takeuchi', '1982-09-22'),
(25, 'Atsumi', 'Tanezaki', '0000-09-27'),
(26, 'Mayumi', 'Shintani', '1975-11-06'),
(27, 'Jun', 'Mizuki', '1973-02-12'),
(28, 'Izumi', 'Kasagi', '1976-01-04'),
(29, 'Maria', 'Naganawa', '1995-08-05'),
(30, 'Mutsumi', 'Tamura', '1987-06-19'),
(31, 'Yuuki', 'Kuwahara', '1991-06-24'),
(32, 'Chika', 'Sakamoto', '1957-08-17'),
(33, 'Mayumi', 'Yamaguchi', '1975-05-12'),
(34, 'Junko', 'Takeuchi', '1972-04-05'),
(35, 'Yuuto', 'Kazama', '1970-09-30'),
(36, 'Umi', 'Tenjin', '0000-03-25'),
(37, 'Masami', 'Kikuchi', '1960-04-24'),
(38, 'Kinoko', 'Yamada', '1970-07-31'),
(39, 'Miwa', 'Matsumoto', '1971-12-15'),
(40, 'Atori', 'Shigematsu', '0000-06-28'),
(41, 'Ai', 'Maeda', '1975-04-19'),
(42, 'Yuka', 'Tokomitsu', '1969-10-02'),
(43, 'Hiroko', 'Konishi', '1975-10-26'),
(44, 'Yuuko', 'Mizutani', '1964-11-04'),
(45, 'Takahiro', 'Sakurai', '1974-07-13'),
(46, 'Toshiko', 'Fujita', '1950-04-05'),
(47, 'Kae', 'Araki', '1966-11-06'),
(48, 'Rie', 'Takahashi', '1994-02-27'),
(49, 'Yuusuke', 'Kobayashi', '1985-03-25'),
(50, 'Yuuki', 'Ono', '1984-06-22'),
(51, 'Mai', 'Nakahara', '1981-02-23'),
(52, 'Nobuhiko', 'Okamoto', '1986-10-24'),
(53, 'Yuuichi', 'Nakamura', '1980-02-20'),
(54, 'Ari', 'Ozawa', '1992-08-10'),
(55, 'Miyuki', 'Sawashiro', '1985-06-02'),
(56, 'Ryouhei', 'Kimura', '1984-07-30'),
(57, 'Haruka', 'Tomatsu', '1990-02-04'),
(58, 'Sayuri', 'Yahagi', '1986-09-22'),
(59, 'Akeno', 'Watanabe', '1982-11-18'),
(60, 'Akio', 'Ootsuka', '1959-11-24'),
(61, 'Maaya', 'Sakamoto', '1980-03-31'),
(62, 'Iemasa', 'Kayumi', '1932-10-31'),
(63, 'Kouichi', 'Yamadera', '1961-06-17')

;
UNLOCK TABLES;


-- Define `aml`.`character` table

DROP TABLE IF EXISTS `aml`.`character`;
CREATE TABLE `aml`.`character` (
`char_id` smallint(6) NOT NULL default '0',
`first_name` char(15) default NULL,
`last_name` char(15) default NULL,
`age` smallint(6) NOT NULL default '0',
`dob` date default NULL,
`voice_id` smallint(6) NOT NULL default '0',
`in_anime_id` smallint(6) NOT NULL default '0',
`in_manga_id` smallint(6) NOT NULL default '0',
`in_novel_id` smallint(6) NOT NULL default '0',
PRIMARY KEY (`char_id`)/*,
KEY `FK_char1` (`voice_id`),
KEY `FK_char2` (`in_anime_id`),
KEY `FK_char3` (`in_manga_id`),
KEY `FK_char4` (`in_novel_id`),
CONSTRAINT `FK_char1` FOREIGN KEY (`voice_id`) REFERENCES `actor` (`actor_id`),
CONSTRAINT `FK_char2` FOREIGN KEY (`in_anime_id`) REFERENCES `anime` (`anime_id`),
CONSTRAINT `FK_char3` FOREIGN KEY (`in_manga_id`) REFERENCES `manga` (`manga_id`),
CONSTRAINT `FK_char4` FOREIGN KEY (`in_novel_id`) REFERENCES `novel` (`novel_id`)*/
);

-- Add data to `aml`.`character` table

LOCK TABLES `character` WRITE;
INSERT INTO `aml`.`character` VALUES
(0, NULL, NULL, 0, '0000-00-00', 0, 0, 0, 0),
(1, 'Homura', 'Akemi', 14, '0000-02-22', 1, 1, 0, 0),
(2, 'Madoka', 'Kaname', 14, '0000-10-03', 2, 1, 0, 0),
(3, 'Kyuubey', NULL, 0, '0000-00-00', 3, 1, 0, 0),
(4, 'Sayaka', 'Miki', 14, '0000-09-20', 4, 1, 0, 0),
(5, 'Kyouko', 'Sakura', 0, '0000-05-09', 5, 1, 0, 0),
(6, 'Mami', 'Tomoe', 0, '0000-06-05', 6, 1, 0, 0),
(7, 'Yuuko', 'Aioi', 16, '0000-05-26', 7, 2, 1, 0),
(8, 'Mai', 'Minakami', 0, '0000-00-00', 8, 2, 1, 0),
(9, 'Mio', 'Naganohara', 16, '0000-00-00', 9, 2, 1, 0),
(10, 'Sakamoto', NULL, 20, '0000-00-00', 10, 2, 1, 0),
(11, 'Nano', 'Shinonome', 1, '0000-02-07', 11, 2, 1, 0),
(12, 'Hakase', 'Shinonome', 8, '0000-00-00', 12, 2, 1, 0),
(13, 'Shouya', 'Ishida', 0, '0000-00-00', 13, 3, 2, 0),
(14, 'Nishimiya', 'Shouko', 0, '0000-00-00', 14, 3, 2, 0),
(15, 'Kagura', NULL, 14, '0000-11-03', 15, 4, 3, 0),
(16, 'Gintoki', 'Sakata', 0, '0000-10-10', 16, 4, 3, 0),
(17, 'Shinpachi', 'Shimura', 16, '0000-08-12', 17, 4, 3, 0),
(18, 'Mitsuha', 'Miyamizu', 17, '0000-04-28', 18, 5, 0, 0),
(19, 'Taki', 'Tachibana', 17, '0000-05-09', 19, 5, 0, 0),
(20, 'Diana', 'Cavendish', 0, '0000-00-00', 20, 6, 0, 0),
(21, 'Atsuko', 'Kagari', 0, '0000-00-00', 21, 6, 0, 0),
(22, 'Sucy', 'Manbavaran', 0, '0000-00-00', 22, 6, 0, 0),
(23, 'Lotte', 'Yansson', 0, '0000-00-00', 23, 6, 0, 0),
(24, 'Elias', 'Ainsworth', 0, '0000-00-00', 24, 7, 4, 0),
(25, 'Chise', 'Hatori', 0, '0000-00-00', 25, 7, 4, 0),
(26, 'Violet', 'Evergarden', 0, '0000-00-00', 0, 8, 0, 1),
(27, 'Haruko', 'Haruharu', 19, '0000-00-00', 26, 9, 0, 0),
(28, 'Naota', 'Nandaba', 12, '0000-00-00', 27, 9, 0, 0),
(29, 'Mamimi', 'Samejima', 17, '0000-00-00', 28, 9, 0, 0),
(30, 'Kanna', 'Kamui', 0, '0000-00-00', 29, 10, 5, 0),
(31, 'Kobayashi', NULL, 0, '0000-00-00', 30, 10, 5, 0),
(32, 'Tooru', NULL, 0, '0000-00-00', 31, 10, 5, 0),
(33, 'Agumon', NULL, 0, '0000-00-00', 32, 11, 0, 0),
(34, 'Gabumon', NULL, 0, '0000-00-00', 33, 11, 0, 0),
(35, 'Gomamon', NULL, 0, '0000-00-00', 34, 11, 0, 0),
(36, 'Yamato', 'Ishida', 11, '1988-00-00', 35, 11, 0, 0),
(37, 'Koushirou', 'Izumi', 10, '1989-11-06', 36, 11, 0, 0),
(38, 'Jou', 'Kido', 11, '1987-00-00', 37, 11, 0, 0),
(39, 'Palmon', NULL, 0, '0000-00-00', 38, 11, 0, 0),
(40, 'Patamon', NULL, 0, '0000-00-00', 39, 11, 0, 0),
(41, 'Piyomon', NULL, 0, '0000-00-00', 40, 11, 0, 0),
(42, 'Mimi', 'Tachikawa', 10, '1989-00-00', 41, 11, 0, 0),
(43, 'Tailmon', NULL, 0, '0000-00-00', 42, 11, 0, 0),
(44, 'Takeru', 'Takaishi', 7, '1991-00-00', 43, 11, 0, 0),
(45, 'Sora', 'Takenouchi', 11, '1988-10-25', 44, 11, 0, 0),
(46, 'Tentomon', NULL, 0, '000-00-00', 45, 11, 0, 0),
(47, 'Taichi', 'Yagami', 11, '1988-00-00', 46, 11, 0, 0),
(48, 'Hikari', 'Yagami', 8, '1991-00-00', 47, 11, 0, 0),
(49, 'Emilia', NULL, 18, '0000-09-23', 48, 12, 0, 2),
(50, 'Subaru', 'Natsuki', 18, '0000-04-01', 49, 12, 0, 2),
(51, 'Masayuki', 'Hori', 17, '0000-11-28', 50, 13, 6, 0),
(52, 'Yuu', 'Kashima', 16, '0000-10-31', 51, 13, 6, 0),
(53, 'Mikoto', 'Mikoshiba', 16, '0000-02-14', 52, 13, 6, 0),
(54, 'Umetaro', 'Nozoki', 17, '0000-06-06', 53, 13, 6, 0),
(55, 'Chiyo', 'Sakura', 16, '0000-03-27', 54, 13, 6, 0),
(56, 'Yuzuki', 'Seo', 16, '0000-07-07', 55, 13, 6, 0),
(57, 'Hirotaka', 'Wakamatsu', 15, '0000-10-03', 56, 13, 6, 0),
(58, 'Lala', 'Deviluke', 16, '0000-07-07', 57, 14, 7, 0),
(59, 'Haruna', 'Sairenji', 16, '0000-03-06', 58, 14, 7, 0),
(60, 'Rito', 'Yuuki', 16, '0000-10-16', 59, 14, 7, 0),
(61, 'Batou', NULL, 0, '0000-00-00', 60, 15, 8, 0),
(62, 'Motoko', 'Kusanagi', 0, '0000-00-00', 61, 15, 8, 0),
(63, 'Project 2501', NULL, 0, '0000-00-00', 62, 15, 8, 0),
(64, 'Togusa', NULL, 0, '0000-00-00', 63, 15, 8, 0),
(65, 'Masakuza', 'Masaki', 0, '0000-00-00', 0, 16, 0, 0),
(66, 'Nagi', NULL, 0, '0000-00-00', 0, 16, 0, 0),
(67, 'Rikuo', 'Sakisaka', 0, '0000-00-00', 0, 16, 0, 0),
(68, 'Sammy', NULL, 0, '0000-00-00', 0, 16, 0, 0),
(69, 'Inferno Cop', NULL, 21, '0000-00-00', 0, 17, 0, 0),
(70, 'Dusty', 'Attenborough', 28, '769-11-23', 0, 18, 0, 3),
(71, 'Frederica', 'Greenhill', 0, '774-02-19', 0, 18, 0, 3),
(72, 'Siegfried', 'Kircheis', 0, '467-01-14', 0, 18, 0, 3),
(73, 'Julian', 'Minci', 0, '782-03-26', 0, 18, 0, 3),
(74, 'Wolfgang', 'Mittermeyer', 0, '0000-00-00', 0, 18, 0, 3),
(75, 'Reinhard', 'von Lohengramm', 0, '467-03-14', 0, 18, 0, 3),
(76, 'Hildegard', 'von Mariendorf', 0, '468-00-00', 0, 18, 0, 3),
(77, 'Paul', 'von Oberstein', 0, '0000-00-00', 0, 18, 0, 3),
(78, 'Oskar', 'von Reuenthal', 0, '458-10-26', 0, 18, 0, 3),
(79, 'Walter', 'von Schenkopp', 0, '0000-00-00', 0, 18, 0, 3),
(80, 'Wenli', 'Yang', 0, '767-04-04', 0, 18, 0 ,3),
(81, 'Cocona', 'Kokomine', 0, '0000-00-00', 0, 19, 0, 0),
(82, 'Papika', NULL, 0, '0000-00-00', 0, 19, 0, 0),
(83, 'Yuzu', 'Aihara', 0, '0000-00-00', 0, 20, 9, 0),
(84, 'Mei', 'Aihara', 0, '0000-00-00', 0, 20, 9, 0),
(85, 'Haku', NULL, 0, '0000-00-00', 13, 21, 0, 0),
(86, 'Chihiro', 'Ogino', 10, '0000-00-00', 0, 21, 0, 0),
(87, 'Holo', NULL, 0, '0000-00-00', 0, 22, 10, 4),
(88, 'Kraft', 'Lawrence', 25, '0000-00-00', 0, 22, 10, 4),
(89, 'Shirou', 'Ashiya', 0, '0000-00-00', 0, 23, 11, 5),
(90, 'Sadao', 'Maou', 0, '0000-00-00', 0, 23, 11, 5),
(91, 'Chiho', 'Sasaki', 0, '0000-00-00', 0, 23, 11, 5),
(92, 'Emi', 'Yusa', 0, '0000-00-00', 20, 23, 11, 5),
(93, 'Aqua', NULL, 0, '0000-00-00', 0, 24, 12, 6),
(94, 'Darkness', NULL, 18, '0000-00-00', 0, 24, 12, 6),
(95, 'Megumin', NULL, 13, '0000-00-00', 48, 24, 12, 6),
(96, 'Kazuma', 'Satou', 16, '0000-00-00', 0, 24, 12, 6),
(97, 'Asagi', 'Ayase', 0, '0000-00-00', 0, 0, 13, 0),
(98, 'Ena', 'Ayase', 0, '0000-00-00', 0, 0, 13, 0),
(99, 'Fuuka', 'Ayase', 16, '0000-00-00', 0, 0, 13, 0),
(100, 'Yotsuba', 'Koiwai', 5, '0000-00-00', 0, 0, 13, 0),
(101, 'Yousuke', 'Koiwai', 0, '0000-00-00', 0, 0, 13, 0),
(102, 'Takashi', 'Takeda', 0, '0000-00-00', 0, 0, 13, 0),
(103, 'Punpun', 'Onodera', 0, '0000-00-00', 0, 0, 14, 0),
(104, 'Aiko', 'Tanaka', 0, '0000-00-00', 0, 0, 14, 0),
(105, 'Alpha', 'Hatsuseno', 0, '0000-00-00', 0, 0, 15, 0),
(106, 'Yuuhi', 'Amamiya', 0, '00000-00-00', 0, 0, 16, 0),
(107, 'Samidare', 'Asahina', 0, '0000-00-00', 0, 0, 16, 0),
(108, 'Akiko', 'Oohashi', 0, '0000-08-22', 0, 0, 17, 0),
(109, 'Mariko', 'Kumakura', 0, '0000-02-20', 0, 0, 17, 0),
(110, 'Kaori', 'Hayasaka', 0, '0000-04-16', 0, 0, 18, 0),
(111, 'Mafuyu', 'Kurosaki', 0, '0000-12-21', 0, 0, 18, 0),
(112, 'Takaommi', 'Saeki', 0, '0000-08-12', 0, 0, 18, 0),
(113, 'Rudeus', 'Greyrat', 0, '0000-00-00', 0, 0, 19, 7),
(114, 'Eris', 'Greyrat', 0, '0000-00-00', 0, 0, 19, 7),
(115, 'Roxy', 'Migurdia', 0, '0000-00-00', 0, 0, 19, 7),
(116, 'Sylphiette', NULL, 0, '0000-00-00', 0, 0, 19, 7),
(117, 'Magi', NULL, 0, '0000-00-00', 0, 0, 0, 8),
(118, 'Miu', NULL, 0, '0000-00-00', 0, 0, 0, 8),
(119, 'Shizuka', NULL, 0, '0000-00-00', 0, 0, 0, 8),
(120, 'Shun', NULL, 0, '0000-00-00', 0, 0, 0, 8),
(121, 'Takumi', NULL, 0, '0000-00-00', 0, 0, 0, 8),
(122, 'Kazuki', 'Hoshino', 0, '0000-00-00', 0, 0, 0, 9),
(123, 'Kokone', 'Kirino', 0, '0000-00-00', 0, 0, 0, 9),
(124, 'Kasumi', 'Mogi', 0, '0000-00-00', 0, 0, 0, 9),
(125, 'O', NULL, 0, '0000-00-00', 0, 0, 0, 9),
(126, 'Daiya', 'Oomine', 0, '0000-00-00', 0, 0, 0, 9),
(127, 'Maria', 'Otonashi', 0, '0000-00-00', 0, 0, 0, 9)
;


-- Define `aml`.`author` table

DROP TABLE IF EXISTS `aml`.`author`;
CREATE TABLE `aml`.`author` (
`author_id` smallint(6) NOT NULL default '0',
`first_name` char(15) default NULL,
`last_name` char(15) default NULL,
`dob` date default NULL,
PRIMARY KEY (`author_id`)
);

-- Add data to `aml`.`author` table

LOCK TABLE `author` WRITE;
INSERT INTO `aml`.`author` VALUES
(0, NULL, NULL, NULL, '0000-00-00'),
(1, 'Keiichi', 'Arawi', '1977-12-29'),
(2, 'Yoshitoki', 'Ooima', '1989-03-15'),
(3, 'Hideaki', 'Sorachi', '1979-05-25'),
(20, 'Kana', 'Akatsuki', '0000-00-00')
;


-- Define `aml`.`artist` table

DROP TABLES IF EXISTS `aml`.`artist`;
CREATE TABLE `aml`.`artist` (
`artist_id` smallint(6) NOT NULL default '0',
`first_name` char(15) default NULL,
`last_name` char(15) default NULL,
`dob` date default NULL,
PRIMARY KEY (`artist_id`)
);

-- Add data to `aml`.`artist` table

LOCK TABLE `artist` WRITE;
INSERT INTO `aml`.`artist` VALUES
(0, NULL, NULL, '0000-00-00'),
(1, 'Akiko', 'Takase', '0000-00-00')

;

















