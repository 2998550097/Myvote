--管理员
create table admin(
     adminid int primary key, --管理员编号
     aname varchar2(20) not null,  --管理员姓名
     apassword varchar2(50)  --密码
);
insert into admin values(1,'a','a');

create table users(
       userid int primary key, --用户编号
       ucardId varchar2(20) unique, --身份证号码
       urealname varchar2(50),  --真实姓名
       uname varchar2(50) not null,  --用户昵称
       ubirthday varchar2(20),  --出生日期
       usex varchar2(4) default '男',  --性别
       uaddress varchar2(200),  --地址
       utel varchar2(20),  --电话
       uemail varchar2(20) not null unique,   --邮箱
       upassword varchar2(50) not null,
       upostcode varchar2(10),   --邮编
       ustatus varchar2(20),   --激活状态
       ustate varchar2(20),     --情感状态
       uimage varchar2(200)  --头像路径
);
insert into users values( seq_user_id.nextval,'430381199603090001','小黑',
'霸王','19940409','男','月亮镇萌星村','18174747474','123456789@qq.com','a','400400','已激活','未婚','a')
select * from users;
drop table users;
--店铺表
create table store(
       storeid int primary key,--店铺编号
       sname varchar2(50) not null,--店铺名字
       saddress varchar2(100) not null,--店铺地址
       sappointcount int,--预约次数
       simagelogo varchar2(200) not null, --店铺logo
       sstarttime varchar2(50) not null,  --开业时间
       sendtime varchar2(50) not null  --停业时间
);
insert into store values(10,'源城','衡阳',0,'a','a','a');
--系列表
create table series(
       seriesid int primary key,  --系列号
       seriesname varchar2(20) not null --系列名字
);
insert into series values(seq_series_id.nextval,'My love');
select * from series;
--款式表
create table style(
       styleid int primary key,  --款式号
       stylename varchar2(20) not null --款式名字
);
insert into style values(seq_style_id.nextval,'戒指');
select * from style;
--系列款式表
create table seriesStyle(
       ssid int primary key,
       seriesid int ,
       styleid int 
);
insert into seriesStyle values(seq_seriesstyle_id.nextval,101,1001)
select * from SERIESSTYLE;
--商品表
create table goods(
       goodid int primary key, --商品编号
       gname varchar2(50) not null unique,  --商品名称
       ssid int not null,--系列款式编号
       gmaterial varchar2(20) not null,--商品材质
       gimage varchar2(200) not null, --图片路径
       averagescore number(2,1) not null, --平均评分
       goodnum number(10), --收藏次数
       usercount number(10),--购买次数
       comcount number(10),--评论次数
       gother varchar2(20) --其它
);
select * from paramter;
insert into goods values(seq_goods_id.nextval,'自行车',10001,'粉钻','a',4,1,2,3,'钻石一样的永恒');
select * from goods;
--商品参数表
create table paramter(
	paramterid int primary key, --参数编号
	goodid int, --商品编号
	pcarat int, --商品重量（分）
	psize int,  --手寸
	gcrystal varchar2(10), --净度
	gcutting varchar2(10), --切工
	pprice number(10) not null --价格
);
insert into paramter values (seq_paramter_id.nextval,100001,1,12,'纯净','完美',10);
select * from paramter;
--收货地址
create table  delivery(
       deliveryid int primary key, --地址编号
       dname varchar2(20) not null, --收件人姓名
       ddetail varchar2(100) not null, --详细地址    
       dtel varchar2(20) not null, --联系电话
       dpostcode varchar2(10), --邮编
       dstatus varchar2(20)  --是否为默认地址
);

--订单表
create table orders(
       orderid varchar2(50) primary key, --订单号
       userid int not null, --用户编号 
       oname varchar2(20) not null, --收件人姓名
       odetail varchar2(100) not null, --详细地址
       ophone varchar2(20) not null, --移动电话
       opostcode varchar2(10), --邮编  
       oordertime varchar2(50) not null, --下单时间
       oarrivaltime varchar2(50), --到货时间
       ologisticsstyle varchar2(20),  --物流方式
       otel varchar2(20),  --联系电话
       ostatus varchar2(10), --订单状态
       remark varchar2(2000)   --备注
);

