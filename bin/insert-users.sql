INSERT INTO seqdb.People VALUES (1,'2007-04-03 00:00:00.000000','Raible','Matt','','','',''),
(2,'2007-04-03 00:00:00.000000','Johnson','Bob','','','',''),
(3,'2018-04-10 09:11:36.030000','Erlingsson','Ingimar','','','',''),
(4,'2018-04-10 11:12:54.262000','Gyllenstrand','Niclas','','','',''),
(5,'2018-04-11 09:01:37.588000','Kllman','Thomas','','','',''),
(6,'2018-10-24 13:12:26.411000','S','Daniela','','','','');

INSERT INTO seqdb.Accounts VALUES (1,'2018-12-12','admin','$2a$10$yU.koeIri6ECtDTBv05FOuzvDIIYyN2KIpHqgKR93gHg/pTMZcrbG','Active','Admin',NULL,NULL,NULL,'2018-04-11 09:24:55.341000',NULL,1),
(2,NULL,'User','$2a$10$xWykm3LUauNxthMDhfXGfeeYFVsvVaN5uJk8C.1oTVV77ea0.nT4a','Active','User','userkey',NULL,NULL,'2007-04-03 00:00:00.000000',NULL,2),
(3,'2018-12-12','ingimar','$2a$10$.qZu/NpL37YNwf12g..zh.R2xxvAGbObCxjD1uNmGXTpVd/.6fGae','Active','Admin',NULL,NULL,NULL,'2018-04-10 09:14:18.383000',NULL,3),
(4,'2090-12-21','niclas','$2a$10$5wOLJrYQ75O9EduwAfqZ3.FXm7lg5nJddrlMZoaZ.61DYkLjnVb1G','Active','User',NULL,NULL,NULL,'2018-04-10 11:20:44.551000',NULL,4),
(5,'2100-01-01','thomas','$2a$10$fMV8pL9ISjw3cuW92irnge0vrxYZafx/y46dxFbyvIohrhDcaImNS','Active','Admin',NULL,NULL,NULL,'2018-04-11 09:13:56.640000',NULL,5),
(6,'2018-12-21','daniela','$2a$10$zpKn5EAKnRyVFLPV6cGSue6emPgI8VyeA9oKotdU0Td/KubVmU7zm','Active','Guest',NULL,NULL,NULL,'2018-10-24 13:13:11.088000',NULL,6);

INSERT INTO seqdb.AccountProfiles VALUES (1,'2013-03-19 00:00:00.000000',1),
(2,'2013-03-19 00:00:00.000000',2),
(3,'2018-04-10 09:14:18.431000',3),
(4,'2018-04-10 11:20:44.552000',4),
(5,'2018-04-11 09:13:56.641000',5),
(6,'2018-10-24 13:13:11.100000',6);

INSERT INTO seqdb.LabelFormats VALUES (1,'Tube + Cap Label','THT-142','2013-03-19 00:00:00.000000','R60XX'),
(2,'This is a THT-163 Label','THT-163','2013-03-19 00:00:00.000000','R43XX'),
(3,'A sheet of paper','8.5x11','2013-03-19 00:00:00.000000','Laser');

INSERT INTO seqdb.LabelTemplates VALUES (2,'A template for DAOM specimen','c:\\sentinel\\labels\\test_specimen_printing1_v3.lab','DAOM Label','2013-03-19 00:00:00.000000',1,1),
(5,'Generic Specimen Replicate label with tube cap and strip label','c:\\sentinel\\labels\\seifertk_specimen_replicate_June_2013.lab','Specimen Replicate Label','2013-03-19 00:00:00.000000',1,1),
(6,'Long strip label for side of plates','Plate Label File','Plate Label','2013-03-19 00:00:00.000000',1,2),
(7,'Generic template for printing DNA Samples. Prints to a THT-163 format label.','c:\\sentinel\\labels\\default_sample_June_2013.lab','Sample Template','2013-03-19 00:00:00.000000',2,2),
(8,'Generic template for printing Pcr Primers. Prints to a THT-163 format label.','c:\\sentinel\\labels\\LEV_primer_June_2013.lab','PcrPrimer Template','2013-03-19 00:00:00.000000',7,2),
(9,'Generic template for printing Container labels. Prints to a THT-163 format label.','c:\\sentinel\\labels\\default_container_June_2013.lab','Container Template','2013-03-19 00:00:00.000000',3,2);

INSERT INTO seqdb.Printers VALUES (5,'ip600-1',NULL,'10.117.57.161','2013-03-19 00:00:00.000000','DAOM Lab',NULL,'Brady IP600 Printer (Daom Lab)',1),
(6,'ip600-22',NULL,'10.117.218.239','2013-03-19 00:00:00.000000','KAS Lab',NULL,'Brady IP600 Printer (KAS Lab)',1),
(7,'ip600-2',NULL,'10.117.218.159','2013-03-19 00:00:00.000000','LEV Lab',NULL,'Brady IP600 Printer (LEV Lab)',2),
(8,'ip600-MBB-2133',NULL,'10.117.204.120','2013-03-19 00:00:00.000000','MMB Lab',NULL,'Brady IP600 Printer (MMB LAB)',1),
(9,'HP8500',NULL,'1.1.1.1','2013-03-19 00:00:00.000000','second floor hallway',NULL,'HP8500',3);

INSERT INTO seqdb.AccountProfilePrinters VALUES (1,'SpecimenReplicate','2013-03-19 00:00:00.000000',1,5,8),
(2,'Specimen','2013-03-19 00:00:00.000000',2,2,6),
(3,'Sample','2013-03-19 00:00:00.000000',1,7,9),
(4,'PcrPrimer','2013-03-19 00:00:00.000000',1,8,8);

