insert into status (status_name, approver) 
values
	('Approved','Direct Supervisor'),
	('Approved','Department Head'),
	('Approved','BenCo Coordinator'),
	('Pending Approval','Direct Supervisor'),
	('Pending Approval','Department Head'),
	('Pending Approval','BenCo Coordinator'),
	('Pending Pass','BenCo Coordinator'),
	('Declined','Direct Supervisor'),
	('Declined','Department Head'),
	('Declined','BenCo Coordinator');
	
insert into user_role (role_name)
values
	('Department Head'),
	('Employee'),
	('Direct Supervisor'),
	('BenCo Coordinator');
	
insert into grading_format (format_id, format_name, example)
values
	(default, 'Pass/Fail', 'Pass'),
	(default,'A,B,C,D,F', 'A,B,C');
	
	
insert into event_type (type_name,percent_coverage)
values
	('University Courses', 0.80),
	('Seminars', 0.60),
	('Certification Preparation Classes', 0.75),
	('Certification', 1.00),
	('Technical Training', 0.90),
	('Other', 0.30);
	
insert into department (dept_name)
values
	('Research and Developement'),
	('Engineering'),
	('shipping'),
	('Human Resources'),
	('Information Technology');
	
insert into employee (first_name, last_name, username, passwd, role_id, funds) 
values 
	('Reade', 'Granham', 'rgranham0', 'BxZ2uDHddp', 1, 359),
	('Marjy', 'Pinching', 'mpinching1', 'BGzRX4C609', 1, 415),
	('Mandi', 'Coleson', 'mcoleson2', 'p9tfOL0ny6H4', 1, 946),
	('Josias', 'Walentynowicz', 'jwalentynowicz3', 'yJsDDa8pqx', 1, 811),
	('Timmy', 'Sallings', 'tsallings4', 'IjgGvKwo', 1, 466),
	('Andrej', 'Uphill', 'auphill5', 'rpYGyb', 3, 55),
	('Whit', 'Gerardeaux', 'wgerardeaux6', 'VExIXhmvXh5m', 3, 604),
	('Bobinette', 'Sille', 'bsille7', 'ActxSbK7KTr', 3, 548),
	('Clari', 'ORiordan', 'CORiordan', 'IXcecehmvXh5', 3, 874),
	('Kimberly', 'Cometson', 'KCometson', 'IXhmvXh5', 3, 331),
	('Ben', 'company', 'BenCo', 'IXhfefemvXh5', 4, 331);
	


update employee set supervisor_id=1,dept_id=1 where emp_id=1;
update employee set supervisor_id=2,dept_id=2 where emp_id=2;
update employee set supervisor_id=3,dept_id=3 where emp_id=3;
update employee set supervisor_id=4,dept_id=4 where emp_id=4;
update employee set supervisor_id=5,dept_id=5 where emp_id=5;


update department set dept_head_id=1 where dept_id=1;
update department set dept_head_id=2 where dept_id=2;
update department set dept_head_id=3 where dept_id=3;
update department set dept_head_id=4 where dept_id=4;
update department set dept_head_id=5 where dept_id=5;


update employee set supervisor_id=1,dept_id=1 where emp_id=6;
update employee set supervisor_id=2,dept_id=2 where emp_id=7;
update employee set supervisor_id=3,dept_id=3 where emp_id=8;
update employee set supervisor_id=4,dept_id=4 where emp_id=9;
update employee set supervisor_id=5,dept_id=5 where emp_id=10;


insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Kathie', 'Potapczuk', 'kpotapczuk0', 'Dq9PCbwmVQIU', 2, 292, 6, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Erie', 'Fillery', 'efillery1', 'r4qZWN', 2, 780, 6, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Malory', 'Glentz', 'mglentz2', 'JGuxIbWCURUW', 2, 236, 6, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Ysabel', 'McKeller', 'ymckeller3', 'bLoNf32', 2, 269, 6, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Drake', 'Valentetti', 'dvalentetti4', 'hhNwFYUMbmpM', 2, 24, 6, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Adelle', 'Gavaran', 'agavaran5', '4Ctyo2jJZ', 2, 642, 6, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Carlyn', 'Carnegie', 'ccarnegie6', 'g72pdnX2', 2, 696, 6, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Adolf', 'Lahy', 'alahy7', '583t6mQaf', 2, 884, 6, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Layney', 'Othick', 'lothick8', 'TyL7IN', 2, 132, 6, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Carmelle', 'Giveen', 'cgiveen9', '91BTRmeaT', 2, 713, 6, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Marlie', 'Trippick', 'mtrippicka', '0uPQVc', 2, 590, 6, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Della', 'Congrave', 'dcongraveb', 'dMzSKG', 2, 440, 6, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Adrienne', 'Johantges', 'ajohantgesc', '38tkidAJN43', 2, 833, 6, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Marcellus', 'Bromwich', 'mbromwichd', 'YlNYKPU2lYz', 2, 900, 6, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Leslie', 'Brute', 'lbrutee', '6enz2o2q3a8x', 2, 649, 6, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Nannie', 'Widdocks', 'nwiddocks0', 'ELryrfNvxqO', 2, 247, 7, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Tuckie', 'Karmel', 'tkarmel1', 'bNNPomgQ5s', 2, 988, 7, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Cathrin', 'Voyce', 'cvoyce2', 'JPbQnrt0', 2, 883, 7, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Odette', 'Klessmann', 'oklessmann3', 'NweyKuszdVn', 2, 789, 7, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Beitris', 'Ecclestone', 'becclestone4', 'cEbVoqpk', 2, 564, 7, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Jsandye', 'McDavitt', 'jmcdavitt5', 'MXWLdWDnf', 2, 431, 7, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Wynn', 'Dreinan', 'wdreinan6', 'SGcrzJBbmc', 2, 689, 7, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Hamlen', 'Stummeyer', 'hstummeyer7', 'hkscil', 2, 61, 7, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Englebert', 'Ivanyukov', 'eivanyukov8', 'XkjGPXf', 2, 473, 7, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Patricio', 'Cracknall', 'pcracknall9', 'eKdsVbpRHE', 2, 920, 7, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Jeffry', 'Rushbury', 'jrushburya', 'p9DLBI7fb', 2, 651, 7, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Vic', 'Speere', 'vspeereb', 'mwV6F87vz', 2, 497, 7, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Chantal', 'Martina', 'cmartinac', 'OG4bPXFL6vc', 2, 194, 7, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Rowland', 'Runnett', 'rrunnettd', 'WWeIoalXZrm8', 2, 101, 7, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Odell', 'Milland', 'omillande', 'LPLaJFp', 2, 517, 7, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Nalani', 'Blackall', 'nblackall0', 'Cj0N16Ezfr', 2, 278, 8, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Quent', 'Leachman', 'qleachman1', 'uLK7kK', 2, 727, 8, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Jada', 'Lingwood', 'jlingwood2', 'KL7k7aEg6', 2, 209, 8, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Loella', 'Paylor', 'lpaylor3', 'Hi9DddJkWiz', 2, 693, 8, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Lindsey', 'Fessby', 'lfessby4', 'xT22kZ927H', 2, 579, 8, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Carrol', 'Dowsing', 'cdowsing5', 'F29ENFeW5TJ', 2, 191, 8, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Hannah', 'Shambrooke', 'hshambrooke6', 'GyZlWmil', 2, 990, 8, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Valentino', 'Voyce', 'vvoyce7', 'dRV1RItnjnf', 2, 466, 8, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Jennica', 'Ferschke', 'jferschke8', '2iQiCzqdhlMt', 2, 771, 8, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Bryan', 'McKechnie', 'bmckechnie9', 'eVGxtv7PTA', 2, 564, 8, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Brenna', 'Radleigh', 'bradleigha', 'gdHLGd', 2, 995, 8, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Delaney', 'Darinton', 'ddarintonb', '7ywj1Pta', 2, 972, 8, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Giulio', 'Pepper', 'gpepperc', 'YKkRNyXVd', 2, 284, 8, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Philip', 'Bodycote', 'pbodycoted', '94g1j1i', 2, 547, 8, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Lazar', 'Keenlayside', 'lkeenlaysidee', 'ZWkiAZ6', 2, 756, 8, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Ronica', 'Kiebes', 'rkiebes0', 'KQnTuPEzYEV6', 2, 742, 9, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Ernestus', 'McComiskie', 'emccomiskie1', 'YdI1p2G', 2, 413, 9, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Leopold', 'Tooke', 'ltooke2', '63togfhzZ501', 2, 262, 9, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Derrick', 'Leyborne', 'dleyborne3', 'qKbKSc3FVz8', 2, 79, 9, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Ludovika', 'Gerssam', 'lgerssam4', 'WF45zGbV', 2, 747, 9, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Aveline', 'Fardo', 'afardo5', '7m2Bg01ygoZ', 2, 574, 9, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Yolanda', 'Bampfield', 'ybampfield6', 'uQZuKJOLvn', 2, 285, 9, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Lorrin', 'Frith', 'lfrith7', 'h1JI3GKXLcE', 2, 596, 9, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Cyndy', 'Whyman', 'cwhyman8', 'WXIDiRqn5t5', 2, 295, 9, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Herbie', 'Naulty', 'hnaulty9', 'gAtuSS', 2, 664, 9, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Eduardo', 'Fumagallo', 'efumagalloa', 'EEqL3YOCkq', 2, 68, 9, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Kipper', 'Balke', 'kbalkeb', 'r5truY', 2, 811, 9, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Alanson', 'Bawcock', 'abawcockc', 'KGhMiBhoG', 2, 658, 9, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Clo', 'Marklund', 'cmarklundd', 'fjUel47q', 2, 710, 9, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Norbert', 'Cars', 'ncarse', 'kyp5JAfEtp', 2, 218, 9, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Nels', 'Trehearne', 'ntrehearne0', 'OC7OsCOsw', 2, 522, 10, 5);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Melinda', 'Romer', 'mromer1', 'u0r1P30kBD', 2, 856, 10, 5);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Riki', 'Lusgdin', 'rlusgdin2', 'PP2pNDGdQPL', 2, 780, 10, 5);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Hubert', 'Nottingam', 'hnottingam3', '7tMOJPLpZ', 2, 670, 10, 5);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Kessia', 'O''Glassane', 'koglassane4', 't192iMe2ciq', 2, 216, 10, 5);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Nessi', 'Colomb', 'ncolomb5', 'IzPOiGviC', 2, 170, 10, 5);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Lyn', 'Slade', 'lslade6', 'tugF0KWi', 2, 729, 10, 5);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Mallorie', 'Rupprecht', 'mrupprecht7', 'vMzaLp', 2, 636, 10, 5);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Melisse', 'Wiggett', 'mwiggett8', 'KvD87seNY', 2, 290, 10, 5);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Elysee', 'Paffitt', 'epaffitt9', 'Ay3HZZmjpt0s', 2, 336, 10, 5);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Garner', 'Iannuzzi', 'giannuzzia', 'zIncZo6', 2, 406, 10, 5);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Mattias', 'Betham', 'mbethamb', 'Q1l2ZrU', 2, 551, 10, 5);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Agnese', 'Heardman', 'aheardmanc', 'REhxiS1hu', 2, 288, 10, 5);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Lowe', 'Mollon', 'lmollond', 'Zq8QCz', 2, 911, 10, 5);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Jennie', 'Goodrick', 'jgoodricke', '1RpOB7jOLt7Z', 2, 690, 10, 5);



