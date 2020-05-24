use test;
insert into t_campus (campus_id, campus_name, campus_address) values (1,'5校区', '58路494号');
insert into t_campus (campus_id, campus_name, campus_address) values (2,'5校区', '61路442号');
insert into t_campus (campus_id, campus_name, campus_address) values (3,'2校区', '88路414号');
insert into t_campus (campus_id, campus_name, campus_address) values (4,'d校区', '81路5号');
insert into t_campus (campus_id, campus_name, campus_address) values (5,'f校区', '6路241号');
insert into t_profession (profession_id, profession_name, profession_address, profession_campus_id, profession_teacher_id) values (1, '29068专业', '45路280号', null, null);
insert into t_profession (profession_id, profession_name, profession_address, profession_campus_id, profession_teacher_id) values (2, '190f5专业', '23路51号', null, null);
insert into t_profession (profession_id, profession_name, profession_address, profession_campus_id, profession_teacher_id) values (3, '823aa专业', '6路30号', null, null);
insert into t_profession (profession_id, profession_name, profession_address, profession_campus_id, profession_teacher_id) values (4, 'cbab0专业', '68路170号', null, null);
insert into t_profession (profession_id, profession_name, profession_address, profession_campus_id, profession_teacher_id) values (5, 'a65cf专业', '88路160号', null, null);
insert into t_profession (profession_id, profession_name, profession_address, profession_campus_id, profession_teacher_id) values (6, 'f113b专业', '12路42号', null, null);
insert into t_profession (profession_id, profession_name, profession_address, profession_campus_id, profession_teacher_id) values (7, '6df54专业', '94路81号', null, null);
insert into t_profession (profession_id, profession_name, profession_address, profession_campus_id, profession_teacher_id) values (8, '69c0e专业', '96路453号', null, null);
insert into t_profession (profession_id, profession_name, profession_address, profession_campus_id, profession_teacher_id) values (9, 'ba22d专业', '69路238号', null, null);
insert into t_profession (profession_id, profession_name, profession_address, profession_campus_id, profession_teacher_id) values (10, '21468专业', '33路182号', null, null);
insert into t_profession (profession_id, profession_name, profession_address, profession_campus_id, profession_teacher_id) values (11, '28734专业', '19路118号', null, null);
insert into t_profession (profession_id, profession_name, profession_address, profession_campus_id, profession_teacher_id) values (12, 'b721f专业', '39路146号', null, null);
insert into t_profession (profession_id, profession_name, profession_address, profession_campus_id, profession_teacher_id) values (13, '70a8e专业', '32路496号', null, null);
insert into t_profession (profession_id, profession_name, profession_address, profession_campus_id, profession_teacher_id) values (14, 'e0072专业', '42路396号', null, null);
insert into t_profession (profession_id, profession_name, profession_address, profession_campus_id, profession_teacher_id) values (15, 'c30d5专业', '97路312号', null, null);
insert into t_profession (profession_id, profession_name, profession_address, profession_campus_id, profession_teacher_id) values (16, '791bf专业', '23路407号', null, null);
insert into t_profession (profession_id, profession_name, profession_address, profession_campus_id, profession_teacher_id) values (17, '16432专业', '24路243号', null, null);
insert into t_profession (profession_id, profession_name, profession_address, profession_campus_id, profession_teacher_id) values (18, '94280专业', '60路258号', null, null);
insert into t_profession (profession_id, profession_name, profession_address, profession_campus_id, profession_teacher_id) values (19, '98c7d专业', '31路346号', null, null);
insert into t_profession (profession_id, profession_name, profession_address, profession_campus_id, profession_teacher_id) values (20, '23ea7专业', '73路349号', null, null);
insert into t_teacher (teacher_id, teacher_person_id, teacher_person_id_type, teacher_name, teacher_sex, teacher_title, teacher_birthday, teacher_country, teacher_phone_number, teacher_address, teacher_PC, teacher_start_year, teacher_email, teacher_profession_id)
    values ('1', '981097400567907585', '身份证', '93e92', '男', '副教授', '1999-11-11', 'f1bb8', '06728230542', '70路55号', '721941', '1996-7-24', '42415@qq.com', '6');
insert into t_teacher (teacher_id, teacher_person_id, teacher_person_id_type, teacher_name, teacher_sex, teacher_title, teacher_birthday, teacher_country, teacher_phone_number, teacher_address, teacher_PC, teacher_start_year, teacher_email, teacher_profession_id)
    values ('2', '798260521709371007', '身份证', 'a6d5c', '女', '副教授', '2011-9-14', '83810', '96661828970', '8路158号', '113534', '1990-12-21', '28026@qq.com', '7');
insert into t_teacher (teacher_id, teacher_person_id, teacher_person_id_type, teacher_name, teacher_sex, teacher_title, teacher_birthday, teacher_country, teacher_phone_number, teacher_address, teacher_PC, teacher_start_year, teacher_email, teacher_profession_id)
    values ('3', '568214873970804922', '身份证', 'd8a90', '男', '教授', '2017-8-14', '9d83e', '71687637059', '86路397号', '558073', '2012-9-22', '41280@qq.com', '2');
insert into t_teacher (teacher_id, teacher_person_id, teacher_person_id_type, teacher_name, teacher_sex, teacher_title, teacher_birthday, teacher_country, teacher_phone_number, teacher_address, teacher_PC, teacher_start_year, teacher_email, teacher_profession_id)
    values ('4', '964417463507055295', '护照', 'e0568', '男', '教授', '2013-7-13', '6500c', '46900415702', '18路237号', '489468', '2016-12-19', '33651@qq.com', '3');
insert into t_teacher (teacher_id, teacher_person_id, teacher_person_id_type, teacher_name, teacher_sex, teacher_title, teacher_birthday, teacher_country, teacher_phone_number, teacher_address, teacher_PC, teacher_start_year, teacher_email, teacher_profession_id)
    values ('5', '796724674118075720', '护照', '20c88', '男', '教授', '2012-3-24', '1a268', '22240112071', '86路341号', '963060', '2005-7-14', '61391@qq.com', '16');
insert into t_teacher (teacher_id, teacher_person_id, teacher_person_id_type, teacher_name, teacher_sex, teacher_title, teacher_birthday, teacher_country, teacher_phone_number, teacher_address, teacher_PC, teacher_start_year, teacher_email, teacher_profession_id)
    values ('6', '421472728128038903', '护照', '15c33', '男', '副教授', '1994-3-24', '4ae01', '91139735898', '76路421号', '012013', '1993-2-9', '80673@qq.com', '18');
insert into t_teacher (teacher_id, teacher_person_id, teacher_person_id_type, teacher_name, teacher_sex, teacher_title, teacher_birthday, teacher_country, teacher_phone_number, teacher_address, teacher_PC, teacher_start_year, teacher_email, teacher_profession_id)
    values ('7', '433209996891927271', '护照', '95ec6', '男', '教授', '2007-3-22', '8a71d', '73700949872', '91路254号', '590829', '2014-6-26', '50388@qq.com', '20');
insert into t_teacher (teacher_id, teacher_person_id, teacher_person_id_type, teacher_name, teacher_sex, teacher_title, teacher_birthday, teacher_country, teacher_phone_number, teacher_address, teacher_PC, teacher_start_year, teacher_email, teacher_profession_id)
    values ('8', '960977278937106696', '身份证', 'fe1c9', '女', '教授', '2013-1-5', '4637f', '30974910268', '53路416号', '893796', '1999-12-18', '93136@qq.com', '18');
insert into t_teacher (teacher_id, teacher_person_id, teacher_person_id_type, teacher_name, teacher_sex, teacher_title, teacher_birthday, teacher_country, teacher_phone_number, teacher_address, teacher_PC, teacher_start_year, teacher_email, teacher_profession_id)
    values ('9', '366479707535327875', '身份证', '37540', '男', '副教授', '2011-6-27', '87871', '90069901823', '76路397号', '337518', '2011-3-9', '02444@qq.com', '5');
insert into t_teacher (teacher_id, teacher_person_id, teacher_person_id_type, teacher_name, teacher_sex, teacher_title, teacher_birthday, teacher_country, teacher_phone_number, teacher_address, teacher_PC, teacher_start_year, teacher_email, teacher_profession_id)
    values ('10', '042117006353061813', '护照', 'b7d9d', '男', '副教授', '2019-6-3', '99593', '57193205622', '45路55号', '463045', '1991-3-24', '53790@qq.com', '2');
insert into t_teacher (teacher_id, teacher_person_id, teacher_person_id_type, teacher_name, teacher_sex, teacher_title, teacher_birthday, teacher_country, teacher_phone_number, teacher_address, teacher_PC, teacher_start_year, teacher_email, teacher_profession_id)
    values ('11', '197688027440700097', '身份证', '73726', '男', '教授', '2001-5-28', '26c15', '24040412607', '80路342号', '528271', '1993-6-24', '51094@qq.com', '15');
insert into t_teacher (teacher_id, teacher_person_id, teacher_person_id_type, teacher_name, teacher_sex, teacher_title, teacher_birthday, teacher_country, teacher_phone_number, teacher_address, teacher_PC, teacher_start_year, teacher_email, teacher_profession_id)
    values ('12', '034622020248994216', '护照', '12d4f', '女', '教授', '2001-5-6', '08fce', '76421792896', '72路163号', '799633', '2012-9-11', '70635@qq.com', '13');
insert into t_teacher (teacher_id, teacher_person_id, teacher_person_id_type, teacher_name, teacher_sex, teacher_title, teacher_birthday, teacher_country, teacher_phone_number, teacher_address, teacher_PC, teacher_start_year, teacher_email, teacher_profession_id)
    values ('13', '784790410658852492', '身份证', '7aad0', '女', '副教授', '2006-9-21', '55476', '94905549459', '58路265号', '007325', '2018-10-9', '88763@qq.com', '8');
insert into t_teacher (teacher_id, teacher_person_id, teacher_person_id_type, teacher_name, teacher_sex, teacher_title, teacher_birthday, teacher_country, teacher_phone_number, teacher_address, teacher_PC, teacher_start_year, teacher_email, teacher_profession_id)
    values ('14', '364881254293129557', '身份证', '4fded', '女', '教授', '2016-5-19', '685f0', '02639127142', '99路125号', '313710', '1990-9-27', '54628@qq.com', '1');
insert into t_teacher (teacher_id, teacher_person_id, teacher_person_id_type, teacher_name, teacher_sex, teacher_title, teacher_birthday, teacher_country, teacher_phone_number, teacher_address, teacher_PC, teacher_start_year, teacher_email, teacher_profession_id)
    values ('15', '806766609480935029', '护照', 'b63ab', '男', '副教授', '2002-3-15', 'be84f', '20749680390', '58路123号', '489642', '2003-8-10', '07816@qq.com', '12');
insert into t_teacher (teacher_id, teacher_person_id, teacher_person_id_type, teacher_name, teacher_sex, teacher_title, teacher_birthday, teacher_country, teacher_phone_number, teacher_address, teacher_PC, teacher_start_year, teacher_email, teacher_profession_id)
    values ('16', '057508450193594681', '身份证', 'c7678', '女', '教授', '2017-2-2', 'edb68', '01953035672', '85路380号', '385124', '2003-4-23', '12782@qq.com', '3');
