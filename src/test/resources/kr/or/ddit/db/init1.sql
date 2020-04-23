-- 해당 테이블은 테스트 계정에만 있기 때문에 개발자가 실수로 운영디비를 설정해도 sql이 정상적으로 실행되지 않는다.
-- 이후에 등장하는 sql들을 실행되지 않는다. populator.setContinueOnError(false);
select * from not_exists_in_prd;

-- prod 관련 테이블 데이터 전체 지우기
--delete users;			  -- 복구가 가능(아카이브 로그를 남긴다.)
truncate table lprod;     -- 복구가 불가능(아카이브 로그를 남기지 않는다.)
truncate table buyer;     -- 복구가 불가능(아카이브 로그를 남기지 않는다.)
truncate table prod;     -- 복구가 불가능(아카이브 로그를 남기지 않는다.)

-- lprod

Insert into LPROD (LPROD_ID,LPROD_GU,LPROD_NM) values (1,'P101','컴퓨터제품');
Insert into LPROD (LPROD_ID,LPROD_GU,LPROD_NM) values (2,'P102','전자제품');
Insert into LPROD (LPROD_ID,LPROD_GU,LPROD_NM) values (3,'P201','여성캐주얼');
Insert into LPROD (LPROD_ID,LPROD_GU,LPROD_NM) values (4,'P202','남성캐주얼');
Insert into LPROD (LPROD_ID,LPROD_GU,LPROD_NM) values (5,'P301','피혁잡화');
Insert into LPROD (LPROD_ID,LPROD_GU,LPROD_NM) values (6,'P302','화장품');
Insert into LPROD (LPROD_ID,LPROD_GU,LPROD_NM) values (7,'P401','음반/CD');
Insert into LPROD (LPROD_ID,LPROD_GU,LPROD_NM) values (8,'P402','도서');
Insert into LPROD (LPROD_ID,LPROD_GU,LPROD_NM) values (9,'P403','문구류');
Insert into LPROD (LPROD_ID,LPROD_GU,LPROD_NM) values (10,'P444','자바프로그램');