create table orderdetail(
       orderdetailid int primary key, --商品明细
       orderid varchar2(50) not null, --订单编号
       goodid int null --商品编号
);
drop table orderdetail;
--收藏表
create table collection(
       collectionid int primary key, --收藏编号
       userid int not null, --用户编号
       goodid int not null, --商品编号
       ctime varchar2(50) not null,  --收藏时间
       scount int --收藏总数量
       
);
insert into COLLECTION values(seq_orderdetail_id.nextval,111,100001,'2016-9-5',1);
select * from COLLECTION;
--评论表
create table comments(
      commentid int primary key,  --评论编号
      orderid int not null,  --订单编号
      goodid int not null,    --商品编号
      comtime varchar2(50) not null,  --评论时间
      commessage varchar2(1000), --评论细心
      comimage varchar2(1000), --上传图片
      comscore number(2,1)  --评分
);
insert into comments values(seq_comments_id.nextval,1301,1230,'2016-9-5','有毒',null,2.1);
commit;
--发表文章
create table article(
       articleid int primary key, --文章编号
       userid int not null,   --用户编号
       atitle varchar2(20) not null,  --文章标题
       aplate varchar2(10) not null,  --板块
       aprivacy varchar2(10) not null,  --私密度
       atime varchar2(50) not null,  --发表日起
       areadcount int, --阅读次数
       afocus int     --关注次数
);

--文章评论
create table articlecom(
       articlecom int primary key, --文章评论编号
       articleid int not null, --文章编号
       accontent varchar2(2000) not null,--评论内容
       acexpression varchar2(100), --表情
       actime varchar2(50) not null,--评论时间
       praisecount int --点赞次数
);

create sequence seq_admin_id start with 2;
create sequence seq_user_id start with 111;
create sequence seq_store_id start with 11;
create sequence seq_series_id start with 101;
create sequence seq_style_id start with 1001;
create sequence seq_seriesstyle_id start with 10001;
create sequence seq_goods_id start with 100001;
create sequence seq_paramter_id start with 1001;
create sequence seq_delivery_id start with 1000001;
create sequence seq_orders_id start with 100000000001;
create sequence seq_orderdetail_id start with 1000001;
create sequence seq_collection_id start with 10000001;
create sequence seq_comments_id start with 1000001;
create sequence seq_article_id start with 10000001;
create sequence seq_articlecom_id start with 1000001;

select * from admin;
select * from users;
select * from store;
select * from series;
select * from style;
select * from seriesstyle;
select * from goods;
select * from paramter;
select * from delivery;
select * from orders;
select * from orderdetail;
select * from collection;
select * from comments;
select * from article;
select * from articlecom;

drop sequence seq_admin_id ;
drop sequence seq_user_id;
drop sequence seq_store_id;
drop sequence seq_series_id ;
drop sequence seq_style_id ;
drop sequence seq_seriesstyle_id ;
drop sequence seq_goods_id;
drop sequence seq_paramter_id ;
drop sequence seq_delivery_id ;
drop sequence seq_orders_id ;
drop sequence seq_orderdetail_id ;
drop sequence seq_collection_id ;
drop sequence seq_comments_id ;
drop sequence seq_article_id ;
drop sequence seq_articlecom_id ;

drop table admin;
drop table users;
drop table store;
drop table series;
drop table style;
drop table seriesstyle;
drop table goods;
drop table paramter;
drop table delivery;
drop table orders;
drop table orderdetail;
drop table collection;
drop table comments;
drop table article;
drop table articlecom;
alter table goods add goodnum number(10);--收藏次数
alter table goods add usercount number(10);--用户购买次数
alter table goods add comnum number(10);--评论次数
alter table collection drop (scount);

alter table goods drop (gprice);
alter table paramter add pprice number(10);--价格
alter table paramter add pcolor varchar2(20);--颜色

select g.*,c.collectionId,c.ctime,s.seriesname,sy.stylename   
from goods g,collection c,series s,style sy 
where g.goodId=c.goodId and sy.styleid=g.styleid and g.seriesid=s.seriesid