insert into t_teacher (teacher_id, teacher_person_id, teacher_person_id_type, teacher_name, teacher_sex, teacher_title, teacher_birthday, teacher_country, teacher_phone_number, teacher_address, teacher_PC, teacher_start_year, teacher_email, teacher_profession_id)
    values ('17', '480820371118903174', '身份证', '282ca', '女', '教授', '1997-1-8', '248f3', '54533534834', '48路428号', '751400', '1991-5-6', '06801@qq.com', '9');
insert into t_teacher (teacher_id, teacher_person_id, teacher_person_id_type, teacher_name, teacher_sex, teacher_title, teacher_birthday, teacher_country, teacher_phone_number, teacher_address, teacher_PC, teacher_start_year, teacher_email, teacher_profession_id)
    values ('18', '600363476907544229', '身份证', 'f53ec', '男', '副教授', '2011-4-18', '57088', '97934705239', '47路371号', '879964', '1993-10-24', '76914@qq.com', '7');
insert into t_teacher (teacher_id, teacher_person_id, teacher_person_id_type, teacher_name, teacher_sex, teacher_title, teacher_birthday, teacher_country, teacher_phone_number, teacher_address, teacher_PC, teacher_start_year, teacher_email, teacher_profession_id)
    values ('19', '679833670465459263', '护照', 'd4eb3', '女', '教授', '2013-1-21', '1e59a', '54333759924', '9路498号', '360440', '2010-8-23', '77961@qq.com', '11');
insert into t_teacher (teacher_id, teacher_person_id, teacher_person_id_type, teacher_name, teacher_sex, teacher_title, teacher_birthday, teacher_country, teacher_phone_number, teacher_address, teacher_PC, teacher_start_year, teacher_email, teacher_profession_id)
    values ('20', '249910998190223971', '身份证', '24f44', '女', '教授', '2020-6-8', 'd5eb4', '51971771329', '10路244号', '049419', '2010-11-19', '17452@qq.com', '8');
