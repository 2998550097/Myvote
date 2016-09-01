--管理员
create table admin(
     adminid int primary key, --管理员编号
     aname varchar2(20) not null,  --管理员姓名
     apassword varchar2(50)  --密码
);


create table users(
       userid int primary key, --用户编号
       ucardId varchar2(20) not null unique, --身份证号码
       urealname varchar2(50),  --真实姓名
       uname varchar2(50) not null,  --用户昵称
       ubirthday varchar2(20),  --出生日期
       usex varchar2(4) default '男',  --性别
       uaddress varchar2(200),  --地址
       utel varchar2(20),  --电话
       uemail varchar2(20) not null unique,   --邮箱
       upassword varchar2(50) not null,
       upostcode varchar2(10),   --邮编
       ustatus varchar2(2),   --激活状态
       ustate varchar2(2),     --情感状态
       uimage varchar2(200)  --头像路径
);

--店铺表
create table store(
       storeid int primary key,--店铺编号
       sname varchar2(50) not null,--店铺名字
       saddress varchar2(100) not null,--店铺地址
       sappointcount int,--预约次数
       simagelogo varchar2(200) not null, --店铺logo
       sstarttime varchar2(50) not null,  --开业时间
       sendtime varchar2(50) not null  --停业时间
)

--系列表
create table series(
       seriesid int primary key,  --系列号
       seriesname varchar2(20) not null --系列名字
);

--款式表
create table style(
       styleid int primary key,  --款式号
       stylename varchar2(20) not null --款式名字
);

--系列款式表
create table seriesStyle(
       ssid int primary key,
       seriesid int not null,
       styleid int not null
);

--商品表
create table goods(
       goodid int primary key, --商品编号
       gname varchar2(50) not null unique,  --商品名称
       seriesid int not null, --系列号
       styleid int not null,  --款式号
       gmaterial varchar2(20) not null,--商品材质
       gimage varchar2(200) not null, --图片路径
       gprice int not null,  --价格
       averagescore number(2,1) not null, --平均评分
       gother varchar2(20) --其它
       
);

--商品参数表
create table paramter(
	paramterid int primary key, --参数编号
	goodid int not null, --商品编号
	pcarat int, --商品重量（分）
	psize int,  --手寸
	gcrystal varchar2(10), --净度
	gcutting varchar2(10) --切工
);

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


create sequence seq_user_id start with 111;
create sequence seq_store_id start with 11;
create sequence seq_series_id start with 101;
create sequence seq_style_id start with 1001;
create sequence seq_seriesstyle_id start with 10001;
create sequence seq_goods_id start with 100001;
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
select * from delivery;
select * from orders;
select * from orderdetail;
select * from collection;
select * from comments;
select * from article;
select * from articlecom;