-- prod

Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P101000001','모니터 삼성전자15인치칼라','P101','P10101',210000,290000,230000,'평면모니터의 기적','P101000001.gif',0,to_date('2005/01/10','YYYY/MM/DD'),33,'15인치',null,'파손 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P101000002','모니터 삼성전자17인치칼라','P101','P10101',310000,390000,330000,'평면모니터의 기적','P101000002.gif',0,to_date('2005/01/10','YYYY/MM/DD'),23,'17인치',null,'파손 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P101000003','모니터 삼성전자19인치칼라','P101','P10101',410000,490000,430000,'평면모니터의 기적','P101000003.gif',0,to_date('2005/01/10','YYYY/MM/DD'),15,'19인치',null,'파손 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P101000004','삼보컴퓨터 P-III 600Mhz','P101','P10102',1150000,1780000,1330000,'쉬운 인터넷을.....','P101000004.gif',0,to_date('2005/02/08','YYYY/MM/DD'),22,null,null,'파손 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P101000005','삼보컴퓨터 P-III 700Mhz','P101','P10102',2150000,2780000,2330000,'쉬운 인터넷을.....','P101000005.gif',0,to_date('2005/02/08','YYYY/MM/DD'),31,null,null,'파손 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P101000006','삼보컴퓨터 P-III 800Mhz','P101','P10102',3150000,3780000,3330000,'쉬운 인터넷을.....','P101000006.gif',0,to_date('2005/02/08','YYYY/MM/DD'),17,null,null,'파손 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P102000001','대우 칼라 TV 25인치','P102','P10201',690000,820000,720000,'집안에 영화관을.....','P102000001.gif',0,to_date('2005/02/22','YYYY/MM/DD'),53,'25인치','흑색','파손 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P102000002','대우 칼라 TV 29인치','P102','P10201',890000,1020000,920000,'집안에 영화관을.....','P102000002.gif',0,to_date('2005/02/22','YYYY/MM/DD'),21,'29인치','흑색','파손 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P102000003','삼성 칼라 TV 21인치','P102','P10202',590000,720000,620000,'집안에 영화관을.....','P102000003.gif',0,to_date('2005/01/22','YYYY/MM/DD'),11,'21인치','은색','파손 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P102000004','삼성 칼라 TV 29인치','P102','P10202',990000,1120000,1020000,'집안에 영화관을.....','P102000004.gif',0,to_date('2005/01/22','YYYY/MM/DD'),19,'29인치','은색','파손 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P102000005','삼성 칼라 TV 53인치','P102','P10202',1990000,2120000,2020000,'집안에 영화관을.....','P102000005.gif',0,to_date('2005/01/22','YYYY/MM/DD'),8,'53인치','은색','파손 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P102000006','삼성 캠코더','P102','P10202',660000,880000,770000,'가족과 영화촬영을.....','P102000006.gif',0,to_date('2005/02/23','YYYY/MM/DD'),17,null,null,'파손 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P102000007','대우 VTR 6헤드','P102','P10201',550000,760000,610000,'선명한 화질','P102000007.gif',0,to_date('2005/01/23','YYYY/MM/DD'),36,null,null,'파손 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P201000001','여성 봄 셔츠 1','P201','P20101',21000,42000,27000,'파릇한 봄을 위한','P201000001.gif',0,to_date('2005/01/09','YYYY/MM/DD'),9,'s','청색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P201000002','여성 봄 셔츠 2','P201','P20101',22000,43000,28000,'파릇한 봄을 위한','P201000002.gif',0,to_date('2005/01/09','YYYY/MM/DD'),9,'M','흰색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P201000003','여성 봄 셔츠 3','P201','P20101',23000,44000,29000,'파릇한 봄을 위한','P201000003.gif',0,to_date('2005/01/09','YYYY/MM/DD'),9,'L','감색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P201000004','여성 여름 셔츠 1','P201','P20101',12000,21000,25000,'시원한 여름을 위한','P201000004.gif',0,to_date('2005/01/11','YYYY/MM/DD'),9,'s','청색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P201000005','여성 여름 셔츠 2','P201','P20101',13000,22000,26000,'시원한 여름을 위한','P201000005.gif',0,to_date('2005/01/11','YYYY/MM/DD'),9,'M','흰색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P201000006','여성 여름 셔츠 3','P201','P20101',14000,23000,27000,'시원한 여름을 위한','P201000006.gif',0,to_date('2005/01/11','YYYY/MM/DD'),9,'L','감색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P201000007','여성 겨울 라운드 셔츠 1','P201','P20101',31000,45000,33000,'따뜻한 겨울을 위한','P201000007.gif',0,to_date('2005/01/25','YYYY/MM/DD'),9,'s','청색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P201000008','여성 겨울 라운드 셔츠 2','P201','P20101',32000,46000,34000,'따뜻한 겨울을 위한','P201000008.gif',0,to_date('2005/01/25','YYYY/MM/DD'),9,'M','흰색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P201000009','여성 겨울 라운드 셔츠 3','P201','P20101',33000,47000,35000,'따뜻한 겨울을 위한','P201000009.gif',0,to_date('2005/01/25','YYYY/MM/DD'),9,'L','감색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P201000010','여성 청바지 1','P201','P20102',55000,66000,57000,'편리한 활동파를 위한','P201000010.gif',0,to_date('2005/01/31','YYYY/MM/DD'),38,'30',null,'세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P201000011','여성 청바지 2','P201','P20102',56000,67000,58000,'편리한 활동파를 위한','P201000011.gif',0,to_date('2005/01/31','YYYY/MM/DD'),35,'32',null,'세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P201000012','여성 청바지 3','P201','P20102',57000,68000,59000,'편리한 활동파를 위한','P201000012.gif',0,to_date('2005/01/31','YYYY/MM/DD'),33,'34',null,'세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P201000013','여성 봄 자켓 1','P201','P20101',110000,210000,170000,'편리한 활동파의 봄을 위한','P201000013.gif',0,to_date('2005/02/18','YYYY/MM/DD'),16,'66','청색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P201000014','여성 봄 자켓 2','P201','P20101',120000,220000,180000,'편리한 활동파의 봄을 위한','P201000014.gif',0,to_date('2005/02/18','YYYY/MM/DD'),18,'77','흰색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P201000015','여성 봄 자켓 3','P201','P20101',130000,230000,190000,'편리한 활동파의 봄을 위한','P201000015.gif',0,to_date('2005/02/18','YYYY/MM/DD'),17,'88','감색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P201000016','여성 여름 자켓 1','P201','P20102',100000,160000,130000,'편리한 활동파의 여름을 위한','P201000016.gif',0,to_date('2005/02/21','YYYY/MM/DD'),12,'66','청색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P201000017','여성 여름 자켓 2','P201','P20102',110000,170000,140000,'편리한 활동파의 여름을 위한','P201000017.gif',0,to_date('2005/02/21','YYYY/MM/DD'),21,'77','흰색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P201000018','여성 여름 자켓 3','P201','P20102',120000,180000,150000,'편리한 활동파의 여름을 위한','P201000018.gif',0,to_date('2005/02/21','YYYY/MM/DD'),11,'77','감색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P201000019','여성 겨울 자켓 1','P201','P20102',210000,270000,240000,'편리한 활동파의 따뜻한 겨울을 위한','P201000019.gif',0,to_date('2005/02/28','YYYY/MM/DD'),22,'66','청색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P201000020','여성 겨울 자켓 2','P201','P20102',220000,280000,250000,'편리한 활동파의 따뜻한 겨울을 위한','P201000020.gif',0,to_date('2005/02/28','YYYY/MM/DD'),29,'77','흰색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P201000021','여성 겨울 자켓 3','P201','P20102',230000,290000,260000,'편리한 활동파의 따뜻한 겨울을 위한','P201000021.gif',0,to_date('2005/02/28','YYYY/MM/DD'),19,'88','감색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P202000001','남성 봄 셔츠 1','P202','P20201',10000,19000,15000,'파릇한 봄을 위한','P202000001.gif',0,to_date('2005/01/05','YYYY/MM/DD'),9,'M','청색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P202000002','남성 봄 셔츠 2','P202','P20201',13000,22000,18000,'파릇한 봄을 위한','P202000002.gif',0,to_date('2005/01/05','YYYY/MM/DD'),9,'L','흰색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P202000003','남성 봄 셔츠 3','P202','P20201',15000,24000,20000,'파릇한 봄을 위한','P202000003.gif',0,to_date('2005/01/05','YYYY/MM/DD'),9,'XL','감색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P202000004','남성 여름 셔츠 1','P202','P20201',18000,28000,23000,'시원한 여름을 위한','P202000004.gif',0,to_date('2005/02/05','YYYY/MM/DD'),9,'M','청색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P202000005','남성 여름 셔츠 2','P202','P20201',23000,33000,28000,'시원한 여름을 위한','P202000005.gif',0,to_date('2005/02/05','YYYY/MM/DD'),9,'L','흰색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P202000006','남성 여름 셔츠 3','P202','P20201',28000,38000,33000,'시원한 여름을 위한','P202000006.gif',0,to_date('2005/02/05','YYYY/MM/DD'),9,'XL','감색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P202000007','남성 겨울 라운드 셔츠 1','P202','P20201',25000,42000,31000,'따뜻한 겨울을 위한','P202000007.gif',0,to_date('2005/01/13','YYYY/MM/DD'),9,'M','청색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P202000008','남성 겨울 라운드 셔츠 2','P202','P20201',27000,43000,33000,'따뜻한 겨울을 위한','P202000008.gif',0,to_date('2005/01/13','YYYY/MM/DD'),9,'L','흰색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P202000009','남성 겨울 라운드 셔츠 3','P202','P20201',28500,44000,35000,'따뜻한 겨울을 위한','P202000009.gif',0,to_date('2005/01/13','YYYY/MM/DD'),9,'XL','감색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P202000010','남성 청바지 1','P202','P20202',55000,66000,58000,'편리한 활동파를 위한','P202000010.gif',0,to_date('2005/01/16','YYYY/MM/DD'),38,'30',null,'세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P202000011','남성 청바지 2','P202','P20202',55000,66000,58000,'편리한 활동파를 위한','P202000011.gif',0,to_date('2005/01/16','YYYY/MM/DD'),35,'32',null,'세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P202000012','남성 청바지 3','P202','P20202',55000,66000,58000,'편리한 활동파를 위한','P202000012.gif',0,to_date('2005/01/16','YYYY/MM/DD'),33,'34',null,'세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P202000013','남성 봄 자켓 1','P202','P20201',110000,230000,150000,'편리한 활동파의 봄을 위한','P202000013.gif',0,to_date('2005/02/17','YYYY/MM/DD'),16,'M','청색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P202000014','남성 봄 자켓 2','P202','P20201',120000,230000,160000,'편리한 활동파의 봄을 위한','P202000014.gif',0,to_date('2005/02/17','YYYY/MM/DD'),18,'L','흰색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P202000015','남성 봄 자켓 3','P202','P20201',130000,230000,170000,'편리한 활동파의 봄을 위한','P202000015.gif',0,to_date('2005/02/17','YYYY/MM/DD'),17,'XL','감색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P202000016','남성 여름 자켓 1','P202','P20202',99000,160000,130000,'편리한 활동파의 여름을 위한','P202000016.gif',0,to_date('2005/02/06','YYYY/MM/DD'),12,'M','청색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P202000017','남성 여름 자켓 2','P202','P20202',109000,170000,150000,'편리한 활동파의 여름을 위한','P202000017.gif',0,to_date('2005/02/06','YYYY/MM/DD'),21,'L','흰색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P202000018','남성 여름 자켓 3','P202','P20202',159000,190000,170000,'편리한 활동파의 여름을 위한','P202000018.gif',0,to_date('2005/02/06','YYYY/MM/DD'),11,'XL','감색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P202000019','남성 겨울 자켓 1','P202','P20202',210000,370000,280000,'편리한 활동파의 따뜻한 겨울을 위한','P202000019.gif',0,to_date('2005/02/20','YYYY/MM/DD'),22,'M','청색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P202000020','남성 겨울 자켓 2','P202','P20202',220000,370000,290000,'편리한 활동파의 따뜻한 겨울을 위한','P202000020.gif',0,to_date('2005/02/20','YYYY/MM/DD'),29,'L','흰색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P202000021','남성 겨울 자켓 3','P202','P20202',230000,370000,300000,'편리한 활동파의 따뜻한 겨울을 위한','P202000021.gif',0,to_date('2005/02/20','YYYY/MM/DD'),19,'XL','감색','세탁 주의','EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P301000001','악어 가죽 혁대','P301','P30101',21000,41000,33000,'멋진 혁대를 선물로.....','P301000001.gif',0,to_date('2005/01/15','YYYY/MM/DD'),32,null,null,null,'EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P301000002','물소 가죽 장지갑','P301','P30101',17000,37000,29000,'멋진 지갑을 선물로.....','P301000002.gif',0,to_date('2005/01/15','YYYY/MM/DD'),52,null,null,null,'EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P301000003','여성용 손지갑','P301','P30101',22000,33000,26000,'멋진 지갑을 선물로.....','P301000003.gif',0,to_date('2005/02/15','YYYY/MM/DD'),22,null,null,null,'EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P301000004','여성용 캐쥬얼 벨트','P301','P30101',27000,37000,29000,'멋진 벨트를 선물로.....','P301000004.gif',0,to_date('2005/02/15','YYYY/MM/DD'),21,null,null,null,'EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P302000001','향수 NO 5','P302','P30201',89000,110000,93000,'향기를 동반한.....','P302000001.gif',0,to_date('2005/01/24','YYYY/MM/DD'),11,null,null,null,'EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P302000002','샤넬 NO 7','P302','P30201',99000,120000,103000,'향기를 동반한.....','P302000002.gif',0,to_date('2005/01/24','YYYY/MM/DD'),17,null,null,null,'EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P302000003','남성용 스킨','P302','P30201',19000,32000,21000,'세안후 바르는.....','P302000003.gif',0,to_date('2005/01/24','YYYY/MM/DD'),21,null,null,null,'EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P302000004','남성용 로숀','P302','P30201',21000,33000,23000,'세안후 바르는.....','P302000004.gif',0,to_date('2005/02/12','YYYY/MM/DD'),19,null,null,null,'EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P302000005','여성용 스킨','P302','P30201',18000,31000,20000,'세안후 바르는.....','P302000005.gif',0,to_date('2005/02/12','YYYY/MM/DD'),21,null,null,null,'EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P302000006','여성용 로숀','P302','P30201',20000,32000,22000,'세안후 바르는.....','P302000006.gif',0,to_date('2005/02/12','YYYY/MM/DD'),19,null,null,null,'EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P302000011','남성 향수','P302','P30202',59000,70000,63000,'좋은 향기를 동반한.....','P302000011.gif',0,to_date('2005/01/13','YYYY/MM/DD'),21,null,null,null,'EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P302000012','여성 향수','P302','P30202',89000,110000,93000,'좋은향기를 동반한.....','P302000012.gif',0,to_date('2005/01/13','YYYY/MM/DD'),27,null,null,null,'EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P302000013','립스틱','P302','P30202',17000,27000,23000,'세안후 바르는 좋은.....','P302000013.gif',0,to_date('2005/01/13','YYYY/MM/DD'),11,null,null,null,'EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P302000014','면도크림','P302','P30202',25000,32000,26000,'세안후 바르는 좋은.....','P302000014.gif',0,to_date('2005/01/14','YYYY/MM/DD'),29,null,null,null,'EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P302000015','화운데이션','P302','P30202',22000,32000,23000,'세안후 바르는 좋은.....','P302000015.gif',0,to_date('2005/01/14','YYYY/MM/DD'),15,null,null,null,'EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P302000016','머드팩','P302','P30202',120000,220000,172000,'세안후 바르는 좋은.....','P302000016.gif',0,to_date('2005/01/14','YYYY/MM/DD'),32,null,null,null,'EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P302000021','참존 기초화장품','P302','P30203',23500,37500,26000,'피부를 산뜻하게.....','P302000021.gif',0,to_date('2005/01/28','YYYY/MM/DD'),25,null,null,null,'EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P302000022','참존 여성 향수','P302','P30203',78500,98500,83000,'좋은향기와 피부를 산뜻하게.....','P302000022.gif',0,to_date('2005/01/28','YYYY/MM/DD'),53,null,null,null,'EA',0,0,null);
Insert into PROD (PROD_ID,PROD_NAME,PROD_LGU,PROD_BUYER,PROD_COST,PROD_PRICE,PROD_SALE,PROD_OUTLINE,PROD_IMG,PROD_TOTALSTOCK,PROD_INSDATE,PROD_PROPERSTOCK,PROD_SIZE,PROD_COLOR,PROD_DELIVERY,PROD_UNIT,PROD_QTYIN,PROD_QTYSALE,PROD_MILEAGE) values ('P302000023','참존 립스틱','P302','P30203',21500,26500,22500,'좋은 피부를 산뜻하게.....','P302000023.gif',0,to_date('2005/01/28','YYYY/MM/DD'),17,null,null,null,'EA',0,0,null);

