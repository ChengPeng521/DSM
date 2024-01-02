DROP TABLE IF EXISTS admin;
CREATE TABLE admin (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `issuper` int DEFAULT '0',
  `sex` varchar(20) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);



INSERT INTO `admin` (`id`, `username`, `password`, `issuper`, `sex`, `age`, `phone`) VALUES (1, 'cp', '123456', 1, '男', 18, '11111111623');
INSERT INTO `admin` (`id`, `username`, `password`, `issuper`, `sex`, `age`, `phone`) VALUES (2, 'cpp', '111111', 0, '女', 27, '13053452364');


DROP TABLE IF EXISTS dormitory;
CREATE TABLE dormitory (
  `id` int NOT NULL AUTO_INCREMENT,
  `dormitoryid` varchar(255) DEFAULT NULL,
  `floor` int DEFAULT NULL,
  `bed` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
);



INSERT INTO `dormitory` (`id`, `dormitoryid`, `floor`, `bed`, `price`) VALUES (1, '@6#434', 4, 1, 66);
INSERT INTO `dormitory` (`id`, `dormitoryid`, `floor`, `bed`, `price`) VALUES (2, '@6#434', 4, 2, 66);
INSERT INTO `dormitory` (`id`, `dormitoryid`, `floor`, `bed`, `price`) VALUES (3, '@6#434', 4, 3, 66);



DROP TABLE IF EXISTS register;
CREATE TABLE register (
  `id` int NOT NULL AUTO_INCREMENT,
  `studentid` varchar(255) DEFAULT NULL,
  `studentname` varchar(255) DEFAULT NULL,
  `dormotoryid` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `comeout` int DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `runtime` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `isout` int DEFAULT NULL,
  PRIMARY KEY (`id`)
);



INSERT INTO `register` (`id`, `studentid`, `studentname`, `dormotoryid`, `grade`, `comeout`, `reason`, `runtime`, `phone`, `isout`) VALUES (1, '21110501100', '小明', '6#434', '计科1班', 0, '回家探亲', '2023-01-12', '14716562820', 0);
INSERT INTO `register` (`id`, `studentid`, `studentname`, `dormotoryid`, `grade`, `comeout`, `reason`, `runtime`, `phone`, `isout`) VALUES (2, '20230404040', '小明明', '6#436', '计科1班', 1, '生病', '2023-01-06', '216488089', 1);
INSERT INTO `register` (`id`, `studentid`, `studentname`, `dormotoryid`, `grade`, `comeout`, `reason`, `runtime`, `phone`, `isout`) VALUES (3, '20230404041', '小红', '6#436', '计科1班', 0, '出去理由', '2023-02-03', '13744803282', 1);
INSERT INTO `register` (`id`, `studentid`, `studentname`, `dormotoryid`, `grade`, `comeout`, `reason`, `runtime`, `phone`, `isout`) VALUES (4, '20230404042', '小红红', '6#435', '计科1班', 1, '生病', '2023-01-06', '286436984', 1);
INSERT INTO `register` (`id`, `studentid`, `studentname`, `dormotoryid`, `grade`, `comeout`, `reason`, `runtime`, `phone`, `isout`) VALUES (5, '20230404043', '小绿', '6#435', '计科1班', 0, '生病', '2023-01-02', '282132983', 0);
INSERT INTO `register` (`id`, `studentid`, `studentname`, `dormotoryid`, `grade`, `comeout`, `reason`, `runtime`, `phone`, `isout`) VALUES (6, '20230404044', '小绿绿', '6#216', '计科1班', 1, '出去理由', '2023-01-16', '17706830925', 0);
INSERT INTO `register` (`id`, `studentid`, `studentname`, `dormotoryid`, `grade`, `comeout`, `reason`, `runtime`, `phone`, `isout`) VALUES (7, '20230404045', '小蓝', '6#223', '计科1班', 1, '回家探亲', '2023-02-13', '209602498', 0);
INSERT INTO `register` (`id`, `studentid`, `studentname`, `dormotoryid`, `grade`, `comeout`, `reason`, `runtime`, `phone`, `isout`) VALUES (8, '20230404046', '小蓝蓝', '6#213', '计科1班', 0, '生病', '2023-02-14', '15904099857', 1);
INSERT INTO `register` (`id`, `studentid`, `studentname`, `dormotoryid`, `grade`, `comeout`, `reason`, `runtime`, `phone`, `isout`) VALUES (9, '20230404047', '小黄', '6#223', '计科1班', 0, '回家探亲', '2023-01-21', '2081371238', 1);
INSERT INTO `register` (`id`, `studentid`, `studentname`, `dormotoryid`, `grade`, `comeout`, `reason`, `runtime`, `phone`, `isout`) VALUES (10, '20230404048', '小黄黄', '6#211', '计科1班', 1, '回家探亲', '2023-01-21', '76065149583', 0);