insert into t_clazz (clazz_id, clazz_name, clazz_date, clazz_grade, clazz_teacher_id, clazz_profession_id) values (1,'1班', '2018-9-21', '2', '8','12');
insert into t_clazz (clazz_id, clazz_name, clazz_date, clazz_grade, clazz_teacher_id, clazz_profession_id) values (2,'2班', '1996-1-5', '2', '13','16');
insert into t_clazz (clazz_id, clazz_name, clazz_date, clazz_grade, clazz_teacher_id, clazz_profession_id) values (3,'3班', '1997-9-20', '1', '19','18');
insert into t_clazz (clazz_id, clazz_name, clazz_date, clazz_grade, clazz_teacher_id, clazz_profession_id) values (4,'4班', '2020-9-17', '1', '6','1');
insert into t_clazz (clazz_id, clazz_name, clazz_date, clazz_grade, clazz_teacher_id, clazz_profession_id) values (5,'5班', '1997-4-24', '4', '5','16');
insert into t_clazz (clazz_id, clazz_name, clazz_date, clazz_grade, clazz_teacher_id, clazz_profession_id) values (6,'6班', '2000-1-12', '3', '6','2');
insert into t_clazz (clazz_id, clazz_name, clazz_date, clazz_grade, clazz_teacher_id, clazz_profession_id) values (7,'7班', '2018-10-27', '4', '16','6');
insert into t_clazz (clazz_id, clazz_name, clazz_date, clazz_grade, clazz_teacher_id, clazz_profession_id) values (8,'8班', '2009-4-20', '3', '20','7');
insert into t_clazz (clazz_id, clazz_name, clazz_date, clazz_grade, clazz_teacher_id, clazz_profession_id) values (9,'9班', '2005-7-24', '2', '18','14');
insert into t_clazz (clazz_id, clazz_name, clazz_date, clazz_grade, clazz_teacher_id, clazz_profession_id) values (10,'10班', '1995-3-11', '2', '5','10');
insert into t_clazz (clazz_id, clazz_name, clazz_date, clazz_grade, clazz_teacher_id, clazz_profession_id) values (11,'11班', '2010-6-18', '3', '17','17');
insert into t_clazz (clazz_id, clazz_name, clazz_date, clazz_grade, clazz_teacher_id, clazz_profession_id) values (12,'12班', '2010-8-14', '3', '18','16');
insert into t_clazz (clazz_id, clazz_name, clazz_date, clazz_grade, clazz_teacher_id, clazz_profession_id) values (13,'13班', '2003-5-7', '3', '6','10');
insert into t_clazz (clazz_id, clazz_name, clazz_date, clazz_grade, clazz_teacher_id, clazz_profession_id) values (14,'14班', '2000-8-2', '1', '13','14');
insert into t_clazz (clazz_id, clazz_name, clazz_date, clazz_grade, clazz_teacher_id, clazz_profession_id) values (15,'15班', '1990-1-9', '1', '4','4');
insert into t_clazz (clazz_id, clazz_name, clazz_date, clazz_grade, clazz_teacher_id, clazz_profession_id) values (16,'16班', '2002-2-16', '3', '5','3');
insert into t_clazz (clazz_id, clazz_name, clazz_date, clazz_grade, clazz_teacher_id, clazz_profession_id) values (17,'17班', '2012-6-21', '4', '13','15');
insert into t_clazz (clazz_id, clazz_name, clazz_date, clazz_grade, clazz_teacher_id, clazz_profession_id) values (18,'18班', '2011-7-4', '1', '18','13');
insert into t_clazz (clazz_id, clazz_name, clazz_date, clazz_grade, clazz_teacher_id, clazz_profession_id) values (19,'19班', '2013-1-12', '3', '4','7');
insert into t_clazz (clazz_id, clazz_name, clazz_date, clazz_grade, clazz_teacher_id, clazz_profession_id) values (20,'20班', '1995-10-14', '3', '4','13');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('1', '064989957846563573', '身份证', '98a70', '男', '2017-1-8', '3fdc6', '20467634013', '8路441号', '880925', '2008-4-20', '28564@qq.com', '15');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('2', '824057520823587810', '护照', 'fd08f', '女', '1998-9-8', 'cdbdd', '03553020554', '5路63号', '867813', '2011-10-20', '47794@qq.com', '8');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('3', '366963317754540219', '护照', 'ed028', '男', '2003-11-12', '1544f', '05273674854', '100路407号', '029924', '2015-9-26', '14617@qq.com', '19');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('4', '832289070818444064', '护照', 'cac60', '男', '2001-10-24', 'eacc8', '22986935770', '1路442号', '748014', '1999-2-19', '57623@qq.com', '10');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('5', '262225264560667616', '身份证', '095ff', '男', '1998-3-13', '55d69', '47014484025', '57路323号', '585097', '1993-11-12', '85641@qq.com', '9');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('6', '655559107684114929', '护照', '32409', '男', '2020-2-28', 'e58be', '90028310661', '88路120号', '440553', '2016-12-6', '78759@qq.com', '7');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('7', '902545856290078402', '身份证', '921c5', '男', '2011-10-26', 'a7270', '67055506416', '9路255号', '172387', '2009-2-6', '89204@qq.com', '13');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('8', '111471418795203878', '护照', 'c0789', '女', '2019-4-18', '1df70', '96291043945', '13路462号', '276736', '1999-11-10', '02702@qq.com', '9');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('9', '530686263623857414', '身份证', '4b7ec', '男', '1996-6-25', '7d1b8', '72852779530', '77路296号', '360961', '2000-7-1', '81898@qq.com', '15');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('10', '814407066055684372', '身份证', '34425', '男', '1995-3-16', '7d802', '53347792523', '40路463号', '697790', '2002-8-18', '70817@qq.com', '16');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('11', '279314436364431087', '身份证', 'be93d', '男', '1992-5-9', '3a6fa', '31427425881', '68路499号', '871980', '1998-12-27', '21190@qq.com', '3');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('12', '704811890559592400', '护照', '1ef98', '女', '1990-1-22', '896db', '53703505609', '22路103号', '013876', '2008-6-27', '60944@qq.com', '9');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('13', '824304242256302698', '护照', '0b225', '男', '2008-1-15', '86b3f', '25230529922', '75路4号', '518037', '2009-11-25', '48553@qq.com', '17');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('14', '198527008658198464', '身份证', '6876c', '男', '1997-4-1', '0e5c2', '37398646917', '55路82号', '573535', '1998-3-3', '85734@qq.com', '16');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('15', '409705423647835904', '护照', 'f2dd1', '女', '2002-7-3', 'b846a', '58242999411', '60路327号', '523592', '1998-8-16', '83514@qq.com', '14');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('16', '505187108577149726', '身份证', '0ee9a', '女', '2012-2-11', '3820e', '08652708559', '2路316号', '240536', '2019-2-20', '72703@qq.com', '6');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('17', '467186238432605159', '身份证', '0599b', '男', '1992-7-5', '679e2', '06105001038', '46路232号', '287531', '1999-10-18', '35818@qq.com', '9');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('18', '776797957915172149', '护照', '04158', '男', '2002-12-6', '02e7a', '92891928389', '32路168号', '036717', '2008-12-8', '03395@qq.com', '11');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('19', '857951934519624161', '身份证', '336e2', '男', '2015-12-5', '2a3f9', '67244113480', '99路255号', '178705', '2010-8-13', '04811@qq.com', '4');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('20', '998403729229544010', '护照', '8f4cd', '男', '2018-9-1', '06011', '36209122379', '22路103号', '301704', '2001-1-7', '32415@qq.com', '3');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('21', '669357393797620192', '身份证', 'aa2f0', '男', '2018-7-3', '80c31', '50254764470', '4路372号', '202347', '2011-5-10', '98877@qq.com', '19');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('22', '989642079178077071', '护照', 'ca045', '女', '2011-2-25', '44d55', '09171948496', '5路338号', '006584', '2010-1-2', '85454@qq.com', '1');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('23', '921338103976734109', '身份证', 'a5cb2', '女', '2014-12-22', 'bb5ac', '34314250907', '38路215号', '306968', '2019-10-6', '47035@qq.com', '18');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('24', '731547172227284899', '身份证', '179a0', '男', '2004-11-17', '6422a', '60240632525', '87路269号', '595940', '2017-10-18', '98154@qq.com', '7');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('25', '934561819102097563', '身份证', '75459', '男', '1995-4-21', '06678', '48492100819', '7路309号', '132318', '2001-7-9', '93937@qq.com', '19');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('26', '028603435378157993', '护照', '4b97e', '女', '1993-1-15', '44950', '85509189409', '24路36号', '734486', '1990-6-3', '70043@qq.com', '16');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('27', '766840085226149233', '身份证', 'a5f34', '女', '1994-5-13', 'ea98b', '82605082971', '86路16号', '219045', '2019-2-8', '40955@qq.com', '18');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('28', '614481676497209018', '护照', '8483f', '男', '2000-9-18', '60b14', '12964434414', '84路335号', '914373', '2015-3-4', '64578@qq.com', '12');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('29', '627303159334194632', '身份证', 'df2a9', '女', '1998-11-2', 'c91e7', '28120973735', '10路3号', '082548', '2017-6-9', '76036@qq.com', '11');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('30', '864150739766875777', '身份证', 'a305a', '女', '1996-1-2', 'a2939', '39472535297', '2路468号', '470709', '2010-9-15', '16353@qq.com', '9');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('31', '798475424130208543', '护照', '3e23d', '女', '1992-3-7', 'cff1e', '90505962000', '42路353号', '238007', '2015-3-20', '16676@qq.com', '8');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('32', '972911371230684988', '身份证', 'd88e1', '男', '2016-2-14', '44284', '30938372093', '40路22号', '402257', '2018-9-2', '88952@qq.com', '17');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('33', '046872731171328742', '护照', '7a5a5', '女', '2018-5-25', '154aa', '62519776449', '69路493号', '735814', '2008-12-8', '08635@qq.com', '15');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('34', '489823927992621183', '护照', '4bdb1', '男', '2003-1-3', 'be5c5', '48899395638', '47路21号', '012565', '2020-1-10', '75156@qq.com', '9');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('35', '674160318796743202', '身份证', '94b44', '女', '1996-2-6', '6b0bd', '59147004205', '84路178号', '336891', '2010-9-27', '74312@qq.com', '13');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('36', '753960980226005296', '护照', '0b467', '女', '1990-7-26', '254d2', '29591659890', '99路354号', '007350', '2019-3-18', '01598@qq.com', '16');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('37', '360966256431052494', '身份证', '62d86', '男', '1999-5-25', 'b524e', '70148927624', '69路252号', '531261', '2001-10-2', '56152@qq.com', '18');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('38', '347587963916034557', '身份证', '0532f', '男', '2020-8-20', 'c63ed', '66481391311', '11路465号', '085697', '2017-6-4', '02068@qq.com', '19');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('39', '786159884704639385', '护照', '77054', '男', '2016-1-25', '1bbc2', '66527352442', '13路409号', '321357', '1998-6-18', '91484@qq.com', '11');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('40', '158851513742031165', '护照', '4e9ef', '女', '2001-1-22', 'abec6', '16650397710', '45路39号', '550539', '2011-11-19', '43136@qq.com', '17');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('41', '278223254955532881', '身份证', '484b5', '女', '2005-10-24', 'b0a29', '05846974576', '26路210号', '520124', '1998-6-20', '89028@qq.com', '14');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('42', '583702536035876496', '护照', 'c5ce6', '女', '2019-11-13', '51863', '71149224473', '68路32号', '790776', '1990-9-25', '12161@qq.com', '8');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('43', '594756132241010196', '护照', '23828', '男', '2001-7-4', '037c3', '53274881027', '82路59号', '195708', '2009-4-19', '58132@qq.com', '15');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('44', '794673093754269919', '身份证', '79f46', '女', '2018-7-4', 'ee125', '25059158415', '68路49号', '392862', '1993-6-9', '32306@qq.com', '20');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('45', '842324703708713580', '护照', '0fb83', '女', '2009-7-22', 'd545f', '24006895694', '18路325号', '287741', '1993-4-14', '73017@qq.com', '16');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('46', '758366637332077706', '护照', '672ca', '女', '2002-2-27', '015e2', '46741786709', '64路340号', '277615', '1994-7-18', '94207@qq.com', '20');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('47', '190937441453934217', '身份证', 'ece10', '男', '2012-12-10', 'a5033', '05891723639', '83路436号', '299591', '1994-4-3', '46053@qq.com', '2');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('48', '859213090990521950', '身份证', '7d2bd', '男', '1992-10-27', 'f27c4', '54494042491', '17路338号', '742102', '1991-12-27', '79048@qq.com', '10');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('49', '680527760087310715', '护照', 'd80bb', '女', '1992-8-15', 'c1098', '01277832416', '73路458号', '731971', '2012-3-20', '88252@qq.com', '2');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('50', '560157579481149844', '身份证', '946be', '男', '1998-7-26', '1672c', '08387533653', '96路228号', '618426', '2001-4-24', '73018@qq.com', '18');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('51', '330850412433907293', '护照', '406d1', '女', '2012-11-7', 'b3334', '27654461355', '48路267号', '635198', '2000-4-10', '70574@qq.com', '14');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('52', '915930654451178610', '身份证', '624fd', '女', '2007-12-28', '68227', '95066387266', '41路451号', '964632', '1999-7-11', '06641@qq.com', '10');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('53', '332833857999265474', '身份证', 'f118d', '女', '1997-8-5', '34643', '33464843011', '13路209号', '101765', '2011-9-13', '07802@qq.com', '10');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('54', '607665528521604772', '身份证', '743a9', '男', '2010-2-15', '98ccb', '34061392919', '40路24号', '219789', '2009-11-2', '84027@qq.com', '14');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('55', '963821646890331962', '身份证', 'f2700', '女', '2001-10-2', '841ef', '56699337378', '43路162号', '690425', '2000-7-13', '10057@qq.com', '13');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('56', '500246733758775574', '护照', '8a3cf', '男', '2014-6-24', 'db835', '82475628540', '44路278号', '242532', '1996-7-7', '22146@qq.com', '18');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('57', '625039902741196115', '身份证', '1759e', '女', '1991-5-11', '86e43', '93297181386', '45路310号', '776024', '2012-8-9', '50607@qq.com', '6');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('58', '166864151489051041', '身份证', 'd0318', '女', '2003-7-14', '499ca', '08191878885', '81路401号', '145955', '2002-4-17', '64038@qq.com', '11');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('59', '651078986619607213', '身份证', '5f8ec', '男', '2009-2-7', '0e90b', '13106866742', '28路40号', '099640', '2005-4-23', '10700@qq.com', '12');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('60', '616178168242316898', '护照', 'ae738', '男', '2011-3-8', 'f9df9', '07711356564', '33路145号', '848265', '2019-7-16', '51887@qq.com', '5');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('61', '427427659715871298', '护照', '5af4d', '男', '2019-1-14', '497bd', '77006583944', '60路101号', '027586', '2007-10-14', '29713@qq.com', '3');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('62', '041802422484221692', '护照', '2db37', '男', '1990-5-10', '1a19a', '92391065911', '8路31号', '797823', '2005-6-22', '19610@qq.com', '16');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('63', '428892599790077737', '护照', 'f5481', '男', '2000-12-24', '077ba', '08042074968', '12路143号', '627123', '2020-7-26', '34405@qq.com', '8');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('64', '404383710623164988', '身份证', 'a3066', '男', '1993-12-28', '63ed0', '28862847695', '90路161号', '660015', '2006-3-26', '91619@qq.com', '3');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('65', '922360562690530411', '护照', '69b84', '女', '1996-2-22', 'cefad', '21469133499', '76路236号', '773191', '2006-6-23', '11203@qq.com', '20');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('66', '065164065081217302', '护照', '3d388', '男', '2016-11-13', 'cddee', '97020534316', '51路78号', '248586', '1997-6-9', '06697@qq.com', '11');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('67', '556855583131998930', '护照', 'dd0ff', '女', '2001-12-2', '57bec', '97959377437', '94路321号', '016854', '2004-3-20', '20638@qq.com', '8');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('68', '110651511403024220', '身份证', '75c53', '男', '2018-3-24', 'ce5ce', '23617742223', '19路333号', '573227', '1993-1-24', '06906@qq.com', '6');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('69', '968922272845379328', '护照', '34345', '男', '2007-8-17', 'ef80d', '22845446758', '34路155号', '519258', '2016-5-8', '80998@qq.com', '4');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('70', '042087153540265184', '身份证', 'c052c', '男', '2007-3-16', '6e5d9', '69003872381', '73路326号', '243971', '2011-9-12', '15161@qq.com', '7');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('71', '316689947473525919', '身份证', '17d54', '女', '2017-4-23', '20cea', '08003256975', '49路59号', '365931', '2008-12-24', '75320@qq.com', '6');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('72', '053513533123169156', '身份证', '70b83', '男', '2013-9-19', 'e7787', '51101652367', '42路444号', '463862', '2018-11-5', '27479@qq.com', '2');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('73', '217536181246125302', '身份证', '04182', '女', '2015-9-3', '9a0db', '60248153766', '57路39号', '120362', '2012-6-4', '26979@qq.com', '19');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('74', '682190463616160468', '护照', 'd60d7', '男', '2006-4-4', 'a0e3b', '97101613499', '64路170号', '207547', '2016-4-11', '80275@qq.com', '3');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('75', '205658425791552923', '身份证', 'c3591', '男', '2007-5-2', 'cdec7', '73280100539', '74路309号', '495798', '1999-3-13', '60035@qq.com', '13');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('76', '299525081950423627', '身份证', '06e02', '女', '1993-6-13', 'dde77', '49430526932', '80路378号', '951592', '2010-5-21', '35737@qq.com', '9');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('77', '564933175520742307', '护照', '60db2', '男', '2001-5-23', 'f8665', '03192581128', '48路322号', '054374', '2012-9-24', '39812@qq.com', '11');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('78', '333086583924002294', '护照', 'e5338', '男', '2020-2-20', '1fd7c', '04932316528', '12路191号', '402268', '2014-8-1', '27551@qq.com', '6');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('79', '376137468462281955', '身份证', '1a429', '男', '2015-7-8', '02798', '72605277945', '71路262号', '247133', '1998-5-8', '87419@qq.com', '12');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('80', '461003634739685852', '护照', 'ee195', '女', '1990-5-21', '5cea0', '84306706079', '54路387号', '901326', '2020-10-4', '41238@qq.com', '19');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('81', '120084186165011290', '护照', '3f465', '女', '2000-12-1', 'b4052', '40032288002', '96路366号', '808575', '2017-2-6', '90710@qq.com', '20');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('82', '439531315271922857', '护照', '0e99a', '女', '2019-9-22', 'c8e20', '07597955718', '79路187号', '030463', '1990-7-5', '09979@qq.com', '20');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('83', '039885249074381217', '护照', 'a0921', '女', '2009-11-21', '897e1', '55315955616', '28路404号', '855409', '2004-2-4', '58289@qq.com', '14');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('84', '356425450812697554', '护照', '5be64', '男', '1998-3-26', '26edd', '12339428383', '32路481号', '156505', '2011-3-8', '06812@qq.com', '10');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('85', '373724590510449432', '护照', 'b2951', '男', '2007-4-10', 'b0944', '78936303505', '64路4号', '828290', '1995-6-2', '33269@qq.com', '5');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('86', '629450385811186783', '护照', 'e86e4', '女', '2009-12-5', '1975b', '15932743524', '49路397号', '862609', '2015-2-15', '19927@qq.com', '11');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('87', '210498664869373764', '身份证', 'fd841', '女', '1996-3-6', '6e979', '84913154082', '97路337号', '429219', '2018-9-14', '44683@qq.com', '18');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('88', '229846760137613697', '护照', 'bb8ff', '女', '2009-5-25', '76888', '75341742267', '58路202号', '318848', '1990-2-18', '30572@qq.com', '13');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('89', '474499163742042051', '身份证', '51ac7', '女', '1990-2-20', 'a310b', '01112104050', '51路414号', '115906', '2015-12-13', '20885@qq.com', '18');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('90', '116595471231058472', '身份证', '7dc83', '男', '2020-11-11', 'c5bdd', '16916407951', '11路329号', '673830', '1990-3-8', '53537@qq.com', '14');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('91', '388865652841550048', '护照', 'b9a87', '女', '2012-9-23', 'aec16', '68604617912', '33路282号', '438547', '2012-1-19', '97006@qq.com', '8');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('92', '819648192194812056', '护照', '71ea6', '男', '1990-6-15', '8b78a', '22530175360', '84路108号', '761999', '2020-10-3', '11524@qq.com', '10');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('93', '768740785993336812', '护照', 'd2718', '女', '2012-4-25', '6dd9c', '24008418386', '53路499号', '369872', '1997-7-11', '72198@qq.com', '11');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('94', '335049042875241834', '护照', '15fb9', '男', '1996-2-7', 'd7165', '16312740655', '38路320号', '023175', '2012-1-24', '93590@qq.com', '19');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('95', '796939801557687110', '护照', '89966', '男', '2006-8-6', '0d7cf', '58560805652', '57路70号', '450052', '1997-8-11', '49907@qq.com', '20');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('96', '143841203012846464', '护照', '3bda6', '女', '2000-7-7', 'fac84', '22288029063', '56路37号', '828466', '2003-1-28', '97580@qq.com', '12');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('97', '723331684566498800', '护照', '2c284', '男', '2010-5-22', '6b813', '37039128573', '69路143号', '263362', '2000-3-4', '21621@qq.com', '14');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('98', '451206629045675742', '护照', 'ffe25', '女', '1994-4-5', '76e5e', '87488404014', '57路346号', '352939', '1991-5-15', '40777@qq.com', '13');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('99', '191818073264749869', '身份证', 'ea68c', '女', '2006-3-9', '4ef15', '92075570366', '8路389号', '840552', '2008-3-16', '32766@qq.com', '1');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('100', '975929277474072797', '身份证', '28617', '女', '1995-6-7', 'c4bb2', '94821997745', '52路74号', '939246', '2005-8-22', '10163@qq.com', '5');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('101', '639400152251308736', '身份证', 'c9dec', '男', '2007-5-2', '56860', '94869986052', '96路219号', '493210', '1994-10-12', '45001@qq.com', '19');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('102', '919470992018332411', '护照', 'f8517', '女', '1994-5-13', 'f0ac2', '02721265564', '81路381号', '959176', '2014-1-20', '25247@qq.com', '18');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('103', '827703103427871617', '身份证', '49476', '男', '2002-7-28', 'cd2cb', '41143483163', '59路383号', '851130', '2018-2-27', '71152@qq.com', '8');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('104', '236433639026185534', '身份证', '2b845', '女', '2006-4-16', 'cca45', '48147607537', '61路41号', '834683', '2006-6-10', '76032@qq.com', '7');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('105', '621807055321913244', '护照', '38e2f', '男', '2016-3-15', '0b429', '94052586260', '63路405号', '968235', '2014-7-19', '33979@qq.com', '19');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('106', '788467445847126207', '护照', '2cdb5', '男', '2009-1-20', '27200', '17212207201', '20路399号', '579359', '1999-1-7', '70497@qq.com', '11');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('107', '886047689177932761', '身份证', '27a71', '男', '2002-10-28', '2766e', '49520869789', '50路347号', '359257', '1993-7-15', '99857@qq.com', '11');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('108', '424857251652491352', '护照', 'ec953', '女', '1995-4-10', 'f660f', '52578338210', '62路281号', '706985', '2002-8-15', '07479@qq.com', '2');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('109', '670180665182843541', '身份证', 'acc04', '男', '2001-7-8', '73792', '50300001873', '91路250号', '451648', '2009-5-20', '38274@qq.com', '6');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('110', '394800257526952498', '护照', 'ee6d3', '男', '2016-10-23', '10c08', '03496200143', '13路160号', '248672', '2002-4-13', '47831@qq.com', '10');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('111', '034937369956674424', '护照', '257e0', '女', '1992-6-4', '7a760', '66734648398', '54路70号', '225839', '2020-7-15', '24976@qq.com', '19');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('112', '161727813066598008', '身份证', '526ac', '女', '1998-12-9', 'cf666', '07132809248', '26路402号', '988033', '1999-5-27', '81465@qq.com', '17');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('113', '711303332547275144', '身份证', '84695', '男', '2003-2-16', '7736e', '69223313936', '33路224号', '147842', '1993-8-4', '03620@qq.com', '7');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('114', '953091736389379981', '护照', 'a4ab6', '男', '1995-12-22', '5a7af', '67665320181', '50路182号', '452185', '2001-7-4', '41435@qq.com', '4');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('115', '839100828033712544', '护照', '1e3d4', '女', '2009-4-22', '2dac2', '10043948436', '55路437号', '040547', '2017-2-12', '85562@qq.com', '20');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('116', '170750679507209002', '身份证', '947e0', '男', '2020-10-12', '9ed71', '68520818995', '16路132号', '420988', '2006-12-6', '31534@qq.com', '20');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('117', '839448115899926601', '身份证', '7e3cd', '男', '1994-9-4', '554cb', '30555643331', '37路299号', '111503', '1996-4-20', '94631@qq.com', '15');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('118', '180373883676912166', '身份证', 'fa3e4', '女', '2017-1-12', '9e596', '94919990668', '75路96号', '619197', '2019-11-18', '13892@qq.com', '11');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('119', '383295513593731996', '身份证', '487f0', '男', '1990-3-26', '90cff', '55463542614', '89路256号', '622659', '2000-9-4', '82964@qq.com', '6');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('120', '893349539670922736', '护照', '83079', '男', '1999-6-20', '4644b', '47354958244', '12路244号', '625014', '2008-8-27', '21557@qq.com', '13');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('121', '720992803335869232', '身份证', 'a30fe', '女', '2005-1-1', 'be296', '82564742058', '22路368号', '311039', '2013-7-21', '00723@qq.com', '11');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('122', '655230903768124907', '身份证', 'c4041', '女', '1993-1-23', 'd9f9c', '49298574556', '95路493号', '192714', '2000-5-27', '90647@qq.com', '14');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('123', '965630714678069619', '身份证', 'e7cd6', '男', '2018-11-8', '31758', '01710973638', '71路228号', '130885', '1994-9-23', '94876@qq.com', '3');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('124', '187538380554249137', '身份证', '4d3a2', '女', '2015-5-19', '5dc27', '58625010827', '21路267号', '173298', '2012-9-12', '02043@qq.com', '15');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('125', '485677279256516997', '身份证', '81975', '男', '2020-10-19', '25b49', '94530900371', '88路242号', '815234', '2007-9-17', '41552@qq.com', '1');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('126', '834717747066508974', '护照', 'ba710', '女', '1998-3-18', '2719b', '86888936554', '84路82号', '285214', '2016-2-20', '09999@qq.com', '13');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('127', '242354119695496437', '身份证', '3f58a', '女', '2018-1-26', '41bca', '97266591152', '93路247号', '731072', '1990-1-16', '22180@qq.com', '8');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('128', '393760062316803144', '护照', 'c36e5', '女', '2006-3-20', '26d19', '15691906858', '72路154号', '225793', '2008-11-19', '65723@qq.com', '13');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('129', '562879233545690829', '护照', '705ba', '女', '2011-7-1', 'e5da3', '31386185429', '26路63号', '237849', '2012-2-4', '41423@qq.com', '16');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('130', '500100728875642951', '护照', '27b4c', '男', '1997-8-11', 'be55d', '96198288241', '18路214号', '421934', '2000-11-27', '69029@qq.com', '18');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('131', '965197220382094740', '护照', '52810', '女', '2005-8-5', '0079b', '38019551121', '41路485号', '689682', '1996-1-12', '57557@qq.com', '11');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('132', '057078026448194932', '身份证', '1703d', '男', '1999-1-4', '85939', '66357664300', '82路29号', '247880', '2016-8-14', '09182@qq.com', '8');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('133', '789557785894063609', '护照', '4527c', '女', '2005-5-9', '34a60', '51690536008', '56路34号', '327551', '2015-2-22', '06915@qq.com', '5');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('134', '360148144554308803', '护照', '87f91', '女', '2005-10-22', '76838', '63670419055', '90路9号', '561159', '1993-12-25', '18574@qq.com', '6');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('135', '885430769434438499', '身份证', '00ed5', '男', '2005-6-3', '73994', '94567335297', '99路481号', '133656', '2002-5-22', '84576@qq.com', '11');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('136', '413346253437459874', '身份证', 'dcfd0', '男', '2013-8-21', '5b1cc', '52981468049', '69路28号', '769123', '2016-7-9', '05090@qq.com', '13');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('137', '539879917751761260', '身份证', 'f1b68', '男', '2001-6-2', '3c31d', '30654523996', '29路13号', '459580', '1999-12-27', '84657@qq.com', '10');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('138', '075380284419144008', '身份证', '9ad3c', '女', '2014-1-16', '8ffef', '49006244619', '98路24号', '379737', '1992-3-27', '18150@qq.com', '12');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('139', '266082062313368518', '护照', 'f346f', '男', '2009-6-18', 'c4844', '60704231081', '71路14号', '013544', '2015-5-22', '23453@qq.com', '4');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('140', '875446128369043194', '护照', 'c0cc0', '男', '1994-5-21', '7c097', '53744823660', '88路41号', '642948', '2020-9-25', '81438@qq.com', '14');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('141', '989299946758918999', '护照', '22fc3', '男', '1999-6-27', '4d4ba', '73453483665', '40路225号', '186093', '2016-4-5', '02996@qq.com', '18');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('142', '996931693295563933', '护照', '90e67', '女', '2005-4-20', 'f5244', '85678092516', '48路479号', '852673', '1990-4-5', '52780@qq.com', '13');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('143', '211776682987592958', '护照', 'a8ee1', '女', '2010-5-8', '19d94', '93927475727', '19路161号', '129380', '1996-9-2', '42263@qq.com', '14');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('144', '844496405995168315', '护照', '260b5', '女', '2013-1-1', '4c247', '33159227632', '33路434号', '385764', '2009-11-8', '98085@qq.com', '18');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('145', '095396954584525081', '身份证', '652cb', '女', '1995-1-7', '22522', '00938538242', '30路435号', '982563', '2007-9-8', '21022@qq.com', '5');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('146', '027482354096010658', '身份证', 'a9b09', '女', '2002-11-4', '00836', '66905312902', '51路385号', '188153', '1994-10-5', '10386@qq.com', '12');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('147', '494648811654332231', '身份证', '2e166', '女', '1999-1-11', 'a70d7', '93570245055', '67路328号', '585688', '2007-6-4', '82271@qq.com', '3');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('148', '464723279359585516', '身份证', 'e6db8', '男', '2008-8-13', '98072', '59783397310', '46路421号', '931547', '2016-7-23', '78178@qq.com', '16');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('149', '468513295942226232', '身份证', '83a01', '女', '2013-6-26', 'bbf12', '61077284100', '89路122号', '747758', '2012-8-1', '78041@qq.com', '12');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('150', '747755522970204449', '身份证', 'ab8a1', '男', '2010-12-10', 'f1d32', '51745276910', '93路482号', '258774', '1998-2-19', '99280@qq.com', '15');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('151', '626763351522098976', '护照', '333a6', '女', '2018-3-19', 'f972c', '17041547704', '9路219号', '798630', '1993-3-7', '49006@qq.com', '3');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('152', '210186005718536893', '护照', '8e928', '女', '2013-11-13', 'ebdfa', '62402473070', '52路160号', '203970', '2007-1-2', '69074@qq.com', '7');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('153', '563546342611347534', '护照', 'a5e18', '女', '1992-9-16', '1d3f4', '86130240687', '54路483号', '031230', '2005-9-5', '52723@qq.com', '19');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('154', '872616690838303085', '护照', 'a416e', '女', '2009-5-23', '1ba13', '79205695223', '17路482号', '411122', '2018-11-26', '28639@qq.com', '10');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('155', '153855712743036764', '护照', '29a71', '男', '1998-7-9', '3a316', '55235162182', '88路272号', '999647', '1994-1-2', '63775@qq.com', '2');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('156', '876525889705832115', '护照', 'e199d', '女', '2006-1-10', 'ab756', '80748494026', '15路77号', '650891', '1991-11-7', '58235@qq.com', '1');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('157', '096590108278242260', '身份证', 'd4096', '女', '2009-2-25', '92f52', '47121274642', '12路62号', '010323', '2016-11-8', '42619@qq.com', '14');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('158', '552811659837293816', '身份证', 'f260c', '女', '2019-5-14', '6d00c', '64564273630', '48路346号', '864051', '2001-8-18', '36742@qq.com', '16');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('159', '822263074980903566', '身份证', 'eb78b', '男', '2009-5-27', '17352', '45061925293', '18路476号', '907371', '1993-3-28', '48949@qq.com', '4');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('160', '093889468949901575', '身份证', 'd89d6', '男', '2003-10-18', 'c18ed', '54254897903', '87路59号', '267654', '2017-2-20', '01833@qq.com', '16');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('161', '361181397551007239', '身份证', '327ac', '男', '2011-6-23', 'cc64c', '72408053137', '13路400号', '502163', '2005-5-13', '35171@qq.com', '13');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('162', '505663083600498625', '护照', '192fd', '男', '1996-8-23', '12737', '47022281263', '84路165号', '921546', '2020-8-15', '45867@qq.com', '1');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('163', '887800972432780935', '身份证', 'fa24c', '男', '1996-9-13', '82078', '05837262910', '81路338号', '527533', '1994-6-9', '84228@qq.com', '17');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('164', '236787824692414173', '身份证', '8faeb', '男', '2002-11-2', 'b9604', '94735702102', '22路30号', '905410', '2012-10-17', '37132@qq.com', '17');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('165', '793372007588717503', '护照', '06a63', '女', '2003-2-21', '0598a', '48365382318', '70路22号', '188139', '2016-8-23', '45794@qq.com', '19');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('166', '837177777904179635', '身份证', '49e58', '男', '1999-11-18', 'e00ee', '45490787029', '50路94号', '169508', '1992-8-17', '90380@qq.com', '18');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('167', '122221814760633618', '身份证', 'dc26c', '男', '2003-2-7', '30d63', '93400035208', '48路442号', '633499', '2012-11-20', '02749@qq.com', '8');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('168', '753287166359358643', '身份证', '98af7', '女', '2013-4-19', '8cce2', '57229160636', '3路101号', '887427', '2005-5-3', '86956@qq.com', '13');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('169', '964409550306542886', '身份证', '55b45', '女', '1991-6-27', 'd5416', '75631124027', '80路69号', '988254', '2018-10-21', '42036@qq.com', '6');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('170', '035380938159680484', '护照', '68d79', '男', '1990-12-4', '66a76', '78099318042', '86路21号', '937701', '2019-9-22', '29496@qq.com', '4');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('171', '335937129310870267', '护照', 'a405b', '男', '1999-6-9', '85097', '98296419816', '89路218号', '035114', '2006-6-8', '25500@qq.com', '20');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('172', '406941030952990613', '身份证', 'e20b6', '女', '2010-8-22', '6818c', '36058968335', '82路350号', '990331', '2017-12-27', '56000@qq.com', '16');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('173', '597994534945791010', '身份证', '7dd9b', '男', '2010-3-13', 'fe9b8', '01123371225', '29路460号', '377600', '1999-10-10', '23359@qq.com', '14');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('174', '337593407858213255', '护照', 'ace85', '男', '1997-1-7', '0358b', '03479079682', '28路170号', '868648', '2012-10-21', '87634@qq.com', '11');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('175', '930573868545134167', '身份证', '01df9', '女', '1995-12-23', '87aa6', '15940279945', '71路108号', '617914', '2002-12-10', '05674@qq.com', '10');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('176', '819804410584989880', '护照', '58918', '男', '2016-2-17', '82924', '97115794902', '70路237号', '884897', '1996-1-11', '80207@qq.com', '1');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('177', '155632819817523256', '护照', '04f96', '女', '2012-7-22', 'a1e70', '51086264241', '93路42号', '632511', '2012-5-19', '62339@qq.com', '15');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('178', '056842991886088422', '护照', '91ffc', '女', '2014-12-14', 'd0fda', '86943471377', '75路173号', '456106', '2004-10-10', '00361@qq.com', '15');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('179', '385036898384069636', '身份证', 'ef278', '女', '2006-7-27', '1c164', '75210457895', '52路379号', '424028', '2006-8-20', '60746@qq.com', '13');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('180', '275215541819211291', '护照', 'db2bd', '女', '1990-10-27', '1cf5f', '86645860980', '36路265号', '275167', '1995-7-27', '11378@qq.com', '11');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('181', '777042995263667060', '护照', '34f33', '女', '1994-2-17', '9b505', '51472694463', '56路458号', '017353', '2006-2-23', '30754@qq.com', '20');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('182', '100994682492244069', '护照', '79662', '男', '2013-3-9', 'd34c9', '71864909590', '86路85号', '379803', '2000-1-22', '59170@qq.com', '11');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('183', '852414668500680197', '护照', '90ecf', '男', '1999-9-19', '6a2e8', '36268589366', '4路212号', '714166', '1991-6-9', '78644@qq.com', '17');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('184', '063716110759344274', '护照', '4cae8', '男', '2010-1-11', '30c31', '32962055219', '41路72号', '280545', '2002-9-7', '52322@qq.com', '12');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('185', '688831961629372615', '护照', '414ed', '女', '1995-12-26', 'ed51a', '52886868260', '26路316号', '441784', '1999-3-23', '86764@qq.com', '6');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('186', '657261765757506230', '身份证', '7c7d3', '女', '2000-3-4', 'c5f52', '48447072542', '67路108号', '971125', '2017-10-21', '04887@qq.com', '14');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('187', '148630796792852956', '身份证', 'a0ce3', '女', '2019-7-25', 'adc46', '60084321178', '16路447号', '103579', '2005-3-6', '10777@qq.com', '2');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('188', '887945910080920904', '护照', 'a00f8', '女', '1995-8-1', 'd1215', '17386326729', '49路18号', '915791', '2017-4-19', '02495@qq.com', '7');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('189', '645377812759023613', '身份证', '74d4f', '男', '2017-7-24', 'e05d0', '69511214471', '56路201号', '884790', '2014-1-16', '28408@qq.com', '19');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('190', '336874602009040144', '身份证', '540af', '男', '2000-1-20', 'e1af6', '64329364574', '56路283号', '030712', '2010-9-13', '26716@qq.com', '13');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('191', '592050189206631974', '身份证', 'ee475', '女', '1994-6-9', '9e8b3', '59006764658', '34路67号', '879397', '2014-4-2', '38985@qq.com', '17');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('192', '866426161478020879', '身份证', '62f4f', '男', '2013-6-16', '52e72', '05557883635', '82路163号', '061572', '2019-7-5', '91364@qq.com', '1');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('193', '490816563716397236', '身份证', '5d191', '女', '2008-12-18', 'ea18a', '06784411052', '20路157号', '494077', '2004-1-26', '81677@qq.com', '9');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('194', '946040990005622582', '身份证', '4cae7', '女', '2018-7-23', '884cf', '50041287157', '79路377号', '057483', '1991-5-28', '47226@qq.com', '2');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('195', '184484515038828564', '身份证', 'de423', '女', '2001-11-13', 'cf917', '76986692795', '42路365号', '912475', '2019-12-12', '14991@qq.com', '2');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('196', '607695153003858231', '护照', 'e17e2', '男', '2001-8-15', 'b51c0', '81348831059', '74路237号', '656248', '2007-3-10', '53456@qq.com', '9');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('197', '718968680909211622', '身份证', '2c8bb', '女', '2009-11-16', 'e6cb8', '50762003951', '3路384号', '062637', '2012-9-23', '19858@qq.com', '15');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('198', '698958272786480339', '护照', '7d9ea', '女', '2006-5-26', '3f10b', '58529317011', '31路311号', '294228', '2000-6-24', '80423@qq.com', '8');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('199', '405505457405776907', '护照', '88001', '女', '1993-3-10', 'b73f5', '96102779470', '51路494号', '826698', '2011-12-23', '05940@qq.com', '15');
insert into t_student (student_id, student_person_id, student_person_id_type, student_name, student_sex, student_birthday, student_country, student_phone_number, student_address, student_PC, student_start_year, student_email, student_clazz_id)
    values ('200', '036699056930170769', '护照', '4b76c', '女', '1994-8-6', '136e0', '99076026918', '69路317号', '356154', '2013-6-21', '77273@qq.com', '4');
