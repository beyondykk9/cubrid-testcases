-- create VCLASS and another VCLASS inherited from the created VCLASS

CREATE VCLASS ddl_0001(
 col1  integer ,
 col2  numeric(10,5) ,
 col3  varchar(123456789) default 'ddl_0001',
 col4  char(2048),
 col5  float,
 col6  double,
 col7  bit(1000),
 col8  date,
 col9  time,
 col10  timestamp
);

CREATE VCLASS ddl_0002 UNDER ddl_0001(
 col11  varchar(123456789) ,
 col12  int ,
 col13  char(1000) default 'ddl_0002',
 col14  double,
 col15  date,
 col16  bit(1000),
 col17  timestamp,
 col18  time,
 col19  char(2048),
 col20  float
);

CREATE VCLASS ddl_0003 UNDER ddl_0001, ddl_0002(
 col21  bit(1000) ,
 col22  varchar(123456789) ,
 col23  integer default 123456789,
 col24  numeric(10,5),
 col25  char(2048),
 col26  float,
 col27  time,
 col28  timestamp,
 col29  date,
 col30  double
);

CREATE VCLASS ddl_0004 UNDER ddl_0001, ddl_0002(
 col41  double ,  
 col42  time ,
 col43  char(1000) default 'abcdefghijklmnopqrstuvwxyz',
 col44  integer,
 col45  bit(1000),
 col46  numeric(10,5),
 col47  date,
 col48  char(2048),
 col49  float,
 col50  varchar(123456789)
);

CREATE VCLASS ddl_0005 UNDER ddl_0001, ddl_0002, ddl_0003, ddl_0004(
 col51  date ,  
 col52  float ,
 col53  varchar(100000) default 'abcdefghijklmnopqrstuvwxyz', 
 col54  varchar(123456789),
 col55  integer,
 col56  numeric(10,5),
 col57  time,
 col58  double,
 col59  bit(1000),
 col60  char(2048)
);

CREATE VCLASS ddl_0006 UNDER ddl_0001, ddl_0003(
 col61  float ,  
 col62  bit(1000),
 col63  double default NULL, 
 col64  date,
 col65  numeric(10,5),
 col66  char(2048),
 col67  integer,
 col68  timestamp,
 col69  time,
 col70  varchar(123456789)
);

CREATE VCLASS ddl_0007 UNDER ddl_0003, ddl_0006(
 col71  date ,  
 col72  double ,
 col73  char(1000) default 'abcdefghijklmnopqrstuvwxyz', 
 col74  timestamp,
 col75  float,
 col76  numeric(10,5),
 col77  time,
 col78  integer,
 col79  varchar(123456789),
 col80  bit(1000)
);

CREATE VCLASS ddl_0008 UNDER ddl_0001, ddl_0002, ddl_0003, ddl_0004, ddl_0007(
 col81  numeric(10,5) ,  
 col82  char(2048) ,
 col83  varchar(1000) default 'abcdefghijklmnopqrstuvwxyz', 
 col84  varchar(123456789),
 col85  float,
 col86  time,
 col87  date,
 col88  timestamp,
 col89  integer,
 col90  double
);

CREATE VCLASS ddl_0009 UNDER ddl_0001, ddl_0002, ddl_0003, ddl_0004, ddl_0005, ddl_0006, ddl_0007, ddl_0008(
 col91  timestamp ,  
 col92  time ,
 col93  varchar(123456789) default 'abcdefghijklmnopqrstuvwxyz', 
 col94  double,
 col95  char(2048),
 col96  date,
 col97  bit(1000),
 col98  float,
 col99  numeric(10,5),
 col100  integer
);

CREATE VCLASS ddl_000a UNDER ddl_0001, ddl_0002, ddl_0003, ddl_0004, ddl_0005, ddl_0006, ddl_0007, ddl_0008, ddl_0009(
 col101  varchar(123456789) ,  
 col102  timestamp ,
 col103  numeric(10,5) default 12345.12345,
 col104  time,
 col105  bit(1000),
 col106  double,
 col107  date,
 col108  varchar(100000),
 col109  char(2048),
 col110  float
);

CREATE VCLASS ddl_000b UNDER ddl_0001, ddl_0002, ddl_0003, ddl_0004, ddl_0005, ddl_0006, ddl_0007, ddl_0008, ddl_0009, ddl_000a(
 col111  integer ,  
 col112  numeric(10,5) ,
 col113  varchar(1000) default 'abcdefghijklmnopqrstuvwxyz', 
 col114  time,
 col115  date,
 col116  timestamp,
 col117  float,
 col118  double,
 col119  varchar(123456789),
 col120  char(2048)
);

CREATE VCLASS ddl_000c UNDER ddl_0001, ddl_0002, ddl_0003, ddl_0004, ddl_0005, ddl_0006, ddl_0007, ddl_0008, ddl_0009, ddl_000a, ddl_000b(
 col121  time ,  
 col122  integer ,
 col123  varchar(100000) default 'abcdefghijklmnopqrstuvwxyz', 
 col124  varchar(123456789),
 col125  double,
 col126  char(2048),
 col127  numeric(10,5),
 col128  date,
 col129  bit(1000),
 col130  float
);

