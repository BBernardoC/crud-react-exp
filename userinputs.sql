create table usuario (
ID int auto_increment primary key,
nome VARCHAR(40),
email VARCHAR(100),
cpf VARCHAR(11) UNIQUE,
telefone VARCHAR(11),
dtaNascimento DATE
);

select * from usuario;



INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('1', 'Tyler Windler', 'Rickie.Gerhold@yahoo.com', '22712918660', '6982968647', '1963-03-11T04:38:24.214');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('2', 'Moses Yost', 'Marvin.Wiza92@yahoo.com', '37319542364', '3529589651', '1977-09-26T21:35:56.178');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('3', 'Jamie Orn PhD', 'Lesly24@gmail.com', '50447868886', '6207527713', '1976-05-28T15:24:52.609');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('4', 'Aaron Carroll PhD', 'Christ.Considine84@yahoo.com', '78507226664', '3680823094', '1993-10-30T02:24:32.304');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('5', 'Jeffrey Brakus', 'Cyril30@yahoo.com', '34135054527', '6859199562', '1979-04-01T21:57:10.163');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('6', 'Jaime White', 'Shyann.Weimann@hotmail.com', '92788821376', '6211596214', '1962-11-01T04:20:11.184');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('7', 'Alfredo Stroman', 'Moses_Kihn29@yahoo.com', '80325704957', '2376923132', '1964-04-16T23:36:08.660');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('8', 'Joe Considine', 'Timmy83@hotmail.com', '42575254477', '9186758127', '2006-06-03T15:02:01.099');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('9', 'Luis Auer', 'Addison86@gmail.com', '31510366126', '3567317116', '2005-03-18T12:28:09.579');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('10', 'Cristina Kertzmann', 'Davonte_Becker93@yahoo.com', '20863796625', '1867589220', '1968-08-06T15:08:19.922');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('11', 'Blanche Stehr', 'Duncan_Funk@gmail.com', '38362297332', '9652794489', '1985-07-11T02:48:50.883');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('12', 'Ms. Shelley Lubowitz', 'Susan86@gmail.com', '50315385208', '0882490455', '1984-05-29T18:31:14.001');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('13', 'Eileen Keeling', 'Nona.OConnell83@hotmail.com', '35895971477', '6577478933', '1999-11-16T21:06:38.104');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('14', 'Bernard Keebler', 'Kobe_Keeling35@hotmail.com', '37788325361', '3926189373', '1957-04-11T22:41:59.576');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('15', 'Pete Parker', 'Stevie.Langosh-Labadie@hotmail.com', '99783575658', '2641867950', '1994-01-22T13:32:56.606');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('16', 'Maxine Schulist III', 'Dudley67@yahoo.com', '98865268855', '9895217356', '1981-06-17T14:46:26.087');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('17', 'Douglas Aufderhar', 'Catharine.Leffler9@gmail.com', '46410000800', '3581711612', '1957-05-30T03:16:27.253');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('18', 'Isaac Kessler', 'Elyssa_Koepp@yahoo.com', '79982254447', '1892207969', '1961-12-11T00:47:38.063');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('19', 'Valerie Kuphal', 'Marilyne.Fahey10@gmail.com', '78547394979', '8902939095', '1997-05-26T15:54:49.933');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('20', 'Eloise Schroeder', 'Newell45@hotmail.com', '53259059227', '2337135765', '1961-12-15T08:26:51.777');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('21', 'Lawrence Hodkiewicz', 'Vivianne44@hotmail.com', '99843486543', '8030201042', '1961-03-27T12:35:15.681');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('22', 'Maxine Pacocha', 'Shane10@yahoo.com', '49899873572', '1655122139', '2004-06-28T12:21:33.478');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('23', 'Cristina Considine', 'Oleta.Mann@gmail.com', '24592057160', '2581762214', '1945-01-05T15:57:28.185');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('24', 'Dale Schiller', 'Stephon.Runolfsson81@hotmail.com', '61384346087', '1581774620', '1986-01-01T22:11:12.158');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('25', 'Johnnie Ebert', 'Billie.Grant@gmail.com', '38690230436', '6875484188', '1967-08-10T02:55:24.750');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('26', 'Crystal Jenkins', 'Shakira45@yahoo.com', '48246359059', '2280480701', '1953-04-09T12:04:04.330');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('27', 'Roman Anderson', 'Justyn.Labadie@gmail.com', '20549161628', '1211293315', '1950-03-11T21:24:47.663');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('28', 'Sonia Schinner V', 'Ezra14@hotmail.com', '58990176932', '9347254842', '2000-11-16T14:05:41.277');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('29', 'Heidi Brown', 'Khalid_Reichel@gmail.com', '90694810594', '4377920881', '2004-10-30T08:15:14.271');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('30', 'Dianna Wolf', 'Freda_Donnelly@gmail.com', '77309778870', '8626301271', '1970-04-13T10:02:58.924');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('31', 'Viola Rice', 'Sylvan_Schinner@yahoo.com', '73786015974', '5303189007', '1986-01-24T01:41:41.626');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('32', 'Renee Schimmel', 'Francis_Kessler92@gmail.com', '71891781377', '3360996311', '1996-09-02T10:36:09.458');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('33', 'Dr. Myra Walsh', 'Nicholaus_Durgan7@yahoo.com', '37832641021', '7364269840', '2002-09-18T13:15:14.645');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('34', 'Guadalupe Wuckert-Kunde II', 'Brando_Padberg@hotmail.com', '26230495319', '6054986495', '2003-04-01T22:48:52.760');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('35', 'Ross Lind-Lakin', 'Marietta71@yahoo.com', '15502877264', '2723744453', '1968-03-16T09:36:27.227');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('36', 'Kathleen Murphy DVM', 'Adaline_Dooley17@hotmail.com', '22773596292', '9858761249', '2000-05-08T09:30:09.107');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('37', 'Lora Turner', 'Bessie63@hotmail.com', '30073441544', '5908038632', '1977-01-07T09:37:05.969');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('38', 'Emmett OHara Jr.', 'Maude_Stiedemann@gmail.com', '73967477844', '7117273902', '1980-01-07T21:41:19.402');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('39', 'Mr. Alex Swaniawski', 'Yessenia7@hotmail.com', '66354605969', '3495526856', '1961-01-15T07:48:02.988');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('40', 'Mattie Ryan', 'Shawna_Kuhic@hotmail.com', '61145563133', '7182358135', '1986-07-10T11:29:21.945');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('41', 'Nelson Murray', 'Rollin.Stehr@hotmail.com', '27451091176', '3792857293', '1949-01-02T15:33:50.410');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('42', 'Dwight Franey', 'Thalia18@yahoo.com', '30515192283', '2937459987', '1982-01-24T01:52:06.446');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('43', 'Richard Jenkins V', 'Corrine.Fadel@hotmail.com', '40992505517', '7857989331', '1947-04-24T07:44:59.401');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('44', 'Kay Beer III', 'Geo.Sanford14@gmail.com', '73480031866', '4290728942', '1993-07-29T14:03:15.159');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('45', 'Alejandro Ferry', 'Vivienne.Osinski22@yahoo.com', '56656736901', '5919631844', '1954-11-27T05:04:21.546');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('46', 'Dr. Morris Streich', 'Chad99@gmail.com', '63390463942', '7680524714', '1971-08-08T02:15:38.044');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('47', 'Ms. Amelia Hickle', 'Zachary25@yahoo.com', '51655455492', '6674815884', '1980-05-29T23:01:37.968');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('48', 'Marty Streich-Beahan', 'Deanna24@hotmail.com', '24974056622', '4769347853', '2006-09-26T09:40:34.702');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('49', 'Roberta Stehr', 'Joyce.Bergnaum@hotmail.com', '80170792775', '7109160534', '1961-08-04T12:29:35.318');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES ('50', 'Ismael Littel', 'Josh77@hotmail.com', '44090444698', '9389452213', '1970-05-27T01:39:42.798');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES (NULL, 'Alex Cummerata', 'Lamar57@hotmail.com', '60369691645', '8845680459', '1950-08-27T05:29:06.504');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES (NULL, 'Dora Kutch-Kovacek', 'Lillian_Pacocha@yahoo.com', '16412815182', '9870704514', '1975-12-06T21:06:36.711');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES (NULL, 'Kristina Tremblay-Prohaska', 'Electa29@hotmail.com', '85928909480', '9065176236', '1966-04-07T07:53:09.417');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES (NULL, 'Marie Russel', 'Wilma_Connelly@hotmail.com', '62358100939', '1546971377', '1983-10-31T01:35:47.200');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES (NULL, 'Lee Hoppe', 'Valentine_Kemmer@yahoo.com', '88536961873', '4642586545', '1948-06-25T12:26:49.348');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES (NULL, 'Tammy Volkman', 'Lucy_Haley95@gmail.com', '84140616324', '1892207972', '1967-04-27T15:26:30.007');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES (NULL, 'Lori Okuneva', 'Shyann2@yahoo.com', '14461511187', '1261505091', '1998-12-03T07:20:43.355');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES (NULL, 'Chris Stokes', 'Yvette.Pouros79@gmail.com', '33966611367', '8267414044', '1993-01-20T08:24:53.882');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES (NULL, 'Mable Friesen', 'Sid.Rutherford30@hotmail.com', '63035539868', '4783549307', '1998-05-24T05:50:13.165');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES (NULL, 'Lewis Parisian', 'Alexie92@hotmail.com', '88233235271', '6755611167', '1993-08-02T17:49:26.112');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES (NULL, 'Lola Ankunding', 'Adrian_Botsford@yahoo.com', '75158474263', '5708713888', '1963-08-03T19:37:58.310');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES (NULL, 'Carlos Heathcote', 'Ettie.Schultz61@hotmail.com', '76409768313', '8177473100', '1964-09-26T09:20:39.570');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES (NULL, 'Brett Reilly', 'Leanna21@hotmail.com', '34889744097', '1144710470', '2004-03-30T16:38:53.364');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES (NULL, 'Kenneth Johnston', 'Coleman_Hauck@yahoo.com', '52252658601', '8898978262', '1964-11-14T13:45:18.641');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES (NULL, 'Darren Veum', 'Itzel_Auer77@yahoo.com', '84887862950', '0022409400', '1984-07-11T08:21:54.500');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES (NULL, 'Martin Jones', 'Coy_Heaney18@gmail.com', '48472329394', '6464530027', '1987-09-16T12:07:45.857');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES (NULL, 'Terri Reilly-Moen', 'Jerry44@hotmail.com', '99640703511', '4221376131', '1980-09-22T23:35:10.568');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES (NULL, 'Faith Nolan IV', 'Haley69@hotmail.com', '43397605874', '9272845353', '1966-03-13T17:32:18.834');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES (NULL, 'Sheri Mayert', 'Lonnie84@yahoo.com', '82295505723', '0313727650', '1959-12-30T22:41:09.930');
INSERT INTO usuario (ID, nome, email, cpf, telefone, dtaNascimento) VALUES (NULL, 'Josh Langworth I', 'Ayana.Cronin@hotmail.com', '65856786051', '0535020968', '1996-07-01T15:38:51.502');