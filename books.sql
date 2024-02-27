-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 27, 2024 lúc 01:40 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `library`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `bookid` int(11) NOT NULL,
  `authorid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(55) NOT NULL,
  `ISBN` varchar(25) NOT NULL,
  `pub_year` smallint(6) NOT NULL DEFAULT 0,
  `available` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`bookid`, `authorid`, `title`, `ISBN`, `pub_year`, `available`) VALUES
(49, 18, 'Dinner Guest, The (L\'invité)', '739141305-4', 2000, 1),
(71, 81, 'Point of No Return', '294522043-1', 2005, 1),
(4572, 252, 'Twilight of the Golds, The', '410561879-2', 2011, 0),
(4573, 307, 'Relax... It\'s Just Sex', '269976309-8', 1997, 0),
(4574, 444, 'House on 92nd Street, The', '559130496-6', 2004, 1),
(4575, 298, 'Rich Man\'s Wife, The', '239537205-6', 2004, 0),
(4576, 63, 'Battle for Brooklyn', '357856785-X', 2003, 0),
(4577, 265, 'Winchester \'73', '795171544-1', 1994, 0),
(4578, 206, 'Stowaway', '958873144-5', 1991, 0),
(4579, 114, 'Julius Caesar', '866802575-9', 1986, 0),
(4580, 264, '44 Inch Chest', '557957131-3', 1994, 0),
(4581, 85, 'Klute', '584139938-1', 1999, 1),
(4582, 81, 'Point of No Return', '294522043-1', 2005, 0),
(4583, 171, 'Lion in Winter, The', '975888090-X', 1986, 1),
(4584, 476, 'Holy Flying Circus', '997611665-9', 2006, 0),
(4585, 48, 'Kansas', '450050610-1', 2007, 1),
(4586, 289, 'The Hire: Star, The', '713560974-3', 2006, 0),
(4587, 128, 'Saw IV', '697319714-0', 2002, 1),
(4588, 320, 'Carnosaur 2', '703979901-4', 2001, 0),
(4589, 443, 'White Sands', '958826672-6', 2004, 0),
(4590, 106, 'Peter\'s Friends', '635582278-X', 2004, 0),
(4591, 3, 'Moon Zero Two', '465692518-7', 2001, 0),
(4592, 93, 'Mayor of Hell, The', '392706962-0', 2012, 0),
(4593, 321, 'Tiresia', '110706896-7', 2007, 1),
(4594, 114, 'From Prada to Nada', '050078262-8', 2004, 0),
(4595, 400, 'Khumba', '387431127-9', 1998, 0),
(4596, 451, 'Reel Rock 7 ', '548276811-2', 2010, 1),
(4597, 467, 'Crimes of Passion', '495554159-3', 2012, 1),
(4598, 323, ' Days of Summer', '053161762-9', 2001, 1),
(4599, 496, 'Tropic Thunder', '317385801-8', 1984, 0),
(4600, 422, 'Mary and Max', '843371304-3', 2012, 0),
(4601, 431, 'Fallen', '254568783-9', 1994, 0),
(4602, 21, 'Institute, The', '602338244-4', 2012, 1),
(4603, 5, 'Storm in Summer, A', '893618918-2', 2012, 1),
(4604, 323, 'The Cobbler', '924628242-6', 2013, 1),
(4605, 254, 'Born Rich', '615226529-0', 1984, 1),
(4606, 49, 'Cimarron', '384303845-7', 2001, 1),
(4607, 440, 'Last Voyage, The', '679535026-6', 1992, 0),
(4608, 147, 'Anatahan', '898742828-1', 1994, 1),
(4609, 351, 'Shutter', '458072170-5', 2003, 0),
(4610, 204, 'Saraband', '482722612-1', 2012, 1),
(4611, 291, 'Sense & Sensibility', '839492185-X', 2008, 1),
(4612, 213, 'Griffin and Phoenix', '144571218-0', 1998, 1),
(4613, 203, 'It Felt Like a Kiss', '132630663-4', 2002, 0),
(4614, 274, 'My Family', '932028059-2', 1993, 0),
(4615, 346, 'Boob, The', '242867745-4', 1996, 0),
(4616, 53, 'Impulse', '578668870-4', 2005, 0),
(4617, 392, 'Toast', '470448326-6', 2012, 1),
(4618, 359, 'Hit by Lightning', '557833830-5', 1992, 0),
(4619, 176, 'Quills', '414487941-0', 1987, 1),
(4620, 44, 'Clonehunter', '968981628-4', 2007, 1),
(4621, 142, 'Zero Dark Thirty', '531446187-0', 1994, 1),
(4622, 302, 'Disorder', '652228681-5', 1971, 0),
(4623, 369, 'Life\'s a Breeze', '453021087-1', 2000, 1),
(4624, 236, 'Lady Killer', '208628431-4', 2012, 1),
(4625, 33, 'The Phantom of the Opera', '355504587-3', 2010, 0),
(4626, 362, 'Special Delivery', '701831269-8', 1995, 1),
(4627, 207, 'Alice in Wonderland', '712358210-1', 2010, 1),
(4628, 270, 'Wavelength', '327774319-5', 2000, 0),
(4629, 80, 'Three Musketeers, The', '874990122-2', 1993, 1),
(4630, 430, 'Road Trip: Beer Pong', '317516731-4', 2008, 1),
(4631, 19, 'Upstream', '702903963-7', 1986, 1),
(4632, 201, 'Wings', '717986315-7', 2002, 1),
(4633, 126, 'Rock of Ages', '614262119-1', 2010, 1),
(4634, 129, 'Magic in the Water', '346985852-7', 1993, 1),
(4635, 431, 'Beethoven\'s 5th', '054514589-9', 2002, 1),
(4636, 388, 'Beyond Borders', '201776973-8', 1994, 0),
(4637, 73, 'Bridegroom', '143990956-3', 1996, 1),
(4638, 429, 'Tempest, The', '249933286-7', 1966, 0),
(4639, 251, 'Father of the Bride', '263099845-2', 2006, 1),
(4640, 497, 'First Time, The', '753227501-9', 1998, 0),
(4641, 369, 'Call Girl', '380485459-1', 2009, 0),
(4642, 100, 'Very Potter Sequel, A', '786676946-X', 1994, 0),
(4643, 293, 'A Chinese in a Coma', '810893565-2', 2004, 1),
(4644, 113, 'Miffo', '753991983-3', 2004, 0),
(4645, 20, 'InAPPropriate Comedy', '690905323-0', 1995, 1),
(4646, 354, 'Black Swan', '094315111-2', 1964, 1),
(4647, 331, 'Meet the Robinsons', '801823503-1', 1991, 0),
(4648, 185, 'Jerk, The', '527483998-3', 2003, 0),
(4649, 264, 'I Love Sarah Jane', '768432881-6', 2008, 1),
(4650, 236, 'According to Spencer', '680526063-9', 2008, 1),
(4651, 436, 'Three Strangers', '186558707-9', 1990, 1),
(4652, 363, 'Gordy', '570183367-4', 2010, 0),
(4653, 330, 'Sex Tape', '914495360-7', 2006, 1),
(4654, 185, 'Opposing Force', '799483576-7', 2006, 1),
(4655, 121, '99 francs', '923512097-7', 1992, 0),
(4656, 476, 'Chosin ', '704242420-4', 2004, 1),
(4657, 459, 'Cold Steel', '663976656-6', 1995, 0),
(4658, 413, 'The Violent Kind', '976839259-2', 2006, 1),
(4659, 334, 'Elevator', '583671059-7', 1993, 0),
(4660, 455, 'Home Room', '497113798-X', 1992, 1),
(4661, 223, 'Antboy', '518723387-4', 1996, 0),
(4662, 356, 'Linsanity', '950068931-6', 2008, 1),
(4663, 109, 'Black Rainbow', '159563709-5', 2012, 0),
(4664, 27, 'Demolition Man', '857311102-X', 2001, 1),
(4665, 464, 'Trixie', '620142708-2', 2008, 1),
(4666, 104, 'Are We Done Yet?', '584117182-8', 2004, 1),
(4667, 92, 'Big Street, The', '162392016-7', 1986, 0),
(4668, 29, 'Ghost Dad', '949042304-1', 2006, 0),
(4669, 68, 'Biker Boyz', '139243838-1', 2008, 1),
(4670, 371, 'Dark Knight, The', '928104642-3', 1989, 1),
(4671, 183, 'Bohème, La', '416747129-9', 1991, 1),
(4672, 385, 'Opposite Day', '451588459-X', 2007, 0),
(4673, 202, 'Grass Is Greener, The', '715033589-6', 1999, 1),
(4674, 97, 'X-Men', '527836352-5', 1999, 1),
(4675, 253, 'Grown Ups', '696014087-0', 2009, 1),
(4676, 384, 'Cobra Verde', '538274670-2', 1996, 0),
(4677, 456, 'Bernard and Doris', '685358974-2', 1994, 0),
(4678, 263, 'Gimme the Loot', '762239542-0', 2012, 1),
(4679, 279, 'Trial', '734010313-9', 1996, 0),
(4680, 178, 'Track of the Cat', '309571065-8', 1997, 0),
(4681, 203, 'Tombstone', '841940927-8', 1995, 0),
(4682, 449, 'Ten Minutes Older', '884494638-6', 1992, 0),
(4683, 449, 'Labyrinth', '565315369-9', 2012, 1),
(4684, 382, 'Song Is Born, A', '230957031-1', 2000, 1),
(4685, 483, 'Majority of One, A', '651949035-0', 2007, 0),
(4686, 202, 'Orpheus (Orphée)', '864643411-7', 2006, 1),
(4687, 75, 'Gracie\'s Choice', '265148262-5', 2003, 1),
(4688, 472, 'Men, The', '160651443-1', 1992, 1),
(4689, 123, 'Judgment in Berlin', '743304407-8', 2001, 1),
(4690, 394, 'Subspecies', '256256338-7', 2007, 1),
(4691, 331, 'Leonard Part 6', '942930382-1', 1993, 0),
(4692, 378, 'The Living Idol', '559769138-4', 2000, 0),
(4693, 211, 'Objectified', '407589911-X', 1994, 0),
(4694, 228, 'Above the Rim', '958231583-0', 2007, 1),
(4695, 306, 'Mountain Men, The', '211292806-6', 1997, 0),
(4696, 89, 'Man of the House', '975101840-4', 2000, 1),
(4697, 149, 'Big Empty, The', '421936001-8', 1993, 1),
(4698, 461, 'Ransom', '073144708-5', 1993, 1),
(4699, 62, 'Trash', '183926647-3', 2002, 0),
(4700, 84, 'Playing It Cool', '485861750-5', 1993, 1),
(4701, 98, 'Suspicion', '551308216-0', 2003, 1),
(4702, 322, 'Boy Meets Girl', '552447253-4', 1995, 1),
(4703, 310, 'Talk to Me', '321905774-8', 2009, 0),
(4704, 270, 'Taking Lives', '902067186-3', 1984, 1),
(4705, 375, 'American Pie', '168550152-4', 2009, 1),
(4706, 478, 'Our Man Flint', '213620851-9', 2009, 1),
(4707, 236, 'Resolution', '764436228-2', 2002, 0),
(4708, 276, 'The Smiling Ghost', '047658150-8', 1989, 1),
(4709, 163, 'Remember the Titans', '417693939-7', 2001, 0),
(4710, 141, 'Graffiti Bridge', '227624089-X', 1997, 1),
(4711, 435, 'We Cause Scenes', '846102848-1', 1996, 1),
(4712, 238, 'Looking for Lenny ', '774598295-2', 1968, 0),
(4713, 98, 'Aloft', '687429620-5', 2009, 1),
(4714, 8, 'Mountains of the Moon', '267257657-2', 1997, 0),
(4715, 100, 'Thampu', '942875452-8', 2011, 1),
(4716, 104, 'Alien Escape', '346118704-6', 2010, 0),
(4717, 281, 'Raven, The', '286195023-4', 2005, 1),
(4718, 446, 'Baron of Arizona, The', '376918022-4', 2007, 1),
(4719, 199, 'Borrowers, The', '473636941-8', 2003, 1),
(4720, 47, 'Wanted: Dead or Alive', '657269184-5', 1993, 0),
(4721, 436, 'Fireproof', '867904881-X', 2003, 0),
(4722, 35, 'Jaws 3-D', '686726163-9', 1999, 1),
(4723, 196, 'Brighton Beach Memoirs', '019604440-5', 2004, 0),
(4724, 416, 'Don\'t Come Knocking', '151800438-5', 1996, 0),
(4725, 442, 'Weight of Water, The', '853748402-4', 1995, 0),
(4726, 278, 'Flow', '581517892-6', 2007, 0),
(4727, 266, 'Melvin Goes to Dinner', '644834039-4', 2009, 1),
(4728, 461, 'Glass Key, The', '270077876-6', 1974, 0),
(4729, 73, 'Walk Like a Man', '473510428-3', 2012, 0),
(4730, 95, 'Trade', '031890399-7', 1984, 1),
(4731, 64, 'Sterile Cuckoo, The', '723186601-8', 2009, 1),
(4732, 272, 'Captain Kidd', '619487441-4', 1989, 0),
(4733, 107, 'Cell 2, The', '385280042-0', 2005, 0),
(4734, 10, 'Ride the High Country', '145913209-2', 1999, 0),
(4735, 98, 'Cannonball Run II', '656427623-0', 1993, 1),
(4736, 85, 'Gardens of the Night', '375611628-X', 1997, 1),
(4737, 317, 'The Forest', '709530660-5', 1992, 0),
(4738, 142, 'Event, The', '280770889-7', 2002, 1),
(4739, 153, 'Hitting Home', '792282476-9', 2003, 0),
(4740, 421, 'Pride and Prejudice', '189059926-3', 1994, 1),
(4741, 131, 'Toll of the Sea, The', '816348680-5', 2009, 1),
(4742, 353, 'Coneheads', '086693272-0', 1992, 0),
(4743, 347, 'The Strength of Water', '361936068-5', 1995, 1),
(4744, 314, 'You Can Count on Me', '325398136-3', 1984, 1),
(4745, 400, 'Valley of the Dragons', '757821091-2', 1996, 0),
(4746, 359, 'Theodora Goes Wild', '017897448-X', 1985, 0),
(4747, 201, 'Wrong Turn 4', '630932884-0', 2003, 1),
(4748, 259, 'Erkan & Stefan 3', '910352913-4', 2004, 1),
(4749, 406, 'Mindwarp', '172440263-3', 2004, 1),
(4750, 375, 'Rage in Heaven', '390436284-4', 2011, 1),
(4751, 102, 'Nutty Professor, The', '072167665-0', 1989, 1),
(4752, 413, 'Dragonquest', '708527898-6', 1995, 0),
(4753, 268, 'The Retrieval', '623837862-X', 2006, 0),
(4754, 172, 'Happy Feet', '409762117-3', 2010, 0),
(4755, 322, 'Rise', '791185404-1', 2008, 0),
(4756, 364, 'Miss Firecracker', '305392095-6', 2003, 1),
(4757, 241, 'Beautiful Boxer', '892845288-0', 2010, 0),
(4758, 191, 'Rosa Luxemburg', '348469018-6', 2001, 1),
(4759, 319, 'Faust', '990707587-6', 1986, 0),
(4760, 355, 'New Leaf, A', '997366388-8', 2012, 1),
(4761, 412, 'Crowd, The', '256296123-4', 2001, 1),
(4762, 297, 'No Man of Her Own', '266387516-3', 1995, 0),
(4763, 432, 'While She Was Out', '578723910-5', 2005, 1),
(4764, 172, 'Saving General Yang', '496978000-5', 1990, 0),
(4765, 22, 'Days of Wine and Roses', '396165526-X', 2007, 1),
(4766, 470, 'Village of the Damned', '212945340-6', 2003, 0),
(4767, 490, 'Here Comes Mr. Jordan', '174651065-X', 2007, 0),
(4768, 135, 'Ghost Adventures', '554448179-2', 1993, 1),
(4769, 98, 'It\'s in the Water', '815707363-4', 2001, 0),
(4770, 44, 'Animal, The', '992257944-8', 1988, 0),
(4771, 312, 'Statue of Liberty, The', '340889442-6', 2010, 1),
(4772, 151, 'Postal', '616231726-9', 2004, 0),
(4773, 171, 'Tanguy', '072166409-1', 1996, 0),
(4774, 447, 'Benny & Joon', '252746031-3', 2004, 0),
(4775, 333, 'Addams Family Reunion', '801509837-8', 2011, 1),
(4776, 425, 'Deep End', '254493412-3', 1986, 0),
(4777, 220, 'Sapphires, The', '792137480-8', 1992, 0),
(4778, 200, 'Gold Raiders', '149199634-X', 1994, 1),
(4779, 69, 'Out in the Dark', '153852646-8', 2009, 0),
(4780, 361, 'Communion', '519199733-6', 2000, 0),
(4781, 254, 'The Key', '269552354-8', 2012, 0),
(4782, 354, 'Cloud 9', '460041627-9', 2012, 0),
(4783, 116, 'In Your Eyes', '671533322-X', 1967, 0),
(4784, 100, 'Staten Island', '617388614-6', 1982, 0),
(4785, 237, 'The Seven Males', '301554121-8', 1998, 1),
(4786, 55, 'Ping Pong Summer', '718723522-4', 1994, 0),
(4787, 70, 'Little Romance, A', '879764000-X', 2000, 1),
(4788, 87, 'Run Silent Run Deep', '407234438-9', 2012, 1),
(4789, 399, 'Deewaar', '456114559-1', 2009, 0),
(4790, 319, 'Crashing', '311730391-X', 2006, 1),
(4791, 260, 'The Sword and the Rose', '892449937-8', 1995, 1),
(4792, 286, 'Knick Knack', '398477556-3', 1998, 1),
(4793, 109, 'Sydney (Hard Eight)', '673508938-3', 1978, 1),
(4794, 306, 'Mata Hari', '906162429-0', 1984, 1),
(4795, 254, 'Sands of Iwo Jima', '682520167-0', 2001, 0),
(4796, 150, 'Red Angel (Akai tenshi)', '909191539-0', 1990, 0),
(4797, 91, 'Little Mermaid, The', '823595007-3', 1983, 0),
(4798, 423, 'Forks Over Knives', '622597181-5', 2002, 0),
(4799, 3, 'On the Ropes', '079331948-X', 1996, 0),
(4800, 183, 'I Am You (In Her Skin)', '992503837-5', 2005, 1),
(4801, 160, 'Tank', '670349505-X', 2006, 0),
(4802, 175, 'A Good Marriage', '511794704-5', 2007, 1),
(4803, 36, 'Damnation Alley', '888951141-9', 2009, 1),
(4804, 236, 'Bunraku', '072307508-5', 1993, 0),
(4805, 4, 'In the Fog (V tumane)', '708173855-9', 1993, 0),
(4806, 368, 'Dirty Sanchez: The Movie', '001007967-X', 2006, 1),
(4807, 415, 'Holly', '069061126-9', 1989, 1),
(4808, 317, 'Beach Red', '893364730-9', 2001, 1),
(4809, 44, 'Disorganized Crime', '808249629-0', 2009, 0),
(4810, 15, 'Can\'t Stop the Music', '846213897-3', 1993, 0),
(4811, 76, 'Mission: Impossible II', '534454060-4', 1997, 0),
(4812, 375, 'Source, The', '343468622-3', 2010, 1),
(4813, 477, 'Twin Town', '099149731-7', 2009, 1),
(4814, 148, 'Shock Doctrine, The', '050373844-1', 2001, 0),
(4815, 484, 'It Happened One Night', '501055429-1', 2006, 1),
(4816, 115, 'Cottage, The', '048183108-8', 1992, 1),
(4817, 203, 'Somewhere in Time', '170086499-8', 1985, 0),
(4818, 338, 'Ping Pong', '885283112-6', 1998, 0),
(4819, 317, 'Pocket Money', '142598370-7', 2010, 0),
(4820, 67, 'Premium Rush', '799718923-8', 1969, 0),
(4821, 64, 'Temptation (Tentação)', '409975905-9', 2009, 1),
(4822, 109, 'Woo', '288336365-X', 2010, 0),
(4823, 388, 'Winning Team, The', '799159635-4', 1998, 1),
(4824, 472, 'Pathfinder (Ofelas)', '104986257-0', 2012, 0),
(4825, 216, 'Great Waldo Pepper, The', '599129362-7', 1992, 0),
(4826, 415, 'True Heart Susie', '012530792-6', 1998, 1),
(4827, 41, 'Alexander the Great', '656570328-0', 1995, 0),
(4828, 218, 'Spider-Man', '308833346-1', 2004, 1),
(4829, 494, 'Travelling Salesman', '067034039-1', 1995, 0),
(4830, 363, 'Liability, The', '585300247-3', 1996, 0),
(4831, 405, 'Road, The', '263587404-2', 2005, 1),
(4832, 351, 'Hangover, The', '308101483-2', 1996, 1),
(4833, 195, 'Most Wanted', '508986492-6', 1998, 1),
(4834, 396, 'One, Two, Three', '339146532-8', 2010, 0),
(4835, 445, 'Upstream Color', '717427133-2', 2012, 1),
(4836, 61, 'Liliom', '821733272-X', 1955, 0),
(4837, 472, 'C.H.U.D.', '486848988-7', 1992, 1),
(4838, 428, 'Hereafter', '082022882-6', 2010, 1),
(4839, 370, 'God Grew Tired of Us', '522700125-1', 1986, 0),
(4840, 64, 'Deep Sea 3D', '355308852-4', 2003, 0),
(4841, 331, 'Eat', '951058699-4', 2002, 0),
(4842, 385, 'Lords of Discipline, The', '831187833-1', 1992, 1),
(4843, 226, 'Infidel, The', '093375338-1', 1996, 1),
(4844, 64, 'Secret Life of Zoey, The', '846821188-5', 1994, 0),
(4845, 298, 'Almost You', '613017075-0', 1989, 1),
(4846, 30, 'Madigan', '145183274-5', 1990, 0),
(4847, 243, 'Movie Crazy', '848515747-8', 1980, 0),
(4848, 432, 'Our Daily Bread', '169498883-X', 1989, 1),
(4849, 394, 'Valiant', '359164658-X', 2009, 1),
(4850, 144, 'Suzy', '083816176-6', 2000, 1),
(4851, 272, 'Family Stone, The', '489342069-0', 1995, 1),
(4852, 277, 'Hits', '290181991-5', 2010, 1),
(4853, 155, 'Unbeatable (Ji zhan)', '447109033-X', 1996, 1),
(4854, 133, 'Johnny Tremain', '636844833-4', 2004, 1),
(4855, 92, 'Savior', '191841037-2', 2006, 1),
(4856, 128, 'Order, The', '074649326-6', 2005, 1),
(4857, 353, 'Little Manhattan', '129936396-2', 1968, 0),
(4858, 280, 'Texas', '363150974-X', 2010, 0),
(4859, 222, 'Coming Apart', '783017120-3', 2012, 1),
(4860, 319, 'First Men in the Moon', '516323886-8', 1994, 0),
(4861, 2, 'Liv & Ingmar', '061351131-X', 2010, 1),
(4862, 280, 'Hornets\' Nest', '950805996-6', 1997, 1),
(4863, 149, 'Mariachi, El', '623261684-7', 1992, 0),
(4864, 135, 'Coriolanus', '798473941-2', 2005, 0),
(4865, 33, 'Daylight', '791517214-X', 2003, 1),
(4866, 7, 'Desert Blue', '483608839-9', 1990, 0),
(4867, 32, 'Tarzan the Fearless', '301742527-4', 2012, 0),
(4868, 370, 'Dreamgirls', '567541329-4', 1993, 0),
(4869, 273, 'Vollidiot', '397417736-1', 1983, 0),
(4870, 116, 'Predestination', '586255429-7', 2007, 1),
(4871, 206, 'Scar', '640973201-5', 2005, 1),
(4872, 470, 'Gimme the Loot', '891650587-9', 2005, 1),
(4873, 142, 'I Love Your Work', '731206302-0', 2008, 1),
(4874, 210, 'Computer Chess', '566153418-3', 1997, 0),
(4875, 9, 'Standing Still', '179674329-1', 1998, 0),
(4876, 252, 'Laurence Anyways', '147969070-8', 2004, 0),
(4877, 221, 'Surrender, Dorothy', '497211751-6', 1990, 1),
(4878, 147, 'Reckoning, The', '903331760-5', 1992, 1),
(4879, 161, 'Just 4 Kicks', '962303149-1', 1999, 0),
(4880, 204, 'Fifty Shades of Grey', '478103989-8', 1967, 0),
(4881, 493, 'Epic', '989575679-8', 2010, 0),
(4882, 261, 'Blue Steel', '842737437-2', 2008, 1),
(4883, 5, 'Prisoner of Zenda, The', '106911058-2', 2012, 0),
(4884, 285, 'Specials, The', '177312306-8', 1968, 0),
(4885, 263, 'Five Fingers', '571462038-0', 1985, 1),
(4886, 124, 'Billabong Odyssey', '789721370-6', 2000, 0),
(4887, 434, 'Haywire', '859230132-7', 1985, 0),
(4888, 117, 'Paradox', '866437474-0', 2011, 1),
(4889, 440, 'Insignificance', '699385995-5', 2000, 0),
(4890, 227, 'Dark Lurking, The', '810134642-2', 2004, 0),
(4891, 493, 'Cleopatra', '920113293-X', 2009, 0),
(4892, 477, 'Deep, The (Djúpið)', '320536120-2', 2002, 0),
(4893, 180, 'Catch and Release', '361452224-5', 1992, 0),
(4894, 363, 'Chains (Catene)', '860541496-0', 2000, 0),
(4895, 310, 'Lone Ranger, The', '238296056-6', 1998, 1),
(4896, 117, 'Animal Kingdom, The', '561712479-X', 2006, 0),
(4897, 24, 'Ethan Frome', '114274195-8', 2012, 0),
(4898, 379, 'P2', '367128226-6', 1984, 0),
(4899, 234, 'Oxy-Morons', '232761760-X', 1998, 0),
(4900, 123, 'Little Fockers', '360687380-8', 1998, 1),
(4901, 469, 'Reality', '828492359-9', 2007, 0),
(4902, 146, 'Golem', '034423993-4', 2003, 0),
(4903, 51, 'Deal, The', '887770346-6', 2006, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `bookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4904;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;