create database Phonebook

use Phonebook

create table People(
[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
[FirstName] nvarchar(30) NOT NULL,
[LastName] nvarchar(30) NOT NULL,
[Phone] nvarchar(30) NOT NULL,
[Email] nvarchar (30),
[Created] datetime2 NOT NULL,
[Updated] datetime2 NOT NULL
)

INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2010-09-29T04:40:11.231Z',N'Sidney','1981-06-20T18:28:51.732Z',N'Hamill',N'691-678-1418 x241','Clementina.Gottlieb@robert.tv');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1985-04-25T01:34:03.699Z',N'Savanna','1986-12-16T18:23:59.564Z',N'Ward',N'523-397-2405','Ava@joel.me');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1993-03-14T23:54:55.637Z',N'Ismael','2012-02-25T10:28:06.327Z',N'Zulauf',N'1-784-937-1369','Erich_Ward@lennie.us');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1987-04-14T11:01:20.687Z',N'Michel','2002-05-30T16:26:46.686Z',N'Green',N'1-644-137-9977 x41149','Dedrick_Daugherty@candelario.net');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1995-05-30T03:50:16.199Z',N'Frank','1985-10-25T01:13:27.373Z',N'Stracke',N'531-809-4114 x21718','Keely_Thompson@mckenna.name');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1984-06-28T02:01:53.824Z',N'Larissa','1990-05-04T00:18:20.576Z',N'Pouros',N'799-957-0014','Sonny@dayna.info');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2011-05-10T23:32:49.624Z',N'Buford','2007-09-07T02:30:29.179Z',N'Crist',N'(242)569-5647','Rossie_Weissnat@ulices.tv');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1986-11-09T23:29:46.857Z',N'Loyce','2008-03-10T05:47:14.535Z',N'Howell',N'524.142.0319','Phoebe@brice.net');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2010-02-15T20:26:31.970Z',N'Carole','2017-05-20T00:34:10.478Z',N'Pollich',N'(297)655-9583','Braeden@callie.biz');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2000-01-11T18:01:10.969Z',N'Tressa','1985-01-07T07:00:04.290Z',N'Cassin',N'116-614-5295 x45238','Omari@monte.me');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1997-09-29T06:37:15.675Z',N'Jakob','2017-03-24T08:26:10.951Z',N'Langworth',N'334.218.1947','Braxton_Harvey@joseph.us');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2016-10-10T13:31:09.764Z',N'Juston','2009-08-13T01:46:58.242Z',N'Kling',N'862-098-2112 x275','Maxine_Gleason@ezra.co.uk');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1994-10-21T01:10:33.349Z',N'Bridgette','2012-07-28T04:27:11.129Z',N'Terry',N'1-327-981-0725 x7018','Angeline_Schaefer@wilford.us');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1982-05-04T02:45:28.726Z',N'Ward','1983-12-07T21:33:20.244Z',N'Huels',N'241-576-3281','Margaretta@hildegard.biz');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2007-08-22T03:11:13.348Z',N'Elenora','2016-02-21T16:30:52.811Z',N'Carter',N'884.015.3754','Samantha.Swaniawski@mario.net');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2013-05-18T22:09:35.097Z',N'Alisa','2006-02-05T23:38:51.531Z',N'Maggio',N'1-138-758-2400','Caesar@joel.com');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1982-03-04T00:10:23.264Z',N'Newton','1980-04-25T06:18:58.808Z',N'Bosco',N'1-507-734-2692 x3224','Randi@jacquelyn.net');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1980-09-19T12:31:54.512Z',N'Estelle','2007-12-22T17:10:10.716Z',N'Wolf',N'(061)841-9196 x123','Jimmie@kelvin.co.uk');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1996-12-21T09:19:50.998Z',N'King','2001-04-26T06:15:55.385Z',N'Strosin',N'(858)430-7163','Carmela@julian.info');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2010-12-09T12:45:00.249Z',N'Ambrose','2002-11-27T02:41:13.337Z',N'Nikolaus',N'(336)806-6829 x621','Aidan@lesly.co.uk');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2014-03-04T22:42:03.879Z',N'Ivy','2006-02-10T09:23:35.301Z',N'Murray',N'1-043-926-8655 x20600','Meagan.Hyatt@josiah.com');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2012-04-02T10:16:03.733Z',N'Thalia','2012-08-26T11:21:43.836Z',N'Wintheiser',N'434-002-4043 x4003','Waino_Metz@norbert.io');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2008-11-21T17:21:21.157Z',N'Bud','1993-09-12T13:33:10.388Z',N'Bergnaum',N'902.282.6341','Dena.Trantow@emanuel.us');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1993-05-03T01:44:50.098Z',N'Manuel','2017-10-10T16:05:04.019Z',N'Pagac',N'941-878-1597','Lucie@julius.org');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1998-06-26T09:42:59.420Z',N'Chet','2017-07-04T13:10:46.727Z',N'Prohaska',N'1-862-179-8821 x297','Holly@delpha.me');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1982-01-26T07:14:28.956Z',N'Violet','2004-02-04T06:49:42.515Z',N'Goodwin',N'(111)195-4334','Daniella.Klocko@brenden.io');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1986-04-06T00:00:15.989Z',N'Carmella','2000-02-09T01:20:26.356Z',N'Thompson',N'1-017-256-8489 x8790','Tamia.Thiel@jody.com');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2003-06-05T00:12:56.262Z',N'Verla','1995-11-16T19:34:29.573Z',N'Quitzon',N'143.810.4884 x98203','Cecelia.Morissette@bonnie.name');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1983-08-20T13:59:53.533Z',N'Creola','1988-11-14T23:52:06.313Z',N'Bauch',N'203-169-3886 x669','Flo_Blick@susanna.com');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1996-04-29T22:34:17.640Z',N'Otha','2010-08-17T11:36:00.547Z',N'Legros',N'309.237.1923','Devan@aaliyah.com');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1988-03-30T04:18:01.409Z',N'Lawson','1990-03-31T19:44:25.946Z',N'Koss',N'857.303.2825 x4204','Jeremie@dedric.name');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2007-09-21T18:22:01.416Z',N'Dulce','1990-10-22T10:12:39.587Z',N'Kiehn',N'437.432.0070 x6376','Kali@tanner.net');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1983-09-14T22:09:10.129Z',N'Fletcher','2003-04-09T08:34:04.722Z',N'Medhurst',N'(269)076-3490','Earnest_Casper@jayne.net');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1984-04-16T09:43:05.000Z',N'Lilly','1981-04-27T00:51:56.862Z',N'Trantow',N'1-893-397-6646','Madisen@lee.us');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1994-01-06T21:35:56.346Z',N'Furman','1987-06-16T18:46:04.806Z',N'Lubowitz',N'790.701.0676 x3153','Lucas@letitia.org');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1988-02-20T13:56:56.776Z',N'Charity','2015-02-28T12:31:07.690Z',N'Williamson',N'(944)374-8745','Hanna@mackenzie.info');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2000-05-09T20:00:56.115Z',N'Rylan','2017-11-14T19:41:12.892Z',N'Feest',N'1-972-481-3373 x4742','Lexi@mallie.name');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2003-03-17T03:34:06.156Z',N'Kaylah','1989-01-17T08:20:03.080Z',N'Mohr',N'035-923-1232 x69437','Dovie_Renner@veronica.io');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2009-02-25T03:14:06.258Z',N'Harold','2013-04-28T05:42:19.990Z',N'Streich',N'(920)757-6365 x8880','Major.Macejkovic@jordon.ca');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2004-08-01T11:43:10.818Z',N'Sanford','2010-02-12T10:23:06.509Z',N'Roob',N'(413)105-8224 x7704','Emmalee@dortha.org');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2000-09-07T17:53:53.755Z',N'Lula','1998-09-27T23:37:47.721Z',N'Gerhold',N'943.782.6034 x875','Shawna@alvah.biz');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1980-07-25T18:26:54.654Z',N'Dedrick','1986-02-26T04:14:02.533Z',N'Bartoletti',N'1-661-809-5641','Malika_Larkin@sage.tv');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2016-11-10T04:29:01.588Z',N'Antonio','1989-07-28T19:21:24.362Z',N'Berge',N'439-990-8902','Gregoria@jo.biz');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2002-03-05T02:31:21.768Z',N'Estevan','2017-06-20T17:38:31.309Z',N'West',N'878-748-2952','Dillan.Sanford@kari.biz');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2002-01-20T11:35:48.705Z',N'Camylle','2003-03-26T01:36:30.767Z',N'Pfannerstill',N'1-959-359-7495 x995','Hyman.Tillman@herminia.me');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1988-12-05T00:14:51.641Z',N'Noble','1981-06-15T00:35:41.827Z',N'Powlowski',N'461.876.4952 x51170','Walton@adaline.us');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1995-09-22T06:45:13.212Z',N'Abby','1995-03-16T14:48:09.206Z',N'O''Conner',N'1-298-659-9629 x8799','Cleveland.Heathcote@felicita.name');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2003-04-12T06:24:27.220Z',N'Landen','1980-08-16T02:05:03.929Z',N'Johnson',N'543.798.8908 x8649','Fanny_Volkman@ike.ca');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2012-11-05T21:06:17.678Z',N'Kade','1990-03-24T03:00:15.526Z',N'Schimmel',N'622-761-5000 x792','Lemuel_Rosenbaum@bailey.me');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2011-04-27T08:29:18.763Z',N'Oral','2018-01-21T19:59:08.204Z',N'Von',N'1-306-031-8304 x635','Marielle@diamond.me');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1986-06-05T05:31:06.693Z',N'Michale','2007-05-21T19:47:46.696Z',N'Wisozk',N'(367)869-0303','Danika@heber.info');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1985-08-28T17:54:05.081Z',N'Bertram','2012-02-06T02:58:41.511Z',N'Roberts',N'297-546-3724','Dina@chesley.io');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1997-04-16T23:05:20.706Z',N'Maeve','2003-11-28T01:37:19.774Z',N'Kutch',N'001.764.2794 x2932','Oliver@dalton.tv');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2012-09-14T16:10:12.532Z',N'Linnie','2013-09-13T13:30:09.315Z',N'Schmidt',N'093-946-9629 x101','Grant@samantha.name');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2013-01-18T12:17:00.207Z',N'Alan','2014-01-18T19:45:25.492Z',N'Pacocha',N'873-038-7683','Mavis@wilburn.biz');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1986-09-14T12:14:27.924Z',N'Alexandrine','1995-07-06T09:38:23.807Z',N'Morar',N'183-553-3543 x01696','Mekhi.Zboncak@dee.name');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1996-12-28T05:13:31.146Z',N'Davon','1981-11-12T01:53:07.955Z',N'Stark',N'977-482-0795','Agustina_Corkery@merritt.net');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1982-10-23T02:06:00.788Z',N'Albina','2001-10-15T05:00:39.606Z',N'Haley',N'1-980-469-1900 x035','Bernard_Corwin@destin.org');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1997-04-27T21:05:09.328Z',N'Xavier','1983-12-10T15:22:00.652Z',N'Bailey',N'514-258-6732 x98966','Mariela_Reichert@edmund.me');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2005-08-19T17:03:30.232Z',N'Crystel','1982-06-06T03:57:55.092Z',N'Kris',N'(169)025-6694 x81057','Amely_Hamill@hellen.info');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2007-06-11T18:01:02.815Z',N'Pearlie','2012-01-09T05:22:52.779Z',N'Effertz',N'1-130-603-7423','Aglae@vernie.info');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1984-03-20T06:29:45.515Z',N'Jamil','2004-03-18T03:57:54.675Z',N'Robel',N'(959)327-2821 x11414','Elliott_Rau@demarco.net');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2011-04-11T23:13:21.276Z',N'Terrill','1996-11-01T07:04:57.849Z',N'Klein',N'877.746.3715 x3947','Wilbert@janelle.me');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1994-12-11T00:02:54.305Z',N'Ocie','1999-01-14T06:44:34.764Z',N'Boehm',N'392.126.0602','Dayne@bertrand.io');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2002-01-01T00:40:11.370Z',N'Grady','1981-02-21T11:30:49.044Z',N'Schoen',N'(736)583-0943','Clinton@kale.ca');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1996-09-21T20:20:59.933Z',N'Ona','1995-07-02T12:01:20.521Z',N'Weber',N'(404)522-6501','Joannie_Bode@marietta.us');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1997-11-09T14:19:57.588Z',N'Violette','1988-05-01T05:06:09.629Z',N'Kihn',N'757.161.5148 x4992','Anthony.Auer@jensen.tv');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1990-04-21T20:17:38.013Z',N'Elian','1995-07-26T17:52:22.449Z',N'Sawayn',N'603-621-2321 x0529','Christian.Rice@liliana.org');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2008-10-04T22:15:12.149Z',N'Meghan','2008-10-12T19:47:50.436Z',N'Wolf',N'1-303-113-5233','Joe_Mosciski@aliza.tv');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2015-01-15T16:13:46.475Z',N'Landen','1993-03-20T08:40:56.237Z',N'Berge',N'342.423.4479 x90406','Gerry.Cartwright@wilfrid.tv');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2003-06-21T03:27:07.012Z',N'Roscoe','2011-12-16T09:01:09.951Z',N'Daugherty',N'564.808.5626 x541','Margret@mercedes.io');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1988-04-28T18:37:55.302Z',N'Filiberto','1988-12-19T05:56:19.387Z',N'Lynch',N'277-210-2623 x19196','Elna.Kub@solon.biz');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1985-02-19T09:38:55.760Z',N'Teagan','2013-11-25T23:50:24.767Z',N'Johnson',N'582.464.1367','Junior@meagan.io');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1984-07-17T02:17:50.020Z',N'Malvina','1980-06-07T08:24:10.031Z',N'Pagac',N'791-500-4011','Ernestina.Emard@tyrel.name');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1991-06-12T20:46:48.167Z',N'Urban','2003-05-16T13:33:12.062Z',N'Sawayn',N'(502)500-8480 x1348','Elnora@kathryne.org');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2002-05-02T01:09:41.878Z',N'Quentin','1989-11-24T03:02:31.893Z',N'Lockman',N'(535)213-8115','Florencio@ian.name');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2006-08-25T15:21:41.054Z',N'Lucinda','1996-03-28T06:20:22.763Z',N'Stokes',N'1-076-758-9918 x88834','Hilma@rosendo.co.uk');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2015-03-31T18:32:59.497Z',N'Hal','1994-07-11T14:25:47.319Z',N'Howell',N'515.424.9936','Mozelle_OConner@lola.biz');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1986-08-29T22:24:23.044Z',N'Garrison','1994-09-16T04:01:50.211Z',N'VonRueden',N'1-735-305-1263','Antone@candace.name');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2013-02-24T02:31:36.471Z',N'Aliyah','1988-11-23T23:20:58.445Z',N'Borer',N'425.586.5175 x227','Dejah_OHara@sheridan.io');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2013-04-03T04:09:18.788Z',N'Maximillian','2001-11-20T08:57:22.483Z',N'Crist',N'(210)357-8094 x6527','Alexa_Mueller@flavio.us');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1994-08-07T13:12:34.721Z',N'Vergie','1996-04-09T07:23:56.513Z',N'Conroy',N'(480)855-3468 x9015','Zetta@melvin.tv');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2011-08-30T00:17:22.937Z',N'Zora','1983-03-12T16:05:03.863Z',N'Koss',N'715.406.2285 x1581','Eva@rose.net');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2002-09-28T01:19:21.552Z',N'Patsy','1987-05-11T02:53:16.964Z',N'Greenfelder',N'593-784-4722 x758','Golden_Kub@axel.org');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1991-06-13T08:29:04.827Z',N'Letitia','2001-06-29T22:11:24.475Z',N'Lubowitz',N'413.378.4413','Alexandra.Russel@tara.me');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1981-05-07T18:13:18.748Z',N'Sally','1995-08-26T02:52:02.676Z',N'Conroy',N'434.197.2635 x5072','Antwan@reginald.us');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1987-06-06T05:47:23.305Z',N'Noble','2005-07-27T01:07:02.965Z',N'Ullrich',N'(283)305-7302 x853','Letha.OKon@dessie.us');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1982-04-17T22:36:12.356Z',N'Marley','1982-05-08T02:42:44.213Z',N'Ledner',N'254.051.3432','Kira_Klein@liana.biz');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1986-08-13T09:43:51.480Z',N'Amalia','2006-01-17T00:33:36.190Z',N'Dooley',N'(489)905-0198 x89258','Braulio@annamarie.io');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2012-12-19T04:31:46.233Z',N'Tatyana','1995-11-19T10:04:13.368Z',N'Prohaska',N'484-032-0378 x40821','Melisa.Rempel@leilani.co.uk');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2011-11-20T05:56:15.339Z',N'Ona','2008-10-21T13:22:10.848Z',N'Parker',N'814-362-5813','Sasha_Emard@kamron.ca');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2016-04-08T09:32:06.481Z',N'Katlynn','2015-12-03T06:56:16.184Z',N'Rodriguez',N'577-832-6319 x7174','Adonis.Walter@kristin.tv');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2009-09-18T00:55:36.058Z',N'Dillon','2012-12-04T07:31:26.257Z',N'Block',N'094.395.7797 x765','Macey@myrtice.io');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1982-01-15T20:04:20.648Z',N'June','1986-01-13T01:46:03.753Z',N'Jones',N'543-974-4692 x498','Jacquelyn@aurelie.com');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2017-06-22T15:28:24.845Z',N'Noble','1998-10-29T23:52:44.432Z',N'Stark',N'340-656-7812 x8896','Mae@laurie.ca');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1993-04-21T12:38:05.765Z',N'Ed','1999-05-24T22:35:16.576Z',N'Murphy',N'(908)787-4760 x1835','Shyanne.Reilly@floyd.io');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2009-07-30T21:01:27.921Z',N'Billy','2013-12-29T22:27:14.133Z',N'Wiza',N'089-921-4207 x1953','Jorge_Swaniawski@kian.biz');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2004-02-20T04:40:54.891Z',N'Reginald','1996-10-14T05:53:41.197Z',N'Lind',N'004.057.0160 x167','Emerald@camylle.me');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1996-11-22T23:47:31.298Z',N'Don','2002-09-03T12:25:55.935Z',N'Senger',N'1-411-207-2972','Lisa.Collier@amparo.com');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1982-01-01T23:45:40.362Z',N'Tanner','2017-03-01T23:40:06.957Z',N'Torphy',N'1-928-579-9411 x4304','Lila@paula.us');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1985-08-24T18:29:24.328Z',N'Wilmer','2008-09-01T21:22:59.673Z',N'McCullough',N'(991)647-5237 x44828','Providenci@eldridge.ca');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1989-02-01T10:40:04.763Z',N'Bethel','2000-08-27T08:13:09.173Z',N'Heathcote',N'(789)963-5621','Paula@melyssa.ca');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1995-03-11T04:46:42.607Z',N'Lionel','1988-12-14T02:55:54.127Z',N'Rau',N'960-263-0473 x150','Missouri@annamae.tv');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2003-01-02T17:20:46.606Z',N'Isabel','2013-10-15T03:17:05.762Z',N'Gibson',N'(233)635-6798','Grant@clementine.biz');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2009-12-28T19:21:34.848Z',N'Troy','1997-08-30T15:09:10.229Z',N'Orn',N'(658)038-4590 x1033','Marlene.DAmore@yolanda.ca');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('2012-03-22T10:17:16.524Z',N'Obie','2018-03-06T20:36:30.841Z',N'Witting',N'(120)215-1312 x17515','Talon@lauryn.us');
INSERT INTO People(Updated,FirstName,Created,LastName,Phone,Email) VALUES ('1990-04-22T19:46:16.719Z',N'Cecelia','1985-09-13T13:45:03.654Z',N'Hilpert',N'549.145.5446','Lester.Mitchell@boyd.net');

select * from People 