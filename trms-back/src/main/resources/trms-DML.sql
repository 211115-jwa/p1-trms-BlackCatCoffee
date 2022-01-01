insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) 
values 
	('Reade', 'Granham', 'rgranham0', 'BxZ2uDHddp', 2, 359),
	('Marjy', 'Pinching', 'mpinching1', 'BGzRX4C609', 4, 415),
	('Mandi', 'Coleson', 'mcoleson2', 'p9tfOL0ny6H4', 3, 946),
	('Josias', 'Walentynowicz', 'jwalentynowicz3', 'yJsDDa8pqx', 1, 811),
	('Timmy', 'Sallings', 'tsallings4', 'IjgGvKwo', 4, 466),
	('Andrej', 'Uphill', 'auphill5', 'rpYGyb', 2, 55),
	('Whit', 'Gerardeaux', 'wgerardeaux6', 'VExIXhmvXh5m', 4, 604),
	('Bobinette', 'Sille', 'bsille7', 'ActxSbK7KTr', 4, 548);
	

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
	('Engineering')
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
	


update employee set supervisor_id=9,dept_id=1 where emp_id=9;
update employee set supervisor_id=10,dept_id=2 where emp_id=10;
update employee set supervisor_id=11,dept_id=3 where emp_id=11;
update employee set supervisor_id=12,dept_id=4 where emp_id=12;

update department set dept_head_id=9 where dept_id=1;
update department set dept_head_id=10 where dept_id=2;
update department set dept_head_id=11 where dept_id=3;
update department set dept_head_id=12 where dept_id=4;

update employee set supervisor_id=9,dept_id=1 where emp_id=13;
update employee set supervisor_id=10,dept_id=2 where emp_id=14;
update employee set supervisor_id=11,dept_id=3 where emp_id=15;
update employee set supervisor_id=12,dept_id=4 where emp_id=16;

insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Thelma', 'Minci', 'tminci0', 'pFQFTXJl', 2, 691, 13, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Felicia', 'Couper', 'fcouper1', 'RntgOM5f', 2, 638, 13, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Dulsea', 'Shropshire', 'dshropshire2', 'BYHwhoT', 2, 30, 13, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Germaine', 'Burdekin', 'gburdekin3', 'k2XQ9fppbP', 2, 329, 13, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Taite', 'Peeke', 'tpeeke4', 'ZorOku9sl', 2, 445, 13, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Svend', 'Baulk', 'sbaulk5', 'q9atKmdWglW', 2, 68, 13, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Marja', 'Fedorchenko', 'mfedorchenko6', 'Hw5KNwcd', 2, 461, 13, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Ximenez', 'Mallon', 'xmallon7', 'MlLwyJ3Dh', 2, 199, 13, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Kimbell', 'Drei', 'kdrei8', 'y6m9Cvc4', 2, 716, 13, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Washington', 'Kierans', 'wkierans9', 't0AQv32IbFvL', 2, 861, 13, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Skye', 'Goch', 'sgocha', 'kiAHyNYA', 2, 686, 13, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Berthe', 'Jarrelt', 'bjarreltb', 'PRHDc4b5x8E', 2, 437, 13, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Lari', 'Pyle', 'lpylec', 'b9MjeD8q0', 2, 345, 13, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Georges', 'Sloam', 'gsloamd', 'egEScEFWe5', 2, 605, 13, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Selig', 'Blaisdell', 'sblaisdelle', '6DD8SrYIVfq9', 2, 438, 13, 1);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Vinnie', 'DelaField', 'vdelafield0', 'n9KMUCsCe', 2, 398, 14, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Tanner', 'Burbank', 'tburbank1', 'dxqEzEsWN', 2, 862, 14, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Coleen', 'Bygrave', 'cbygrave2', '0GAEGdpj7S', 2, 273, 14, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Scotty', 'Moorey', 'smoorey3', 'IuOE9fQAeG', 2, 765, 14, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Elise', 'Bunhill', 'ebunhill4', 'ZYISNOaXSfIK', 2, 847, 14, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Kalil', 'Du Hamel', 'kduhamel5', 'MKdA8WW', 2, 135, 14, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Hillery', 'Sibbet', 'hsibbet6', 'kJPvusyDtPf', 2, 543, 14, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Delila', 'Bissex', 'dbissex7', '5swpNB', 2, 943, 14, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Lamont', 'Fibbens', 'lfibbens8', 'KIh4AcntQ', 2, 158, 14, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Corilla', 'Fetherby', 'cfetherby9', 'itsXfTDIgE', 2, 738, 14, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Cindee', 'Scrogges', 'cscroggesa', 'boRQpeW', 2, 812, 14, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Leonidas', 'Slowgrave', 'lslowgraveb', 'hmGh5f6k', 2, 703, 14, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Giacinta', 'Syplus', 'gsyplusc', 'b4J7vdR', 2, 31, 14, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Alejoa', 'Drewery', 'adreweryd', 'xW7nTly8bb9', 2, 204, 14, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Hieronymus', 'Sircomb', 'hsircombe', 'eCg0XQl', 2, 562, 14, 2);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Joeann', 'Uzelli', 'juzelli0', 'dZju49z', 2, 284, 15, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Claire', 'Laverock', 'claverock1', 'IjniR4eV', 2, 312, 15, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Yule', 'Lisciandri', 'ylisciandri2', 'dowXJIxvaUN3', 2, 368, 15, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Dehlia', 'Myhan', 'dmyhan3', '2jOdIHC7B', 2, 493, 15, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Amandy', 'Claughton', 'aclaughton4', 'wrAEdgZC', 2, 756, 15, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Ashley', 'Ackhurst', 'aackhurst5', 'PZNJcDsTpkn', 2, 981, 15, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Lindsey', 'Grissett', 'lgrissett6', 'z3hnAcn3I1J', 2, 111, 15, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Letti', 'Varfalameev', 'lvarfalameev7', 'HYAvufkMAa', 2, 852, 15, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Marji', 'Schwandt', 'mschwandt8', 'iDEedYoUw527', 2, 662, 15, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Fons', 'Southerden', 'fsoutherden9', '7S0y1pWynGOj', 2, 620, 15, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Shawn', 'Cawston', 'scawstona', 'lOydi5dhTkUo', 2, 102, 15, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Sosanna', 'Ferrai', 'sferraib', 'Fy2Unqeiln', 2, 239, 15, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Connie', 'Coumbe', 'ccoumbec', '1TQpogjC', 2, 505, 15, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Cecilio', 'Borrett', 'cborrettd', 'kz1fvryA5', 2, 113, 15, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Ethel', 'Wenden', 'ewendene', 'K3D30h', 2, 264, 15, 3);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Annelise', 'Supple', 'asupple0', 'gsM9XQfXgLd', 2, 772, 16, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Genny', 'Marlowe', 'gmarlowe1', 'wD9jVd8j', 2, 459, 16, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Jackie', 'Book', 'jbook2', 'IInkCxv', 2, 250, 16, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Annemarie', 'Bownes', 'abownes3', 'J5WyhaO', 2, 582, 16, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Alan', 'Cawson', 'acawson4', 'fTBp4NQ0Ifk', 2, 948, 16, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Cynde', 'Craghead', 'ccraghead5', 'uwYv5TpfXnwW', 2, 575, 16, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Gerrard', 'Balling', 'gballing6', 'SmWxmy8KT', 2, 204, 16, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Leonid', 'Renner', 'lrenner7', 'WjAfniU1', 2, 433, 16, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Kaylyn', 'Fenimore', 'kfenimore8', 'UwFZfN', 2, 272, 16, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Carey', 'Finding', 'cfinding9', 'XIzhRh0Vt4A', 2, 889, 16, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Sven', 'Bovaird', 'sbovairda', 'erGKly7eit', 2, 193, 16, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Hermione', 'McGucken', 'hmcguckenb', 'BJ0EgBk', 2, 511, 16, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Bink', 'de Cullip', 'bdecullipc', 't2xA5wnE', 2, 623, 16, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Skye', 'Leman', 'slemand', 'NdyNkok8c', 2, 601, 16, 4);
insert into employee (first_name, last_name, username, passwd, role_id, funds, supervisor_id, dept_id) values ('Duffie', 'Wight', 'dwighte', 'FSThNPZ', 2, 615, 16, 4);