insert into t_course (course_id, course_name, course_assess_type, course_profession_id)
    values ('1', '99df9', '当场答辩', '18');
insert into t_course (course_id, course_name, course_assess_type, course_profession_id)
    values ('2', '4f878', '考试', '9');
insert into t_course (course_id, course_name, course_assess_type, course_profession_id)
    values ('3', 'feaa0', '考试', '14');
insert into t_course (course_id, course_name, course_assess_type, course_profession_id)
    values ('4', 'f6735', '当场答辩', '14');
insert into t_course (course_id, course_name, course_assess_type, course_profession_id)
    values ('5', '8fc01', '考试', '4');
insert into t_course (course_id, course_name, course_assess_type, course_profession_id)
    values ('6', 'b1aa5', '考试', '1');
insert into t_course (course_id, course_name, course_assess_type, course_profession_id)
    values ('7', '654c4', '考试', '13');
insert into t_course (course_id, course_name, course_assess_type, course_profession_id)
    values ('8', 'a9d4a', '考试', '15');
insert into t_course (course_id, course_name, course_assess_type, course_profession_id)
    values ('9', '5ebc9', '当场答辩', '11');
insert into t_course (course_id, course_name, course_assess_type, course_profession_id)
    values ('10', '6c475', '考试', '7');
insert into t_course (course_id, course_name, course_assess_type, course_profession_id)
    values ('11', '22196', '考试', '5');