DROP TABLE IF EXISTS student;
CREATE TABLE student (
  `id` int NOT NULL AUTO_INCREMENT,
  `studentid` int DEFAULT NULL,
  `studentname` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL,
  `grade` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `dormitory` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
);


INSERT INTO `student` (`id`, `studentid`, `studentname`, `sex`, `age`, `department`, `grade`, `phone`, `dormitory`) VALUES (1, 202301012, '小南', '男', 21, '教育学院', '大数据202班', '13527926665', '6#215');
INSERT INTO `student` (`id`, `studentid`, `studentname`, `sex`, `age`, `department`, `grade`, `phone`, `dormitory`) VALUES (2, 202301016, '小琪', '女', 23, '化学与工程学院', '计科201班', '7601630587', '6#216');
INSERT INTO `student` (`id`, `studentid`, `studentname`, `sex`, `age`, `department`, `grade`, `phone`, `dormitory`) VALUES (3, 202301017, '小宏', '男', 20, '化学与工程学院', '计科202班', '2850380967', '6#216');
INSERT INTO `student` (`id`, `studentid`, `studentname`, `sex`, `age`, `department`, `grade`, `phone`, `dormitory`) VALUES (4, 202301018, '小伦', '男', 23, '信息工程学院', '化学201班', '19372606959', '6#212');
INSERT INTO `student` (`id`, `studentid`, `studentname`, `sex`, `age`, `department`, `grade`, `phone`, `dormitory`) VALUES (5, 202301013, '小涵', '女', 22, '信息工程学院', '大数据202班', '76002525018', '6#211');
INSERT INTO `student` (`id`, `studentid`, `studentname`, `sex`, `age`, `department`, `grade`, `phone`, `dormitory`) VALUES (6, 202301014, '小明', '男', 19, '信息工程学院', '大数据202班', '13737182016', '6#215');
INSERT INTO `student` (`id`, `studentid`, `studentname`, `sex`, `age`, `department`, `grade`, `phone`, `dormitory`) VALUES (7, 202301011, '小南', '男', 18, '信息工程学院', '化学201班', '15882855764', '6#217');
INSERT INTO `student` (`id`, `studentid`, `studentname`, `sex`, `age`, `department`, `grade`, `phone`, `dormitory`) VALUES (8, 202301015, '小韬', '男', 22, '信息工程学院', '计科202班', '2166847033', '6#214');
INSERT INTO `student` (`id`, `studentid`, `studentname`, `sex`, `age`, `department`, `grade`, `phone`, `dormitory`) VALUES (9, 202301019, '小小', '男', 22, '教育学院', '大数据202班', '14512888556', '6#211');
INSERT INTO `student` (`id`, `studentid`, `studentname`, `sex`, `age`, `department`, `grade`, `phone`, `dormitory`) VALUES (10, 2023111253, '小小蓝', '女', 17, '化学与工程学院', '大数据202班', '14120930640', '6#212');
INSERT INTO `student` (`id`, `studentid`, `studentname`, `sex`, `age`, `department`, `grade`, `phone`, `dormitory`) VALUES (11, 2023111129, '小小红', '女', 22, '化学与工程学院', '大数据201班', '14278262584', '6#212');