insert into comment (req_id, approver_id, comment_text, sent_at) values (1, 5, 'Gorilla gorilla', '5/30/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (2, 1, 'Taxidea taxus', '7/20/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (3, 2, 'Acrantophis madagascariensis', '12/23/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (4, 4, 'Oreotragus oreotragus', '4/19/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (5, 3, 'Macropus eugenii', '2/1/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (6, 2, 'Bradypus tridactylus', '2/3/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (7, 1, 'unavailable', '1/5/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (8, 1, 'Cebus nigrivittatus', '8/7/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (9, 5, 'Papio cynocephalus', '7/2/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (10, 3, 'Ara ararauna', '2/24/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (11, 6, 'Hystrix indica', '3/19/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (12, 1, 'Priodontes maximus', '7/16/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (13, 6, 'Neophron percnopterus', '12/31/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (14, 2, 'Nucifraga columbiana', '3/23/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (15, 6, 'Choloepus hoffmani', '10/25/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (16, 4, 'Orcinus orca', '3/13/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (17, 5, 'Parus atricapillus', '10/7/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (18, 1, 'Speothos vanaticus', '11/28/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (19, 4, 'Isoodon obesulus', '10/27/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (20, 3, 'Ardea cinerea', '4/29/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (21, 3, 'Acridotheres tristis', '4/5/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (22, 1, 'Gopherus agassizii', '1/5/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (23, 4, 'Grus antigone', '5/25/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (24, 5, 'Martes americana', '7/13/2021');
insert into comment (req_id, approver_id, comment_text, sent_at) values (25, 2, 'Castor canadensis', '10/11/2021');