insert into t_course (course_id, course_name, course_assess_type, course_profession_id)
    values ('12', '5b66d', '考试', '16');
insert into t_course (course_id, course_name, course_assess_type, course_profession_id)
    values ('13', '57c09', '考试', '2');
insert into t_course (course_id, course_name, course_assess_type, course_profession_id)
    values ('14', 'fffec', '当场答辩', '16');
insert into t_course (course_id, course_name, course_assess_type, course_profession_id)
    values ('15', 'f5074', '当场答辩', '12');
insert into t_course (course_id, course_name, course_assess_type, course_profession_id)
    values ('16', 'b2d84', '考试', '8');
insert into t_course (course_id, course_name, course_assess_type, course_profession_id)
    values ('17', '00e24', '考试', '6');
insert into t_course (course_id, course_name, course_assess_type, course_profession_id)
    values ('18', '3fca3', '考试', '12');
insert into t_course (course_id, course_name, course_assess_type, course_profession_id)
    values ('19', '3412b', '当场答辩', '13');
insert into t_course (course_id, course_name, course_assess_type, course_profession_id)
    values ('20', '03cd7', '当场答辩', '14');
insert into t_course_start (course_start_date, course_start_season, course_start_time, course_start_course_id, course_start_teacher_id)
    values ('2005-10-28', '秋', '星期一 (2,4)', '1', '5');
