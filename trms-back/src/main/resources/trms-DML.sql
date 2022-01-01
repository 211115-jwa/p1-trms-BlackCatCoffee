
insert into status (status_name, approver) 
values
	('Approved','Direct Supervisor'),
	('Approved','Department Head'),
	('Approved','BenCo Coordinator'),
	('Pending Approval','Direct Supervisor'),
	('Pending Approval','Department Head'),
	('Pending Approval','BenCo Coordinator'),
	('Declined','Direct Supervisor'),
	('Declined','Department Head'),
	('Declined','BenCo Coordinator');
	
insert into user_role (role_name)
values
	('Department Head'),
	('Employee'),
	('Direct Supervisor');
	
insert into grading_format (format_id, format_name, example)
values
	(default, 'Pass/Fail', 'Pass'),
	(default,'A,B,C,D,F', 'A,B,C');
	
	
insert into department (dept_name)
values
	('Research and Developement'),
	('Engineering'),
	('shipping'),
	('Information Technology');
	
insert into employee (first_name, last_name, username, passwd, role_id, funds) 
values 
	('Reade', 'Granham', 'rgranham0', 'BxZ2uDHddp', 1, 359),
	('Marjy', 'Pinching', 'mpinching1', 'BGzRX4C609', 1, 415),
	('Mandi', 'Coleson', 'mcoleson2', 'p9tfOL0ny6H4', 1, 946),
	('Josias', 'Walentynowicz', 'jwalentynowicz3', 'yJsDDa8pqx', 1, 811),
	('Timmy', 'Sallings', 'tsallings4', 'IjgGvKwo', 3, 466),
	('Andrej', 'Uphill', 'auphill5', 'rpYGyb', 3, 55),
	('Whit', 'Gerardeaux', 'wgerardeaux6', 'VExIXhmvXh5m', 3, 604),
	('Bobinette', 'Sille', 'bsille7', 'ActxSbK7KTr', 3, 548);
	
select * from employee where role_id=3;

update employee set supervisor_id=1,dept_id=1 where emp_id=1;
update employee set supervisor_id=2,dept_id=2 where emp_id=2;
update employee set supervisor_id=3,dept_id=3 where emp_id=3;
update employee set supervisor_id=4,dept_id=4 where emp_id=4;

update department set dept_head_id=1 where dept_id=1;
update department set dept_head_id=2 where dept_id=2;
update department set dept_head_id=3 where dept_id=3;
update department set dept_head_id=4 where dept_id=4;

update employee set supervisor_id=1,dept_id=1 where emp_id=5;
update employee set supervisor_id=2,dept_id=2 where emp_id=6;
update employee set supervisor_id=3,dept_id=3 where emp_id=7;
update employee set supervisor_id=4,dept_id=4 where emp_id=8;

insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Clari', 'O''Riordan', 'coriordan0@chicagotribune.com', 'Female', 2, 874, 5, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Kimberly', 'Cometson', 'kcometson1@slate.com', 'Male', 2, 331, 5, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Domeniga', 'Kaszper', 'dkaszper2@usda.gov', 'Female', 2, 91, 5, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Mureil', 'Sabban', 'msabban3@tamu.edu', 'Female', 2, 344, 5, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Jehanna', 'Kerkham', 'jkerkham4@webs.com', 'Female', 2, 571, 5, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Doralin', 'Lansberry', 'dlansberry5@springer.com', 'Male', 2, 447, 5, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Veriee', 'Caird', 'vcaird6@51.la', 'Female', 2, 532, 5, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Hillie', 'Gergolet', 'hgergolet7@etsy.com', 'Male', 2, 825, 5, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Daloris', 'Pavie', 'dpavie8@thetimes.co.uk', 'Male', 2, 726, 5, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Waverly', 'Coplestone', 'wcoplestone9@google.de', 'Female', 2, 864, 5, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Matty', 'Dutson', 'mdutsona@gnu.org', 'Female', 2, 865, 5, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Morgan', 'Galtone', 'mgaltoneb@stumbleupon.com', 'Female', 2, 465, 5, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Clim', 'Favell', 'cfavellc@comsenz.com', 'Male', 2, 882, 5, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Fielding', 'Redsall', 'fredsalld@tmall.com', 'Male', 2, 675, 5, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Caroljean', 'Handover', 'chandovere@angelfire.com', 'Female', 2, 449, 5, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Nikolaos', 'Brumpton', 'nbrumpton0@nature.com', 'Polygender', 2, 748, 6, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Coralie', 'Garcia', 'cgarcia1@sitemeter.com', 'Female', 2, 911, 6, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Julianne', 'Canaan', 'jcanaan2@netscape.com', 'Female', 2, 644, 6, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Celinka', 'Rimer', 'crimer3@goodreads.com', 'Genderqueer', 2, 915, 6, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Alayne', 'Dupoy', 'adupoy4@amazon.co.jp', 'Non-binary', 2, 754, 6, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Harrison', 'Breinl', 'hbreinl5@squarespace.com', 'Bigender', 2, 511, 6, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Paco', 'Creffield', 'pcreffield6@etsy.com', 'Female', 2, 815, 6, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Ann-marie', 'Easterfield', 'aeasterfield7@slashdot.org', 'Female', 2, 66, 6, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Galen', 'MacLucais', 'gmaclucais8@lycos.com', 'Male', 2, 88, 6, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Britta', 'Jancic', 'bjancic9@i2i.jp', 'Female', 2, 740, 6, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Alena', 'Iori', 'aioria@slate.com', 'Female', 2, 777, 6, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Mandi', 'De Beneditti', 'mdebenedittib@geocities.jp', 'Non-binary', 2, 604, 6, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Stanfield', 'Sidnall', 'ssidnallc@google.com', 'Male', 2, 46, 6, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Garek', 'Girodias', 'ggirodiasd@cmu.edu', 'Female', 2, 317, 6, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Rowney', 'Gilhooly', 'rgilhoolye@friendfeed.com', 'Male', 2, 421, 6, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Odelle', 'Lorriman', 'olorriman0@usnews.com', 'Female', 2, 424, 7, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Edee', 'Munson', 'emunson1@yahoo.com', 'Female', 2, 863, 7, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Shayne', 'Blachford', 'sblachford2@myspace.com', 'Female', 2, 596, 7, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Helge', 'Holmyard', 'hholmyard3@shareasale.com', 'Male', 2, 502, 7, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Trey', 'Doerr', 'tdoerr4@free.fr', 'Female', 2, 102, 7, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Madelene', 'Fredi', 'mfredi5@about.me', 'Female', 2, 203, 7, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Antonia', 'Garroway', 'agarroway6@gizmodo.com', 'Female', 2, 931, 7, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Noella', 'Passman', 'npassman7@ycombinator.com', 'Female', 2, 378, 7, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Mirilla', 'Brayshaw', 'mbrayshaw8@blogtalkradio.com', 'Male', 2, 163, 7, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Cullin', 'Malby', 'cmalby9@gmpg.org', 'Female', 2, 515, 7, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Paige', 'Yanne', 'pyannea@addtoany.com', 'Male', 2, 623, 7, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Patten', 'Raun', 'praunb@desdev.cn', 'Female', 2, 81, 7, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Tracy', 'Breinl', 'tbreinlc@si.edu', 'Female', 2, 962, 7, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Donnie', 'Coneybeare', 'dconeybeared@i2i.jp', 'Female', 2, 370, 7, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Jameson', 'De Bellis', 'jdebellise@mlb.com', 'Male', 2, 454, 7, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Suzanna', 'MacCleay', 'smaccleay0@amazon.de', 'Male', 2, 744, 8, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Emma', 'Mallabone', 'emallabone1@quantcast.com', 'Female', 2, 417, 8, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Dalenna', 'Di Baudi', 'ddibaudi2@pen.io', 'Male', 2, 466, 8, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Dominick', 'Shewery', 'dshewery3@fastcompany.com', 'Male', 2, 700, 8, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Cynthy', 'Jankin', 'cjankin4@163.com', 'Male', 2, 890, 8, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Corny', 'Goldman', 'cgoldman5@hostgator.com', 'Male', 2, 698, 8, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Daniela', 'Hidderley', 'dhidderley6@scientificamerican.com', 'Male', 2, 964, 8, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Davie', 'Oakley', 'doakley7@reference.com', 'Female', 2, 633, 8, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Kendal', 'Redsall', 'kredsall8@digg.com', 'Female', 2, 970, 8, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Gypsy', 'Hunsworth', 'ghunsworth9@admin.ch', 'Male', 2, 490, 8, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Jodie', 'Bertot', 'jbertota@sfgate.com', 'Male', 2, 870, 8, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Davina', 'Ure', 'dureb@baidu.com', 'Female', 2, 390, 8, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Lani', 'Chastang', 'lchastangc@prnewswire.com', 'Female', 2, 929, 8, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Timothy', 'Phette', 'tphetted@tripod.com', 'Female', 2, 461, 8, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Bernadette', 'Mattes', 'bmattese@seesaa.net', 'Agender', 2, 679, 8, 4);