-- buyer

Insert into BUYER (BUYER_ID,BUYER_NAME,BUYER_LGU,BUYER_BANK,BUYER_BANKNO,BUYER_BANKNAME,BUYER_ZIP,BUYER_ADD1,BUYER_ADD2,BUYER_COMTEL,BUYER_FAX,BUYER_MAIL,BUYER_CHARGER,BUYER_TELEXT) values ('P10101','삼성컴퓨터','P101','주택은행','123-456-7890','이건상','135-972','서울 강남구 도곡2동현대비젼21','1125호','02-522-7890','02-522-7891','samcom@samsung.co.kr','송동구',null);
Insert into BUYER (BUYER_ID,BUYER_NAME,BUYER_LGU,BUYER_BANK,BUYER_BANKNO,BUYER_BANKNAME,BUYER_ZIP,BUYER_ADD1,BUYER_ADD2,BUYER_COMTEL,BUYER_FAX,BUYER_MAIL,BUYER_CHARGER,BUYER_TELEXT) values ('P10102','삼보컴퓨터','P101','제일은행','732-702-195670','김현우','142-726','서울 강북구 미아6동 행전빌딩','2712호','02-632-5690','02-632-5699','sambo@sambo.co.kr','김서구',null);
Insert into BUYER (BUYER_ID,BUYER_NAME,BUYER_LGU,BUYER_BANK,BUYER_BANKNO,BUYER_BANKNAME,BUYER_ZIP,BUYER_ADD1,BUYER_ADD2,BUYER_COMTEL,BUYER_FAX,BUYER_MAIL,BUYER_CHARGER,BUYER_TELEXT) values ('P10103','현주컴퓨터','P101','국민은행','112-650-397811','심현주','404-260','인천 서구 마전동','157-899번지','032-233-7832','032-233-7833','hyunju@hyunju.com','강남구',null);
Insert into BUYER (BUYER_ID,BUYER_NAME,BUYER_LGU,BUYER_BANK,BUYER_BANKNO,BUYER_BANKNAME,BUYER_ZIP,BUYER_ADD1,BUYER_ADD2,BUYER_COMTEL,BUYER_FAX,BUYER_MAIL,BUYER_CHARGER,BUYER_TELEXT) values ('P10201','대우전자','P102','농협','222-333-567890','강대우','702-864','대구 북구 태전동','232번지','053-780-2356','053-780-2357','daewoo@daewoo.co.kr','성대우',null);
Insert into BUYER (BUYER_ID,BUYER_NAME,BUYER_LGU,BUYER_BANK,BUYER_BANKNO,BUYER_BANKNAME,BUYER_ZIP,BUYER_ADD1,BUYER_ADD2,BUYER_COMTEL,BUYER_FAX,BUYER_MAIL,BUYER_CHARGER,BUYER_TELEXT) values ('P10202','삼성전자','P102','외환은행','989-323-567898','박삼성','614-728','부산 부산진구 부전1동 동아빌딩','1708호','051-567-5312','051-567-5313','samsung@samsung.com','김인우',null);
Insert into BUYER (BUYER_ID,BUYER_NAME,BUYER_LGU,BUYER_BANK,BUYER_BANKNO,BUYER_BANKNAME,BUYER_ZIP,BUYER_ADD1,BUYER_ADD2,BUYER_COMTEL,BUYER_FAX,BUYER_MAIL,BUYER_CHARGER,BUYER_TELEXT) values ('P20101','대현','P201','국민은행','688-323-567898','신대현','306-785','대전 대덕구 오정동 운암빌딩','508호','042-332-5123','042-332-5125','daehyun@daehyun.com','진대영',null);
Insert into BUYER (BUYER_ID,BUYER_NAME,BUYER_LGU,BUYER_BANK,BUYER_BANKNO,BUYER_BANKNAME,BUYER_ZIP,BUYER_ADD1,BUYER_ADD2,BUYER_COMTEL,BUYER_FAX,BUYER_MAIL,BUYER_CHARGER,BUYER_TELEXT) values ('P20102','마르죠','P201','주택은행','123-777-7890','이마루','135-972','서울 강남구 도곡2동 현대비젼21','1211호','02-533-7890','02-533-5699','mar@marjo.co.kr','조현상',null);
Insert into BUYER (BUYER_ID,BUYER_NAME,BUYER_LGU,BUYER_BANK,BUYER_BANKNO,BUYER_BANKNAME,BUYER_ZIP,BUYER_ADD1,BUYER_ADD2,BUYER_COMTEL,BUYER_FAX,BUYER_MAIL,BUYER_CHARGER,BUYER_TELEXT) values ('P20201','LG패션','P202','제일은행','732-702-556677','김애지','142-726','서울 강북구 미아6동 행전빌딩','5011호','02-332-5690','02-332-5699','lgfashion.co.kr','남지수',null);
Insert into BUYER (BUYER_ID,BUYER_NAME,BUYER_LGU,BUYER_BANK,BUYER_BANKNO,BUYER_BANKNAME,BUYER_ZIP,BUYER_ADD1,BUYER_ADD2,BUYER_COMTEL,BUYER_FAX,BUYER_MAIL,BUYER_CHARGER,BUYER_TELEXT) values ('P20202','캠브리지','P202','국민은행','112-888-397811','안불이주','404-260','인천 서구 마전동','535-899번지','032-255-7832','032-255-7833','cambrige@cambrige.com','신일수',null);
Insert into BUYER (BUYER_ID,BUYER_NAME,BUYER_LGU,BUYER_BANK,BUYER_BANKNO,BUYER_BANKNAME,BUYER_ZIP,BUYER_ADD1,BUYER_ADD2,BUYER_COMTEL,BUYER_FAX,BUYER_MAIL,BUYER_CHARGER,BUYER_TELEXT) values ('P30101','가파치','P301','농협','211-333-511890','김선아','702-864','대구 북구 태전동','555-66호','053-535-2356','053-535-2357','gapachi@gapachi.co.kr','이수나',null);
Insert into BUYER (BUYER_ID,BUYER_NAME,BUYER_LGU,BUYER_BANK,BUYER_BANKNO,BUYER_BANKNAME,BUYER_ZIP,BUYER_ADD1,BUYER_ADD2,BUYER_COMTEL,BUYER_FAX,BUYER_MAIL,BUYER_CHARGER,BUYER_TELEXT) values ('P30201','한국화장품','P302','외환은행','333-355-568898','박한국','614-728','부산 부산진구 부전1동 동아빌딩','309호','051-212-5312','051-212-5313','hangook@hangook.com','김사우',null);
Insert into BUYER (BUYER_ID,BUYER_NAME,BUYER_LGU,BUYER_BANK,BUYER_BANKNO,BUYER_BANKNAME,BUYER_ZIP,BUYER_ADD1,BUYER_ADD2,BUYER_COMTEL,BUYER_FAX,BUYER_MAIL,BUYER_CHARGER,BUYER_TELEXT) values ('P30202','피리어스','P302','국민은행','677-888-569998','신상우','306-785','대전대덕구 오정동 운암빌딩','612호','042-222-5123','042-222-5125','pieoris@pieoris.com','이진영',null);
Insert into BUYER (BUYER_ID,BUYER_NAME,BUYER_LGU,BUYER_BANK,BUYER_BANKNO,BUYER_BANKNAME,BUYER_ZIP,BUYER_ADD1,BUYER_ADD2,BUYER_COMTEL,BUYER_FAX,BUYER_MAIL,BUYER_CHARGER,BUYER_TELEXT) values ('P30203','참존','P302','주택은행','555-777-567778','오참존','306-785','대전대덕구 오정동 운암빌딩','1007호','042-622-5123','042-622-5125','chamjon@chamjon.com','성애란',null);

commit;