insert into t_course_start (course_start_date, course_start_season, course_start_time, course_start_course_id, course_start_teacher_id)
    values ('2016-8-24', '秋', '星期一 (3,5)', '2', '5');
insert into t_course_start (course_start_date, course_start_season, course_start_time, course_start_course_id, course_start_teacher_id)
    values ('2000-12-4', '春', '星期二 (3,5)', '3', '3');
insert into t_course_start (course_start_date, course_start_season, course_start_time, course_start_course_id, course_start_teacher_id)
    values ('1996-7-12', '春', '星期五 (3,5)', '4', '1');
insert into t_course_start (course_start_date, course_start_season, course_start_time, course_start_course_id, course_start_teacher_id)
    values ('1992-3-20', '秋', '星期五 (3,5)', '5', '4');
insert into t_course_start (course_start_date, course_start_season, course_start_time, course_start_course_id, course_start_teacher_id)
    values ('2009-12-27', '春', '星期日 (3,5)', '6', '5');
insert into t_course_start (course_start_date, course_start_season, course_start_time, course_start_course_id, course_start_teacher_id)
    values ('2001-3-22', '秋', '星期六 (1,3)', '7', '4');
insert into t_course_start (course_start_date, course_start_season, course_start_time, course_start_course_id, course_start_teacher_id)
    values ('1997-7-24', '秋', '星期二 (5,7)', '8', '5');
insert into t_course_start (course_start_date, course_start_season, course_start_time, course_start_course_id, course_start_teacher_id)
    values ('2004-3-10', '秋', '星期六 (4,6)', '9', '1');
insert into t_course_start (course_start_date, course_start_season, course_start_time, course_start_course_id, course_start_teacher_id)
    values ('1990-9-19', '秋', '星期四 (4,6)', '10', '4');