CREATE VCLASS ddl_000d UNDER ddl_0001, ddl_0002, ddl_0003, ddl_0004, ddl_0005, ddl_0006, ddl_0007, ddl_0008, ddl_0009, ddl_000a, ddl_000b, ddl_000c(
 col131  bit(1000) ,  
 col132  time ,
 col133  integer default 1234567890, 
 col134  timestamp,
 col135  numeric(10,5),
 col136  varchar(123456789),
 col137  double,
 col138  float,
 col139  char(2048),
 col140  date
);

CREATE VCLASS ddl_000e UNDER ddl_0001, ddl_0002, ddl_0003, ddl_0004, ddl_0005, ddl_0006, ddl_0007, ddl_0008, ddl_0009, ddl_000a, ddl_000b, ddl_000c, ddl_000d(
 col141  double ,  
 col142  float ,
 col143  char(1000) default 'abcdefghijklmnopqrstuvwxyz', 
 col144  integer,
 col145  char(2048),
 col146  varchar(123456789),
 col147  time,
 col148  date,
 col149  bit(1000),
 col150  numeric(10,5)
);

CREATE VCLASS ddl_000f UNDER ddl_0001, ddl_0002, ddl_0003, ddl_0004, ddl_0005, ddl_0006, ddl_0007, ddl_0008, ddl_0009, ddl_000a, ddl_000b, ddl_000c, ddl_000d, ddl_000e(
 col151  char(2048) ,  
 col152  time ,
 col153  double default 1234567890123, 
 col154  varchar(123456789),
 col155  integer,
 col156  char(2048),
 col157  date,
 col158  timestamp,
 col159  numeric(10,5),
 col160  bit(1000)
);

CREATE VCLASS ddl_0010 UNDER ddl_0001, ddl_0002, ddl_0003, ddl_0004, ddl_0005, ddl_0006, ddl_0007, ddl_0008, ddl_0009, ddl_000a, ddl_000b, ddl_000c, ddl_000d, ddl_000e, ddl_000f(
 col161  numeric(10,5) ,  
 col162  timestamp ,
 col163  float default 123456789, 
 col164  double,
 col165  time,
 col166  integer,
 col167  char(2048),
 col168  date,
 col169  bit(1000),
 col170  varchar(123456789)
);

CREATE VCLASS ddl_0011 UNDER ddl_0001, ddl_0002, ddl_0003, ddl_0004, ddl_0005, ddl_0006, ddl_0007, ddl_0008, ddl_0009, ddl_000a, ddl_000b, ddl_000c, ddl_000d, ddl_000e, ddl_000f, ddl_0010(
 col171  float ,  
 col172  varchar(123456789) ,
 col173  integer default 123546789, 
 col174  char(2048),
 col175  bit(1000),
 col176  double,
 col177  integer,
 col178  date,
 col179  time,
 col180  numeric(10,5)
);

CREATE VCLASS ddl_0012 UNDER ddl_0001, ddl_0002, ddl_0003, ddl_0004, ddl_0005, ddl_0006, ddl_0007, ddl_0008, ddl_0009, ddl_000a, ddl_000b, ddl_000c, ddl_000d, ddl_000e, ddl_000f, ddl_0010, ddl_0011(
 col181  char(2048) ,  
 col182  time ,
 col183  varchar(123456789) default 'abcdefghijklmnopqrstuvwxyz', 
 col184  numeric(10,5),
 col185  timestamp,
 col186  float,
 col187  date,
 col188  integer,
 col189  bit(1000),
 col190  double
);

CREATE VCLASS ddl_0013 UNDER ddl_0001, ddl_0002, ddl_0003, ddl_0004, ddl_0005, ddl_0006, ddl_0007, ddl_0008, ddl_0009, ddl_000a, ddl_000b, ddl_000c, ddl_000d, ddl_000e, ddl_000f, ddl_0010, ddl_0011, ddl_0012(
 col191  varchar(123456789) ,  
 col192  date ,
 col193  numeric(5,1) default 1234.1, 
 col194  char(2048),
 col195  bit(1000),
 col196  numeric(10,5),
 col197  time,
 col198  double,
 col199  integer,
 col200  float
);





drop VCLASS ddl_0001;
drop VCLASS ddl_0002;
drop VCLASS ddl_0003;
drop VCLASS ddl_0004;
drop VCLASS ddl_0005;
drop VCLASS ddl_0006;
drop VCLASS ddl_0007;
drop VCLASS ddl_0008;
drop VCLASS ddl_0009;
drop VCLASS ddl_000a;
drop VCLASS ddl_000b;
drop VCLASS ddl_000c;
drop VCLASS ddl_000d;
drop VCLASS ddl_000e;
drop VCLASS ddl_000f;
drop VCLASS ddl_0010;
drop VCLASS ddl_0011;
drop VCLASS ddl_0012;
drop VCLASS ddl_0013;