insert into t_score (course_id, student_id, score) values ('1', '1', '58');
insert into t_score (course_id, student_id, score) values ('1', '3', null);
insert into t_score (course_id, student_id, score) values ('1', '15', '7');
insert into t_score (course_id, student_id, score) values ('1', '16', null);
insert into t_score (course_id, student_id, score) values ('1', '17', '74');
insert into t_score (course_id, student_id, score) values ('1', '26', null);
insert into t_score (course_id, student_id, score) values ('1', '28', '16');
insert into t_score (course_id, student_id, score) values ('1', '31', null);
insert into t_score (course_id, student_id, score) values ('1', '34', null);
insert into t_score (course_id, student_id, score) values ('1', '37', null);
insert into t_score (course_id, student_id, score) values ('1', '40', null);
insert into t_score (course_id, student_id, score) values ('1', '43', '4');
insert into t_score (course_id, student_id, score) values ('1', '45', '71');
insert into t_score (course_id, student_id, score) values ('1', '50', '46');
insert into t_score (course_id, student_id, score) values ('1', '57', null);
insert into t_score (course_id, student_id, score) values ('1', '62', '64');
insert into t_score (course_id, student_id, score) values ('1', '68', '59');
insert into t_score (course_id, student_id, score) values ('1', '74', null);
insert into t_score (course_id, student_id, score) values ('1', '76', '73');
insert into t_score (course_id, student_id, score) values ('1', '84', null);
insert into t_score (course_id, student_id, score) values ('1', '85', null);
insert into t_score (course_id, student_id, score) values ('1', '90', '83');
insert into t_score (course_id, student_id, score) values ('1', '96', null);
insert into t_score (course_id, student_id, score) values ('1', '104', null);
insert into t_score (course_id, student_id, score) values ('1', '105', null);
insert into t_score (course_id, student_id, score) values ('1', '111', null);
insert into t_score (course_id, student_id, score) values ('1', '113', null);
insert into t_score (course_id, student_id, score) values ('1', '126', null);
insert into t_score (course_id, student_id, score) values ('1', '134', '65');
insert into t_score (course_id, student_id, score) values ('1', '135', null);
insert into t_score (course_id, student_id, score) values ('1', '137', null);
insert into t_score (course_id, student_id, score) values ('1', '138', null);
insert into t_score (course_id, student_id, score) values ('1', '146', '14');
insert into t_score (course_id, student_id, score) values ('1', '148', null);
insert into t_score (course_id, student_id, score) values ('1', '150', null);
insert into t_score (course_id, student_id, score) values ('1', '152', '14');
insert into t_score (course_id, student_id, score) values ('1', '153', '54');
insert into t_score (course_id, student_id, score) values ('1', '154', '40');
insert into t_score (course_id, student_id, score) values ('1', '161', null);
insert into t_score (course_id, student_id, score) values ('1', '163', null);
insert into t_score (course_id, student_id, score) values ('1', '165', null);
insert into t_score (course_id, student_id, score) values ('1', '166', null);
insert into t_score (course_id, student_id, score) values ('1', '169', '91');
insert into t_score (course_id, student_id, score) values ('1', '179', null);
insert into t_score (course_id, student_id, score) values ('1', '182', null);
insert into t_score (course_id, student_id, score) values ('1', '186', '38');
insert into t_score (course_id, student_id, score) values ('1', '187', null);
insert into t_score (course_id, student_id, score) values ('1', '192', null);
insert into t_score (course_id, student_id, score) values ('1', '193', '94');
insert into t_score (course_id, student_id, score) values ('2', '4', '99');
insert into t_score (course_id, student_id, score) values ('2', '6', null);
insert into t_score (course_id, student_id, score) values ('2', '16', '68');
insert into t_score (course_id, student_id, score) values ('2', '19', '68');
insert into t_score (course_id, student_id, score) values ('2', '23', null);
insert into t_score (course_id, student_id, score) values ('2', '26', '58');
insert into t_score (course_id, student_id, score) values ('2', '28', '3');
insert into t_score (course_id, student_id, score) values ('2', '29', null);
insert into t_score (course_id, student_id, score) values ('2', '32', '45');
insert into t_score (course_id, student_id, score) values ('2', '50', '12');
insert into t_score (course_id, student_id, score) values ('2', '51', '50');
insert into t_score (course_id, student_id, score) values ('2', '55', '15');
insert into t_score (course_id, student_id, score) values ('2', '65', '37');
insert into t_score (course_id, student_id, score) values ('2', '78', null);
insert into t_score (course_id, student_id, score) values ('2', '86', '76');
insert into t_score (course_id, student_id, score) values ('2', '89', null);
insert into t_score (course_id, student_id, score) values ('2', '91', null);
insert into t_score (course_id, student_id, score) values ('2', '93', '21');
insert into t_score (course_id, student_id, score) values ('2', '95', '68');
insert into t_score (course_id, student_id, score) values ('2', '99', null);
insert into t_score (course_id, student_id, score) values ('2', '103', null);
insert into t_score (course_id, student_id, score) values ('2', '104', null);
insert into t_score (course_id, student_id, score) values ('2', '113', null);
insert into t_score (course_id, student_id, score) values ('2', '127', '9');
insert into t_score (course_id, student_id, score) values ('2', '135', null);
insert into t_score (course_id, student_id, score) values ('2', '150', '64');
insert into t_score (course_id, student_id, score) values ('2', '152', '63');
insert into t_score (course_id, student_id, score) values ('2', '155', '80');
insert into t_score (course_id, student_id, score) values ('2', '156', null);
insert into t_score (course_id, student_id, score) values ('2', '157', '74');
insert into t_score (course_id, student_id, score) values ('2', '161', null);
insert into t_score (course_id, student_id, score) values ('2', '167', '24');
insert into t_score (course_id, student_id, score) values ('2', '168', '39');
insert into t_score (course_id, student_id, score) values ('2', '171', null);
insert into t_score (course_id, student_id, score) values ('2', '181', null);
insert into t_score (course_id, student_id, score) values ('2', '183', '39');
insert into t_score (course_id, student_id, score) values ('2', '189', '100');
insert into t_score (course_id, student_id, score) values ('2', '192', null);
insert into t_score (course_id, student_id, score) values ('2', '195', null);
insert into t_score (course_id, student_id, score) values ('2', '199', '12');
insert into t_score (course_id, student_id, score) values ('3', '3', null);
insert into t_score (course_id, student_id, score) values ('3', '9', null);
insert into t_score (course_id, student_id, score) values ('3', '16', '24');
insert into t_score (course_id, student_id, score) values ('3', '21', '67');
insert into t_score (course_id, student_id, score) values ('3', '22', '55');
insert into t_score (course_id, student_id, score) values ('3', '25', '9');
insert into t_score (course_id, student_id, score) values ('3', '26', '37');
insert into t_score (course_id, student_id, score) values ('3', '39', null);
insert into t_score (course_id, student_id, score) values ('3', '42', null);
insert into t_score (course_id, student_id, score) values ('3', '46', null);
insert into t_score (course_id, student_id, score) values ('3', '48', '34');
insert into t_score (course_id, student_id, score) values ('3', '52', '86');
insert into t_score (course_id, student_id, score) values ('3', '59', null);
insert into t_score (course_id, student_id, score) values ('3', '64', null);
insert into t_score (course_id, student_id, score) values ('3', '66', null);
insert into t_score (course_id, student_id, score) values ('3', '80', '28');
insert into t_score (course_id, student_id, score) values ('3', '84', '87');
insert into t_score (course_id, student_id, score) values ('3', '88', '94');
insert into t_score (course_id, student_id, score) values ('3', '90', '55');
insert into t_score (course_id, student_id, score) values ('3', '94', null);
insert into t_score (course_id, student_id, score) values ('3', '98', null);
insert into t_score (course_id, student_id, score) values ('3', '99', '43');
insert into t_score (course_id, student_id, score) values ('3', '103', null);
insert into t_score (course_id, student_id, score) values ('3', '104', null);
insert into t_score (course_id, student_id, score) values ('3', '111', '1');
insert into t_score (course_id, student_id, score) values ('3', '114', null);
insert into t_score (course_id, student_id, score) values ('3', '121', null);
insert into t_score (course_id, student_id, score) values ('3', '126', '65');
insert into t_score (course_id, student_id, score) values ('3', '131', null);
insert into t_score (course_id, student_id, score) values ('3', '132', null);
insert into t_score (course_id, student_id, score) values ('3', '134', null);
insert into t_score (course_id, student_id, score) values ('3', '138', null);
insert into t_score (course_id, student_id, score) values ('3', '143', '57');
insert into t_score (course_id, student_id, score) values ('3', '147', '34');
insert into t_score (course_id, student_id, score) values ('3', '150', null);
insert into t_score (course_id, student_id, score) values ('3', '160', null);
insert into t_score (course_id, student_id, score) values ('3', '166', null);
insert into t_score (course_id, student_id, score) values ('3', '168', null);
insert into t_score (course_id, student_id, score) values ('3', '171', '3');
insert into t_score (course_id, student_id, score) values ('3', '173', '91');
insert into t_score (course_id, student_id, score) values ('3', '178', null);
insert into t_score (course_id, student_id, score) values ('3', '185', '75');
insert into t_score (course_id, student_id, score) values ('3', '192', null);
insert into t_score (course_id, student_id, score) values ('3', '193', '39');
insert into t_score (course_id, student_id, score) values ('3', '200', null);
insert into t_score (course_id, student_id, score) values ('4', '2', null);
insert into t_score (course_id, student_id, score) values ('4', '4', null);
insert into t_score (course_id, student_id, score) values ('4', '5', null);
insert into t_score (course_id, student_id, score) values ('4', '13', '12');
insert into t_score (course_id, student_id, score) values ('4', '21', null);
insert into t_score (course_id, student_id, score) values ('4', '22', null);
insert into t_score (course_id, student_id, score) values ('4', '24', null);
insert into t_score (course_id, student_id, score) values ('4', '31', '98');
insert into t_score (course_id, student_id, score) values ('4', '34', null);
insert into t_score (course_id, student_id, score) values ('4', '38', '5');
insert into t_score (course_id, student_id, score) values ('4', '39', null);
insert into t_score (course_id, student_id, score) values ('4', '42', '87');
insert into t_score (course_id, student_id, score) values ('4', '44', '58');
insert into t_score (course_id, student_id, score) values ('4', '46', '22');
insert into t_score (course_id, student_id, score) values ('4', '47', null);
insert into t_score (course_id, student_id, score) values ('4', '52', null);
insert into t_score (course_id, student_id, score) values ('4', '58', null);
insert into t_score (course_id, student_id, score) values ('4', '72', '32');
insert into t_score (course_id, student_id, score) values ('4', '73', null);
insert into t_score (course_id, student_id, score) values ('4', '78', '13');
insert into t_score (course_id, student_id, score) values ('4', '80', null);
insert into t_score (course_id, student_id, score) values ('4', '81', null);
insert into t_score (course_id, student_id, score) values ('4', '84', '13');
insert into t_score (course_id, student_id, score) values ('4', '100', null);
insert into t_score (course_id, student_id, score) values ('4', '102', null);
insert into t_score (course_id, student_id, score) values ('4', '104', null);
insert into t_score (course_id, student_id, score) values ('4', '108', null);
insert into t_score (course_id, student_id, score) values ('4', '109', null);
insert into t_score (course_id, student_id, score) values ('4', '130', null);
insert into t_score (course_id, student_id, score) values ('4', '134', null);
insert into t_score (course_id, student_id, score) values ('4', '137', null);
insert into t_score (course_id, student_id, score) values ('4', '142', null);
insert into t_score (course_id, student_id, score) values ('4', '148', '45');
insert into t_score (course_id, student_id, score) values ('4', '152', '65');
insert into t_score (course_id, student_id, score) values ('4', '161', null);
insert into t_score (course_id, student_id, score) values ('4', '165', null);
insert into t_score (course_id, student_id, score) values ('4', '167', '72');
insert into t_score (course_id, student_id, score) values ('4', '168', '65');
insert into t_score (course_id, student_id, score) values ('4', '170', null);
insert into t_score (course_id, student_id, score) values ('4', '174', '61');
insert into t_score (course_id, student_id, score) values ('4', '178', null);
insert into t_score (course_id, student_id, score) values ('4', '186', '67');
insert into t_score (course_id, student_id, score) values ('4', '192', null);
insert into t_score (course_id, student_id, score) values ('4', '193', '56');
insert into t_score (course_id, student_id, score) values ('4', '194', '21');
insert into t_score (course_id, student_id, score) values ('4', '196', '95');
insert into t_score (course_id, student_id, score) values ('5', '3', null);
insert into t_score (course_id, student_id, score) values ('5', '17', null);
insert into t_score (course_id, student_id, score) values ('5', '19', null);
insert into t_score (course_id, student_id, score) values ('5', '26', '40');
insert into t_score (course_id, student_id, score) values ('5', '27', null);
insert into t_score (course_id, student_id, score) values ('5', '31', '29');
insert into t_score (course_id, student_id, score) values ('5', '34', null);
insert into t_score (course_id, student_id, score) values ('5', '35', null);
insert into t_score (course_id, student_id, score) values ('5', '49', null);
insert into t_score (course_id, student_id, score) values ('5', '54', null);
insert into t_score (course_id, student_id, score) values ('5', '56', null);
insert into t_score (course_id, student_id, score) values ('5', '65', null);
insert into t_score (course_id, student_id, score) values ('5', '87', '96');
insert into t_score (course_id, student_id, score) values ('5', '88', null);
insert into t_score (course_id, student_id, score) values ('5', '102', '10');
insert into t_score (course_id, student_id, score) values ('5', '104', '22');
insert into t_score (course_id, student_id, score) values ('5', '108', null);
insert into t_score (course_id, student_id, score) values ('5', '110', null);
insert into t_score (course_id, student_id, score) values ('5', '117', null);
insert into t_score (course_id, student_id, score) values ('5', '120', '67');
insert into t_score (course_id, student_id, score) values ('5', '121', null);
insert into t_score (course_id, student_id, score) values ('5', '131', null);
insert into t_score (course_id, student_id, score) values ('5', '135', '56');
insert into t_score (course_id, student_id, score) values ('5', '138', null);
insert into t_score (course_id, student_id, score) values ('5', '140', null);
insert into t_score (course_id, student_id, score) values ('5', '143', '29');
insert into t_score (course_id, student_id, score) values ('5', '145', null);
insert into t_score (course_id, student_id, score) values ('5', '148', '79');
insert into t_score (course_id, student_id, score) values ('5', '155', null);
insert into t_score (course_id, student_id, score) values ('5', '158', '50');
insert into t_score (course_id, student_id, score) values ('5', '180', null);
insert into t_score (course_id, student_id, score) values ('5', '186', null);
insert into t_score (course_id, student_id, score) values ('5', '194', null);
insert into t_score (course_id, student_id, score) values ('6', '8', '11');
insert into t_score (course_id, student_id, score) values ('6', '11', null);
insert into t_score (course_id, student_id, score) values ('6', '12', '32');
insert into t_score (course_id, student_id, score) values ('6', '15', '82');
insert into t_score (course_id, student_id, score) values ('6', '17', null);
insert into t_score (course_id, student_id, score) values ('6', '20', null);
insert into t_score (course_id, student_id, score) values ('6', '22', null);
insert into t_score (course_id, student_id, score) values ('6', '27', null);
insert into t_score (course_id, student_id, score) values ('6', '29', null);
insert into t_score (course_id, student_id, score) values ('6', '39', null);
insert into t_score (course_id, student_id, score) values ('6', '45', '96');
insert into t_score (course_id, student_id, score) values ('6', '52', '50');
insert into t_score (course_id, student_id, score) values ('6', '63', null);
insert into t_score (course_id, student_id, score) values ('6', '65', '77');
insert into t_score (course_id, student_id, score) values ('6', '72', null);
insert into t_score (course_id, student_id, score) values ('6', '77', null);
insert into t_score (course_id, student_id, score) values ('6', '87', null);
insert into t_score (course_id, student_id, score) values ('6', '88', null);
insert into t_score (course_id, student_id, score) values ('6', '98', null);
insert into t_score (course_id, student_id, score) values ('6', '103', null);
insert into t_score (course_id, student_id, score) values ('6', '106', '21');
insert into t_score (course_id, student_id, score) values ('6', '108', '89');
insert into t_score (course_id, student_id, score) values ('6', '112', '97');
insert into t_score (course_id, student_id, score) values ('6', '127', '51');
insert into t_score (course_id, student_id, score) values ('6', '128', '86');
insert into t_score (course_id, student_id, score) values ('6', '132', '100');
insert into t_score (course_id, student_id, score) values ('6', '137', '72');
insert into t_score (course_id, student_id, score) values ('6', '144', null);
insert into t_score (course_id, student_id, score) values ('6', '155', '1');
insert into t_score (course_id, student_id, score) values ('6', '157', '93');
insert into t_score (course_id, student_id, score) values ('6', '164', '44');
insert into t_score (course_id, student_id, score) values ('6', '173', null);
insert into t_score (course_id, student_id, score) values ('6', '176', null);
insert into t_score (course_id, student_id, score) values ('6', '177', '37');
insert into t_score (course_id, student_id, score) values ('6', '178', '48');
insert into t_score (course_id, student_id, score) values ('6', '180', null);
insert into t_score (course_id, student_id, score) values ('6', '183', '26');
insert into t_score (course_id, student_id, score) values ('6', '186', '57');
insert into t_score (course_id, student_id, score) values ('7', '5', null);
insert into t_score (course_id, student_id, score) values ('7', '14', '66');
insert into t_score (course_id, student_id, score) values ('7', '19', null);
insert into t_score (course_id, student_id, score) values ('7', '21', null);
insert into t_score (course_id, student_id, score) values ('7', '24', '87');
insert into t_score (course_id, student_id, score) values ('7', '25', '42');
insert into t_score (course_id, student_id, score) values ('7', '33', '55');
insert into t_score (course_id, student_id, score) values ('7', '38', null);
insert into t_score (course_id, student_id, score) values ('7', '40', null);
insert into t_score (course_id, student_id, score) values ('7', '41', null);
insert into t_score (course_id, student_id, score) values ('7', '48', '45');
insert into t_score (course_id, student_id, score) values ('7', '61', '46');
insert into t_score (course_id, student_id, score) values ('7', '79', '87');
insert into t_score (course_id, student_id, score) values ('7', '84', '59');
insert into t_score (course_id, student_id, score) values ('7', '89', null);
insert into t_score (course_id, student_id, score) values ('7', '98', null);
insert into t_score (course_id, student_id, score) values ('7', '99', '16');
insert into t_score (course_id, student_id, score) values ('7', '100', null);
insert into t_score (course_id, student_id, score) values ('7', '114', '75');
insert into t_score (course_id, student_id, score) values ('7', '118', '45');
insert into t_score (course_id, student_id, score) values ('7', '122', '69');
insert into t_score (course_id, student_id, score) values ('7', '123', '86');
insert into t_score (course_id, student_id, score) values ('7', '134', null);
insert into t_score (course_id, student_id, score) values ('7', '139', '77');
insert into t_score (course_id, student_id, score) values ('7', '141', null);
insert into t_score (course_id, student_id, score) values ('7', '143', '41');
insert into t_score (course_id, student_id, score) values ('7', '146', '93');
insert into t_score (course_id, student_id, score) values ('7', '148', '58');
insert into t_score (course_id, student_id, score) values ('7', '168', null);
insert into t_score (course_id, student_id, score) values ('7', '169', '27');
insert into t_score (course_id, student_id, score) values ('7', '170', null);
insert into t_score (course_id, student_id, score) values ('7', '178', null);
insert into t_score (course_id, student_id, score) values ('7', '181', null);
insert into t_score (course_id, student_id, score) values ('7', '184', null);
insert into t_score (course_id, student_id, score) values ('8', '2', '56');
insert into t_score (course_id, student_id, score) values ('8', '5', null);
insert into t_score (course_id, student_id, score) values ('8', '6', '68');
insert into t_score (course_id, student_id, score) values ('8', '19', null);
insert into t_score (course_id, student_id, score) values ('8', '24', '40');
insert into t_score (course_id, student_id, score) values ('8', '25', '40');
insert into t_score (course_id, student_id, score) values ('8', '33', null);
insert into t_score (course_id, student_id, score) values ('8', '36', '2');
insert into t_score (course_id, student_id, score) values ('8', '40', '1');
insert into t_score (course_id, student_id, score) values ('8', '48', '47');
insert into t_score (course_id, student_id, score) values ('8', '50', null);
insert into t_score (course_id, student_id, score) values ('8', '54', null);
insert into t_score (course_id, student_id, score) values ('8', '64', '28');
insert into t_score (course_id, student_id, score) values ('8', '66', '40');
insert into t_score (course_id, student_id, score) values ('8', '68', '30');
insert into t_score (course_id, student_id, score) values ('8', '71', '56');
insert into t_score (course_id, student_id, score) values ('8', '74', '0');
insert into t_score (course_id, student_id, score) values ('8', '80', null);
insert into t_score (course_id, student_id, score) values ('8', '105', null);
insert into t_score (course_id, student_id, score) values ('8', '109', null);
insert into t_score (course_id, student_id, score) values ('8', '119', null);
insert into t_score (course_id, student_id, score) values ('8', '120', null);
insert into t_score (course_id, student_id, score) values ('8', '122', null);
insert into t_score (course_id, student_id, score) values ('8', '123', null);
insert into t_score (course_id, student_id, score) values ('8', '124', '91');
insert into t_score (course_id, student_id, score) values ('8', '126', '10');
insert into t_score (course_id, student_id, score) values ('8', '132', null);
insert into t_score (course_id, student_id, score) values ('8', '137', '54');
insert into t_score (course_id, student_id, score) values ('8', '141', '97');
insert into t_score (course_id, student_id, score) values ('8', '142', null);
insert into t_score (course_id, student_id, score) values ('8', '153', '33');
insert into t_score (course_id, student_id, score) values ('8', '155', null);
insert into t_score (course_id, student_id, score) values ('8', '159', null);
insert into t_score (course_id, student_id, score) values ('8', '161', null);
insert into t_score (course_id, student_id, score) values ('8', '164', null);
insert into t_score (course_id, student_id, score) values ('8', '171', '14');
insert into t_score (course_id, student_id, score) values ('8', '177', '25');
insert into t_score (course_id, student_id, score) values ('8', '180', null);
insert into t_score (course_id, student_id, score) values ('8', '181', '7');
insert into t_score (course_id, student_id, score) values ('8', '185', '33');
insert into t_score (course_id, student_id, score) values ('8', '187', null);
insert into t_score (course_id, student_id, score) values ('9', '3', null);
insert into t_score (course_id, student_id, score) values ('9', '4', null);
insert into t_score (course_id, student_id, score) values ('9', '23', '77');
insert into t_score (course_id, student_id, score) values ('9', '31', null);
insert into t_score (course_id, student_id, score) values ('9', '33', null);
insert into t_score (course_id, student_id, score) values ('9', '43', null);
insert into t_score (course_id, student_id, score) values ('9', '44', null);
insert into t_score (course_id, student_id, score) values ('9', '47', '69');
insert into t_score (course_id, student_id, score) values ('9', '49', null);
insert into t_score (course_id, student_id, score) values ('9', '53', null);
insert into t_score (course_id, student_id, score) values ('9', '67', '16');
insert into t_score (course_id, student_id, score) values ('9', '82', null);
insert into t_score (course_id, student_id, score) values ('9', '86', null);
insert into t_score (course_id, student_id, score) values ('9', '87', '56');
insert into t_score (course_id, student_id, score) values ('9', '91', '26');
insert into t_score (course_id, student_id, score) values ('9', '92', '17');
insert into t_score (course_id, student_id, score) values ('9', '94', '33');
insert into t_score (course_id, student_id, score) values ('9', '95', '65');
insert into t_score (course_id, student_id, score) values ('9', '97', null);
insert into t_score (course_id, student_id, score) values ('9', '98', null);
insert into t_score (course_id, student_id, score) values ('9', '105', null);
insert into t_score (course_id, student_id, score) values ('9', '110', '89');
insert into t_score (course_id, student_id, score) values ('9', '117', '17');
insert into t_score (course_id, student_id, score) values ('9', '124', null);
insert into t_score (course_id, student_id, score) values ('9', '126', '81');
insert into t_score (course_id, student_id, score) values ('9', '130', '80');
insert into t_score (course_id, student_id, score) values ('9', '135', null);
insert into t_score (course_id, student_id, score) values ('9', '142', null);
insert into t_score (course_id, student_id, score) values ('9', '146', null);
insert into t_score (course_id, student_id, score) values ('9', '149', null);
insert into t_score (course_id, student_id, score) values ('9', '164', '14');
insert into t_score (course_id, student_id, score) values ('9', '170', null);
insert into t_score (course_id, student_id, score) values ('9', '180', '87');
insert into t_score (course_id, student_id, score) values ('9', '190', '73');
insert into t_score (course_id, student_id, score) values ('9', '198', '76');
insert into t_score (course_id, student_id, score) values ('10', '8', null);
insert into t_score (course_id, student_id, score) values ('10', '10', '27');
insert into t_score (course_id, student_id, score) values ('10', '12', null);
insert into t_score (course_id, student_id, score) values ('10', '18', null);
insert into t_score (course_id, student_id, score) values ('10', '21', null);
insert into t_score (course_id, student_id, score) values ('10', '22', null);
insert into t_score (course_id, student_id, score) values ('10', '26', '12');
insert into t_score (course_id, student_id, score) values ('10', '33', null);
insert into t_score (course_id, student_id, score) values ('10', '39', '47');
insert into t_score (course_id, student_id, score) values ('10', '61', null);
insert into t_score (course_id, student_id, score) values ('10', '65', null);
insert into t_score (course_id, student_id, score) values ('10', '66', null);
insert into t_score (course_id, student_id, score) values ('10', '67', null);
insert into t_score (course_id, student_id, score) values ('10', '69', '90');
insert into t_score (course_id, student_id, score) values ('10', '73', '68');
insert into t_score (course_id, student_id, score) values ('10', '74', null);
insert into t_score (course_id, student_id, score) values ('10', '85', '37');
insert into t_score (course_id, student_id, score) values ('10', '86', null);
insert into t_score (course_id, student_id, score) values ('10', '90', null);
insert into t_score (course_id, student_id, score) values ('10', '91', null);
insert into t_score (course_id, student_id, score) values ('10', '92', '60');
insert into t_score (course_id, student_id, score) values ('10', '103', '56');
insert into t_score (course_id, student_id, score) values ('10', '109', null);
insert into t_score (course_id, student_id, score) values ('10', '112', null);
insert into t_score (course_id, student_id, score) values ('10', '120', null);
insert into t_score (course_id, student_id, score) values ('10', '121', '88');
insert into t_score (course_id, student_id, score) values ('10', '122', '50');
insert into t_score (course_id, student_id, score) values ('10', '133', '83');
insert into t_score (course_id, student_id, score) values ('10', '134', null);
insert into t_score (course_id, student_id, score) values ('10', '137', '81');
insert into t_score (course_id, student_id, score) values ('10', '141', '64');
insert into t_score (course_id, student_id, score) values ('10', '150', '60');
insert into t_score (course_id, student_id, score) values ('10', '152', '65');
insert into t_score (course_id, student_id, score) values ('10', '164', null);
insert into t_score (course_id, student_id, score) values ('10', '165', null);
insert into t_score (course_id, student_id, score) values ('10', '167', null);
insert into t_score (course_id, student_id, score) values ('10', '184', null);
insert into t_score (course_id, student_id, score) values ('10', '185', null);
insert into t_score (course_id, student_id, score) values ('10', '195', null);
insert into t_score (course_id, student_id, score) values ('10', '200', null);
update t_profession set profession_campus_id = '3' where profession_id = '1' ;

update t_profession set profession_teacher_id = '4' where profession_id = '1' ;
update t_profession set profession_campus_id = '2' where profession_id = '2' ;
update t_profession set profession_teacher_id = '8' where profession_id = '2' ;
update t_profession set profession_campus_id = '5' where profession_id = '3' ;
update t_profession set profession_teacher_id = '9' where profession_id = '3' ;
update t_profession set profession_campus_id = '3' where profession_id = '4' ;
update t_profession set profession_teacher_id = '10' where profession_id = '4' ;
update t_profession set profession_campus_id = '5' where profession_id = '5' ;
update t_profession set profession_teacher_id = '3' where profession_id = '5' ;
update t_profession set profession_campus_id = '2' where profession_id = '6' ;
update t_profession set profession_teacher_id = '2' where profession_id = '6' ;
update t_profession set profession_campus_id = '5' where profession_id = '7' ;
update t_profession set profession_teacher_id = '2' where profession_id = '7' ;
update t_profession set profession_campus_id = '1' where profession_id = '8' ;
update t_profession set profession_teacher_id = '3' where profession_id = '8' ;
update t_profession set profession_campus_id = '1' where profession_id = '9' ;
update t_profession set profession_teacher_id = '5' where profession_id = '9' ;
update t_profession set profession_campus_id = '2' where profession_id = '10' ;
update t_profession set profession_teacher_id = '1' where profession_id = '10' ;
update t_profession set profession_campus_id = '5' where profession_id = '11' ;
update t_profession set profession_teacher_id = '3' where profession_id = '11' ;
update t_profession set profession_campus_id = '4' where profession_id = '12' ;
update t_profession set profession_teacher_id = '9' where profession_id = '12' ;
update t_profession set profession_campus_id = '1' where profession_id = '13' ;
update t_profession set profession_teacher_id = '4' where profession_id = '13' ;
update t_profession set profession_campus_id = '1' where profession_id = '14' ;
update t_profession set profession_teacher_id = '4' where profession_id = '14' ;
update t_profession set profession_campus_id = '5' where profession_id = '15' ;
update t_profession set profession_teacher_id = '5' where profession_id = '15' ;
update t_profession set profession_campus_id = '3' where profession_id = '16' ;
update t_profession set profession_teacher_id = '6' where profession_id = '16' ;
update t_profession set profession_campus_id = '5' where profession_id = '17' ;
update t_profession set profession_teacher_id = '4' where profession_id = '17' ;
update t_profession set profession_campus_id = '1' where profession_id = '18' ;
update t_profession set profession_teacher_id = '2' where profession_id = '18' ;
update t_profession set profession_campus_id = '4' where profession_id = '19' ;
update t_profession set profession_teacher_id = '10' where profession_id = '19' ;
update t_profession set profession_campus_id = '5' where profession_id = '20' ;
update t_profession set profession_teacher_id = '1' where profession_id = '20' ;
update t_profession set t_profession.profession_address = (select campus_address from t_campus where campus_id = '1') where t_profession.profession_campus_id  ='1';
update t_profession set t_profession.profession_address = (select campus_address from t_campus where campus_id = '2') where t_profession.profession_campus_id  ='2';
update t_profession set t_profession.profession_address = (select campus_address from t_campus where campus_id = '3') where t_profession.profession_campus_id  ='3';
update t_profession set t_profession.profession_address = (select campus_address from t_campus where campus_id = '4') where t_profession.profession_campus_id  ='4';
update t_profession set t_profession.profession_address = (select campus_address from t_campus where campus_id = '5') where t_profession.profession_campus_id  ='5';
