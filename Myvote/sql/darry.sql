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
       seriesid int,
       styleid int,
       goodid int not null
);
--商品表
create table goods(
       goodid int primary key, --商品编号
       gname varchar2(50) not null unique,  --商品名称
       gmaterial varchar2(20) not null,--商品材质
       gimage varchar2(200) not null, --图片路径
       averagescore number(2,1) not null, --平均评分
       goodnum number(10), --收藏次数
       usercount number(10),--购买次数
       comcount number(10),--评论次数
       gother varchar2(20) --其它
);
drop table goods

insert into goods values(100028,'小碗','完美','wwww',1.2,0,0,0,'n')
select * from goods
--商品参数表
create table paramter(
	paramterid int primary key, --参数编号
	goodid int, --商品编号
	pcarat varchar2(20), --商品重量（分）
	psize int,  --手寸
	gcrystal varchar2(10), --净度
	gcutting varchar2(10), --切工
	pprice number(10) not null, --价格
	pcount number(10)--数量
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
       goodid int not null, --商品编号
       odcount int, --商品数量
       discount number(2,1),  --商品折扣
       totalprice number(10)  --总价格
);
drop table orderdetail;
--收藏表
create table collection(
       collectionid int primary key, --收藏编号
       userid int not null, --用户编号
       goodid int not null, --商品编号
       ctime varchar2(50) not null  --收藏时间
);
insert into COLLECTION values(seq_orderdetail_id.nextval,111,100001,'2016-9-5');
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
create sequence seq_goods_id start with 1000028;
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
drop sequence seq_seriesstyle_id;
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

--系列表
insert into series(seriesid,seriesname) values(seq_series_id.nextval,'稀世粉钻'); 
insert into series(seriesid,seriesname) values(seq_series_id.nextval,'Love Line系列'); 
insert into series(seriesid,seriesname) values(seq_series_id.nextval,'Forever系列'); 
insert into series(seriesid,seriesname) values(seq_series_id.nextval,'My Heart系列');
insert into series(seriesid,seriesname) values(seq_series_id.nextval,'True Love系列'); 
insert into series(seriesid,seriesname) values(seq_series_id.nextval,'I Swear系列'); 
insert into series(seriesid,seriesname) values(seq_series_id.nextval,'Princess系列'); 
insert into series(seriesid,seriesname) values(seq_series_id.nextval,'Believe系列'); 
insert into series(seriesid,seriesname) values(110,'Darry Ring系列');
insert into series(seriesid,seriesname) values(111,'Together系列');
insert into series(seriesid,seriesname) values(112,'Lucky Love系列');

--款式表
insert into style(styleid,stylename) values(seq_style_id.nextval,'对戒');
insert into style(styleid,stylename) values(seq_style_id.nextval,'男戒'); 
insert into style(styleid,stylename) values(seq_style_id.nextval,'吊坠');
insert into style(styleid,stylename) values(seq_style_id.nextval,'耳饰'); 
insert into style(styleid,stylename) values(seq_style_id.nextval,'手链/手镯');


--系列款式表
--系列
insert into seriesstyle(goodid,seriesid,styleid) values(102,null,100001);
insert into seriesstyle(goodid,seriesid,styleid) values(102,null,100002);
insert into seriesstyle(goodid,seriesid,styleid) values(102,null,100003);
insert into seriesstyle(goodid,seriesid,styleid) values(103,null,100004);
insert into seriesstyle(goodid,seriesid,styleid) values(103,null,100005);
insert into seriesstyle(goodid,seriesid,styleid) values(104,null,100006);
insert into seriesstyle(goodid,seriesid,styleid) values(104,null,100007);
insert into seriesstyle(goodid,seriesid,styleid) values(104,null,100008);
insert into seriesstyle(goodid,seriesid,styleid) values(104,null,100009);
insert into seriesstyle(goodid,seriesid,styleid) values(105,null,100010);      
insert into seriesstyle(goodid,seriesid,styleid) values(105,null,100011);      
insert into seriesstyle(goodid,seriesid,styleid) values(106,null,100012);      
insert into seriesstyle(goodid,seriesid,styleid) values(107,null,100013);
insert into seriesstyle(goodid,seriesid,styleid) values(107,null,100014);      
insert into seriesstyle(goodid,seriesid,styleid) values(108,null,100015);
--对戒
insert into seriesstyle(goodid,seriesid,styleid) values(109,1001,100016);      
insert into seriesstyle(goodid,seriesid,styleid) values(109,1001,100017);
insert into seriesstyle(goodid,seriesid,styleid) values(110,1001,100018);
insert into seriesstyle(goodid,seriesid,styleid) values(110,1001,100019);      
insert into seriesstyle(goodid,seriesid,styleid) values(110,1001,100020);
--吊坠
insert into seriesstyle(goodid,seriesid,styleid) values(111,1003,100021);
insert into seriesstyle(goodid,seriesid,styleid) values(109,1003,100022);      
insert into seriesstyle(goodid,seriesid,styleid) values(109,1003,100023);
insert into seriesstyle(goodid,seriesid,styleid) values(112,1003,100024);
--耳饰
insert into seriesstyle(goodid,seriesid,styleid) values(104,1004,100025);      
insert into seriesstyle(goodid,seriesid,styleid) values(104,1004,100025);
insert into seriesstyle(goodid,seriesid,styleid) values(103,1004,100026);



--商品表
--女戒
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100001,'Love Line系列 [A10001]','白18K金,PT950','20150928184958b148a531bc.jpg,20150928185001a611ee0298.jpg,2015092818500388968e4d3b.jpg,201509281850040d82ebbf4c.jpg',0,0,0,0,null);
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100002,'Love Line系列 [A10002]','白18K金,PT950','201606201013425c46d90c91.jpg,2016062010134644945bb6a4.jpg,201606201013489a22139075.jpg,20160620101350d2f9fcb5a8.jpg',0,0,0,0,null);
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100003,'Love Line系列 [A10003]','白18K金,PT950','20150928184507d04f6771f9.jpg,2015092818451348d03dfe3b.jpg,20150928184514d3bdac28ed.jpg,20150928184515d4b0ea2b71.jpg',0,0,0,0,null);
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100004,'Forever系列 [A10004]','白18K金,PT950','201409031259093e45b5ecf0.jpg,2014090312590972b221c6ce.jpg,201409031259102e5ca66d19.jpg,20140903125910f4a940ed90.jpg,20140903125910de7718dfc9.jpg',0,0,0,0,null);
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100005,'Forever系列 [A10005]','白18K金,PT950','201509301425347b86245a0e.jpg,20150930142537c2430d2f80.jpg,20150930142538cbe03e4608.jpg,20150930142541594d0d7e3e.jpg',0,0,0,0,null);

insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100006,'My Heart系列 [A10006]','白18K金,PT950','20150930190558ba3bac51e0.jpg,20150930190601de0e15d264.jpg,20150930190604273feb3e92.jpg,201509301906066302f15358.jpg',0,0,0,0,null);
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100007,'My Heart系列 [A10007]','白18K金,PT950','201606201013425c46d90c91.jpg,2016062010134644945bb6a4.jpg,201606201013489a22139075.jpg,20160620101350d2f9fcb5a8.jpg',0,0,0,0,null);
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100008,'My Heart系列 [A10008]','白18K金,PT950','201601231721314e4e2d5d5d.jpg,2016012317213345bf69a992.jpg,201601231721355203b1d066.jpg,201601231721362bcba6bf5e.jpg',0,0,0,0,null);
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100009,'My Heart系列 [A10009]','白18K金,PT950','201601231615193fbf3ca618.jpg,20160123161521c5249d9085.jpg,2016012316152299fca37f50.jpg,201601231615244896b38364.jpg',0,0,0,0,null);
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100010,'True Love系列 [A10010]','白18K金,PT950','201409031759476e8527cccb.jpg,20140903175947fa15145af3.jpg,20140903175947f4e509cdf2.jpg,2014090317594712a1c2b69f.jpg',0,0,0,0,null);
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100011,'True Love系列 [A10011]','白18K金,PT950','2015081318151576e08c7f5c.jpg,2015081318151687dced56d3.jpg,20150813181517dcf56e30f8.jpg,2015081318151718866bd1aa.jpg',0,0,0,0,null);
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100012,'I Swear系列 [A10012]','白18K金,PT950','20150129114316f8a2465758.jpg,20150129114317216fa77d1b.jpg,2015012911431705ffde3940.jpg,20150129114316f8a2465758.jpg',0,0,0,0,null);
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100013,'Princess系列 [A10013]','白18K金,PT950','20160621100342c2eba8bc0a.jpg,20160621100346d2f90ae99a.jpg',0,0,0,0,null);
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100014,'Princess系列 [A10014]','白18K金,PT950','201509301425347b86245a0e.jpg,20150930142537c2430d2f80.jpg,20150930142538cbe03e4608.jpg,20150930142541594d0d7e3e.jpg',0,0,0,0,null);
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100015,'Believe系列 [A10015]','白18K金,PT950','20150203145404c670aa80de.jpg,201502031454050d165b3124.jpg,201502031454052a9d6800cb.jpg,2015020314541121dad61a1f.jpg',0,0,0,0,null);

--对戒
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100016,'Darry Ring系列 结婚对戒 [B10016]','白18K金,PT950','20160120151303e777e7da43.jpg,201601201513053d2879a2bd.jpg,20160120151307f1bceb4cc0.jpg,201601201513107c76f3685e.gif',0,0,0,0,null);
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100017,'Darry Ring系列 我们对戒 [B10017]','白18K金,PT950','201607110924061556eecc5f.jpg,201607110923578531d5eea0.jpg,20160711092409759d15f235.jpg,20160711092417635073cf53.jpg',0,0,0,0,null);
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100018,'Together系列 终于等到你 [B10018]','白18K金,PT950','201409022022063357eaab99.jpg,201409022022061f5f34a9c5.jpg,20140902202207b2bdfb35aa.jpg,20140902202207ec5666d8f5.jpg,2014090220220713dc351618.jpg,201409022022075e403a40cf.jpg',0,0,0,0,null);
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100019,'Together系列 爱有天意 [B10019]','白18K金,PT950','2015092814414763fad49f67.jpg,20150928144149d6651a9d62.jpg,20160824181416e5fa43da21.jpg,20160824182242b8481699f5.jpg',0,0,0,0,null);
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100020,'Together系列 海誓山盟 [B10020]','白18K金,PT950','20140903094517ac9ecbfd14.jpg,20140903094517531db57445.jpg,20140903094517086b6e3cbb.jpg,2016082418342965e341d069.jpg',0,0,0,0,null);

--吊坠
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100021,'True Love系列 经典套链 [C10021]','白18K金,PT950','20160415181923774ffd0893.jpg,201604151819276002163282.jpg,2016041518193120d470e409.jpg,2016041518193446ceaf4e83.jpg',0,0,0,0,null);
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100022,'Darry Ring系列 守护套链 [C10022]','白18K金,PT950','20151113182740f23f290109.jpg,20151113182742070424c756.jpg,20151113182744ee735e0fc7.jpg,20151113182746756aa852ed.jpg,20151113182747d97667f2c1.jpg',0,0,0,0,null);
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100023,'Darry Ring系列 心心相印套链 [C10023]','白18K金,PT950','2015051117512441c4163553.jpg,20150511175125a6899f3841.jpg,20150511175125bb6126b519.jpg,2015051117512729a134e142.jpg',0,0,0,0,null);
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100024,'Lucky Love系列 四叶草幸运套链 [C10024]','白18K金,PT950','ZHDARRYJEWELRYD15007_1.jpg,ZHDARRYJEWELRYD15007_2.jpg',0,0,0,0,null);

--耳饰
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100025,'MY Heart系列 简爱耳钉 [D10025]','白18K金,PT950','201408281358092fd9e3d55e.jpg,2014082813581080ea1317a4.jpg,201408281358108bd69d40be.jpg,20140828135810b1a59d92b0.jpg',0,0,0,0,null);
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100026,'My Love系列 典雅耳钉 [D10026]','白18K金,PT950','201508051415595b2e296170.jpg,2015080514160055ff95d769.jpg',0,0,0,0,null);
insert into goods(goodid,gname,gmaterial,gimage,averagescore,goodnum,usercount,comcount,gother)
values(100027,'Forever系列 经典款耳钉 [D10027]','白18K金,PT950','201408281420281714d29b7f.jpg,2014082814202901a716bf7e.jpg,2014082814203071a0d2f4c6.jpg',0,0,0,0,null);

--商品100001的参数
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分H',7,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分H',8,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分H',9,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分H',10,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分H',11,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分H',12,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分H',13,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分H',14,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分H',15,'VS2','EX',12,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分H',7,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分H',8,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分H',9,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分H',10,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分H',11,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分H',12,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分H',13,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分H',14,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分H',15,'VS2','EX',14,20);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分H',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分H',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分H',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分H',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分H',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分H',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分H',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分H',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分H',15,'VS1','VG',16,10);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分J',7,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分J',8,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分J',9,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分J',10,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分J',11,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分J',12,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分J',13,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分J',14,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分J',15,'VS2','EX',12,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分J',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分J',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分J',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分J',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分J',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分J',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分J',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分J',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分J',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分D',7,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分D',8,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分D',9,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分D',10,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分D',11,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分D',12,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分D',13,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分D',14,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'30分D',15,'VS2','EX',12,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分D',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分D',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分D',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分D',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分D',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分D',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分D',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分D',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'50分D',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分D',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分D',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分D',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分D',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分D',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分D',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分D',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分D',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100001,'99分D',15,'VS1','VG',16,10);

--商品100002
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分H',7,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分H',8,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分H',9,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分H',10,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分H',11,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分H',12,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分H',13,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分H',14,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分H',15,'VS2','EX',14,20);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分H',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分H',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分H',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分H',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分H',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分H',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分H',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分H',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分H',15,'VS1','VG',16,10);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'30分J',7,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'30分J',8,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'30分J',9,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'30分J',10,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'30分J',11,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'30分J',12,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'30分J',13,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'30分J',14,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'30分J',15,'VS2','EX',12,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分J',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分J',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分J',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分J',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分J',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分J',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分J',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分J',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分J',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'30分D',7,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'30分D',8,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'30分D',9,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'30分D',10,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'30分D',11,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'30分D',12,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'30分D',13,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'30分D',14,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'30分D',15,'VS2','EX',12,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分D',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分D',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分D',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分D',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分D',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分D',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分D',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分D',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'50分D',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分D',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分D',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分D',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分D',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分D',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分D',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分D',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分D',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100002,'99分D',15,'VS1','VG',16,10);

--商品100003
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分H',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分H',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分H',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分H',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分H',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分H',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分H',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分H',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分H',15,'VS1','VG',16,10);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'30分J',7,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'30分J',8,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'30分J',9,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'30分J',10,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'30分J',11,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'30分J',12,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'30分J',13,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'30分J',14,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'30分J',15,'VS2','EX',12,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'50分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'50分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'50分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'50分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'50分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'50分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'50分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'50分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'50分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分J',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分J',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分J',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分J',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分J',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分J',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分J',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分J',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分J',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'30分D',7,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'30分D',8,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'30分D',9,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'30分D',10,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'30分D',11,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'30分D',12,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'30分D',13,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'30分D',14,'VS2','EX',12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'30分D',15,'VS2','EX',12,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'50分D',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'50分D',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'50分D',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'50分D',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'50分D',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'50分D',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'50分D',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'50分D',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'50分D',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分D',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分D',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分D',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分D',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分D',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分D',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分D',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分D',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100003,'99分D',15,'VS1','VG',16,10);


--商品100004参数
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分H',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分H',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分H',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分H',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分H',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分H',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分H',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分H',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分H',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分H',7,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分H',8,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分H',9,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分H',10,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分H',11,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分H',12,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分H',13,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分H',14,'VS2','EX',14,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分H',15,'VS2','EX',14,20);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分H',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分H',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分H',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分H',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分H',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分H',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分H',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分H',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分H',15,'VS1','VG',16,10);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分J',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分J',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分J',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分J',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分J',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分J',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分J',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分J',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分J',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分D',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分D',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分D',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分D',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分D',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分D',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分D',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分D',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'30分D',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分D',7,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分D',8,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分D',9,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分D',10,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分D',11,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分D',12,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分D',13,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分D',14,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'50分D',15,'VS2','EX',15,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分D',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分D',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分D',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分D',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分D',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分D',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分D',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分D',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100004,'99分D',15,'VS1','VG',16,10);

--商品100005
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分H',7,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分H',8,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分H',9,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分H',10,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分H',11,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分H',12,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分H',13,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分H',14,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分H',15,'VS2','EX',10,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分H',7,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分H',8,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分H',9,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分H',10,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分H',11,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分H',12,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分H',13,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分H',14,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分H',15,'VS2','EX',11,20);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分H',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分H',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分H',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分H',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分H',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分H',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分H',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分H',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分H',15,'VS1','VG',16,10);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分J',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分J',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分J',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分J',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分J',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分J',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分J',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分J',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分J',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分D',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分D',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分D',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分D',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分D',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分D',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分D',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分D',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'30分D',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分D',7,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分D',8,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分D',9,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分D',10,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分D',11,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分D',12,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分D',13,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分D',14,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'50分D',15,'VS2','EX',15,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分D',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分D',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分D',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分D',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分D',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分D',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分D',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分D',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100005,'99分D',15,'VS1','VG',16,10);

--商品100006
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分H',7,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分H',8,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分H',9,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分H',10,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分H',11,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分H',12,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分H',13,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分H',14,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分H',15,'VS2','EX',10,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分H',7,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分H',8,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分H',9,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分H',10,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分H',11,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分H',12,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分H',13,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分H',14,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分H',15,'VS2','EX',11,20);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分H',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分H',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分H',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分H',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分H',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分H',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分H',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分H',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分H',15,'VS1','VG',16,10);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分J',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分J',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分J',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分J',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分J',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分J',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分J',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分J',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分J',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分D',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分D',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分D',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分D',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分D',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分D',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分D',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分D',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'30分D',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分D',7,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分D',8,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分D',9,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分D',10,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分D',11,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分D',12,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分D',13,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分D',14,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'50分D',15,'VS2','EX',15,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分D',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分D',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分D',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分D',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分D',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分D',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分D',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分D',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'99分D',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'200分D',7,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'200分D',8,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'200分D',9,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'200分D',10,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'200分D',11,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'200分D',12,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'200分D',13,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'200分D',14,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100006,'200分D',15,'VS1','VG',20,10);

--商品100007参数
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'30分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'30分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'30分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'30分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'30分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'30分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'30分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'30分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'30分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'50分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'50分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'50分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'50分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'50分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'50分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'50分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'50分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'50分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'99分J',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'99分J',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'99分J',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'99分J',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'99分J',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'99分J',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'99分J',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'99分J',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'99分J',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'30分D',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'30分D',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'30分D',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'30分D',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'30分D',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'30分D',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'30分D',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'30分D',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'30分D',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'50分D',7,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'50分D',8,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'50分D',9,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'50分D',10,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'50分D',11,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'50分D',12,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'50分D',13,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'50分D',14,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'50分D',15,'VS2','EX',15,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'99分D',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'99分D',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'99分D',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'99分D',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'99分D',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'99分D',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'99分D',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'99分D',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'99分D',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'200分D',7,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'200分D',8,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'200分D',9,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'200分D',10,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'200分D',11,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'200分D',12,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'200分D',13,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'200分D',14,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100007,'200分D',15,'VS1','VG',20,10);

--商品100008参数
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分H',7,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分H',8,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分H',9,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分H',10,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分H',11,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分H',12,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分H',13,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分H',14,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分H',15,'VS2','EX',10,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分H',7,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分H',8,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分H',9,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分H',10,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分H',11,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分H',12,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分H',13,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分H',14,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分H',15,'VS2','EX',11,20);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分H',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分H',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分H',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分H',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分H',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分H',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分H',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分H',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分H',15,'VS1','VG',16,10);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分J',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分J',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分J',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分J',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分J',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分J',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分J',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分J',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分J',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分D',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分D',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分D',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分D',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分D',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分D',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分D',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分D',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'30分D',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分D',7,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分D',8,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分D',9,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分D',10,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分D',11,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分D',12,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分D',13,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分D',14,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'50分D',15,'VS2','EX',15,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分D',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分D',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分D',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分D',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分D',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分D',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分D',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分D',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'99分D',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'200分D',7,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'200分D',8,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'200分D',9,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'200分D',10,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'200分D',11,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'200分D',12,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'200分D',13,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'200分D',14,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100008,'200分D',15,'VS1','VG',20,10);

--商品100009参数
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分H',7,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分H',8,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分H',9,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分H',10,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分H',11,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分H',12,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分H',13,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分H',14,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分H',15,'VS2','EX',10,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分H',7,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分H',8,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分H',9,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分H',10,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分H',11,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分H',12,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分H',13,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分H',14,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分H',15,'VS2','EX',11,20);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分H',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分H',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分H',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分H',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分H',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分H',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分H',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分H',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分H',15,'VS1','VG',16,10);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分J',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分J',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分J',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分J',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分J',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分J',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分J',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分J',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分J',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分D',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分D',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分D',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分D',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分D',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分D',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分D',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分D',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'30分D',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分D',7,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分D',8,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分D',9,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分D',10,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分D',11,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分D',12,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分D',13,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分D',14,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'50分D',15,'VS2','EX',15,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分D',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分D',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分D',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分D',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分D',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分D',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分D',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分D',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'99分D',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'200分D',7,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'200分D',8,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'200分D',9,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'200分D',10,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'200分D',11,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'200分D',12,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'200分D',13,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'200分D',14,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100009,'200分D',15,'VS1','VG',20,10);

--商品100010参数
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分H',7,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分H',8,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分H',9,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分H',10,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分H',11,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分H',12,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分H',13,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分H',14,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分H',15,'VS2','EX',10,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分H',7,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分H',8,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分H',9,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分H',10,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分H',11,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分H',12,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分H',13,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分H',14,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分H',15,'VS2','EX',11,20);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分H',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分H',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分H',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分H',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分H',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分H',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分H',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分H',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分H',15,'VS1','VG',16,10);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分J',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分J',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分J',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分J',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分J',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分J',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分J',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分J',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分J',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分D',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分D',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分D',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分D',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分D',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分D',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分D',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分D',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'30分D',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分D',7,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分D',8,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分D',9,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分D',10,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分D',11,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分D',12,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分D',13,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分D',14,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'50分D',15,'VS2','EX',15,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分D',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分D',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分D',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分D',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分D',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分D',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分D',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分D',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'99分D',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'200分D',7,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'200分D',8,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'200分D',9,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'200分D',10,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'200分D',11,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'200分D',12,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'200分D',13,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'200分D',14,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'200分D',15,'VS1','VG',20,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'100分I',7,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'100分I',8,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'100分I',9,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'100分I',10,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'100分I',11,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'100分I',12,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'100分I',13,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'100分I',14,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100010,'100分I',15,'VS1','VG',18,10);

--商品100011参数
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分H',7,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分H',8,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分H',9,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分H',10,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分H',11,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分H',12,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分H',13,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分H',14,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分H',15,'VS2','EX',10,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分H',7,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分H',8,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分H',9,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分H',10,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分H',11,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分H',12,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分H',13,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分H',14,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分H',15,'VS2','EX',11,20);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分H',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分H',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分H',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分H',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分H',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分H',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分H',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分H',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分H',15,'VS1','VG',16,10);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分J',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分J',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分J',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分J',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分J',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分J',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分J',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分J',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分J',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分D',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分D',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分D',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分D',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分D',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分D',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分D',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分D',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'30分D',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分D',7,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分D',8,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分D',9,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分D',10,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分D',11,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分D',12,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分D',13,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分D',14,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'50分D',15,'VS2','EX',15,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分D',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分D',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分D',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分D',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分D',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分D',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分D',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分D',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100011,'99分D',15,'VS1','VG',16,10);

--商品100012参数

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分H',7,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分H',8,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分H',9,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分H',10,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分H',11,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分H',12,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分H',13,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分H',14,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分H',15,'VS2','EX',10,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分H',7,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分H',8,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分H',9,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分H',10,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分H',11,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分H',12,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分H',13,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分H',14,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分H',15,'VS2','EX',11,20);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分H',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分H',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分H',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分H',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分H',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分H',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分H',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分H',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分H',15,'VS1','VG',16,10);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分J',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分J',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分J',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分J',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分J',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分J',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分J',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分J',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分J',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分D',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分D',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分D',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分D',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分D',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分D',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分D',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分D',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'30分D',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分D',7,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分D',8,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分D',9,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分D',10,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分D',11,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分D',12,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分D',13,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分D',14,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'50分D',15,'VS2','EX',15,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分D',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分D',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分D',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分D',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分D',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分D',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分D',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分D',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'99分D',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'200分D',7,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'200分D',8,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'200分D',9,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'200分D',10,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'200分D',11,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'200分D',12,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'200分D',13,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'200分D',14,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'200分D',15,'VS1','VG',20,10);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'40分I',7,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'40分I',8,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'40分I',9,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'40分I',10,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'40分I',11,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'40分I',12,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'40分I',13,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'40分I',14,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'40分I',15,'VS2','EX',15,10);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'100分I',7,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'100分I',8,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'100分I',9,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'100分I',10,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'100分I',11,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'100分I',12,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'100分I',13,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'100分I',14,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100012,'100分I',15,'VS1','VG',18,10);

--商品100013
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'50分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'50分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'50分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'50分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'50分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'50分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'50分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'50分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'50分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'99分J',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'99分J',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'99分J',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'99分J',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'99分J',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'99分J',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'99分J',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'99分J',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'99分J',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'30分D',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'30分D',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'30分D',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'30分D',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'30分D',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'30分D',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'30分D',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'30分D',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'30分D',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'50分D',7,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'50分D',8,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'50分D',9,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'50分D',10,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'50分D',11,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'50分D',12,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'50分D',13,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'50分D',14,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'50分D',15,'VS2','EX',15,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'99分D',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'99分D',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'99分D',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'99分D',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'99分D',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'99分D',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'99分D',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'99分D',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'99分D',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'200分D',7,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'200分D',8,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'200分D',9,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'200分D',10,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'200分D',11,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'200分D',12,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'200分D',13,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'200分D',14,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'200分D',15,'VS1','VG',20,10);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'40分I',7,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'40分I',8,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'40分I',9,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'40分I',10,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'40分I',11,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'40分I',12,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'40分I',13,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'40分I',14,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'40分I',15,'VS2','EX',15,10);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'100分I',7,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'100分I',8,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'100分I',9,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'100分I',10,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'100分I',11,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'100分I',12,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'100分I',13,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'100分I',14,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100013,'100分I',15,'VS1','VG',18,10);

--商品100014
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分H',7,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分H',8,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分H',9,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分H',10,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分H',11,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分H',12,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分H',13,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分H',14,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分H',15,'VS2','EX',11,20);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分H',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分H',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分H',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分H',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分H',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分H',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分H',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分H',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分H',15,'VS1','VG',16,10);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'30分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'30分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'30分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'30分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'30分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'30分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'30分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'30分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'30分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分J',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分J',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分J',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分J',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分J',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分J',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分J',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分J',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分J',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'30分D',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'30分D',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'30分D',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'30分D',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'30分D',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'30分D',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'30分D',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'30分D',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'30分D',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分D',7,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分D',8,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分D',9,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分D',10,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分D',11,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分D',12,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分D',13,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分D',14,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'50分D',15,'VS2','EX',15,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分D',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分D',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分D',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分D',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分D',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分D',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分D',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分D',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'99分D',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'200分D',7,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'200分D',8,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'200分D',9,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'200分D',10,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'200分D',11,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'200分D',12,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'200分D',13,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'200分D',14,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'200分D',15,'VS1','VG',20,10);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'40分I',7,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'40分I',8,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'40分I',9,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'40分I',10,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'40分I',11,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'40分I',12,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'40分I',13,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'40分I',14,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'40分I',15,'VS2','EX',15,10);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'100分I',7,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'100分I',8,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'100分I',9,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'100分I',10,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'100分I',11,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'100分I',12,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'100分I',13,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'100分I',14,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100014,'100分I',15,'VS1','VG',18,10);

--商品100015参数
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分H',7,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分H',8,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分H',9,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分H',10,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分H',11,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分H',12,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分H',13,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分H',14,'VS2','EX',10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分H',15,'VS2','EX',10,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分H',7,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分H',8,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分H',9,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分H',10,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分H',11,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分H',12,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分H',13,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分H',14,'VS2','EX',11,20);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分H',15,'VS2','EX',11,20);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分H',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分H',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分H',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分H',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分H',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分H',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分H',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分H',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分H',15,'VS1','VG',16,10);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分J',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分J',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分J',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分J',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分J',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分J',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分J',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分J',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分J',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分J',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分J',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分J',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分J',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分J',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分J',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分J',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分J',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分J',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分D',7,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分D',8,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分D',9,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分D',10,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分D',11,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分D',12,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分D',13,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分D',14,'VS2','EX',14,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'30分D',15,'VS2','EX',14,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分D',7,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分D',8,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分D',9,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分D',10,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分D',11,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分D',12,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分D',13,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分D',14,'VS2','EX',15,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'50分D',15,'VS2','EX',15,30);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分D',7,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分D',8,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分D',9,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分D',10,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分D',11,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分D',12,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分D',13,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分D',14,'VS1','VG',16,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'99分D',15,'VS1','VG',16,10);

insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'200分D',7,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'200分D',8,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'200分D',9,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'200分D',10,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'200分D',11,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'200分D',12,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'200分D',13,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'200分D',14,'VS1','VG',20,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'200分D',15,'VS1','VG',20,10);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'40分I',7,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'40分I',8,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'40分I',9,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'40分I',10,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'40分I',11,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'40分I',12,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'40分I',13,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'40分I',14,'VS2','EX',15,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'40分I',15,'VS2','EX',15,10);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'100分I',7,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'100分I',8,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'100分I',9,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'100分I',10,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'100分I',11,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'100分I',12,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'100分I',13,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'100分I',14,'VS1','VG',18,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'100分I',15,'VS1','VG',18,10);


insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'500分F',7,'VS1','VG',25,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'500分F',8,'VS1','VG',25,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'500分F',9,'VS1','VG',25,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'500分F',10,'VS1','VG',25,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'500分F',11,'VS1','VG',25,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'500分F',12,'VS1','VG',25,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'500分F',13,'VS1','VG',25,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'500分F',14,'VS1','VG',25,10);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100015,'500分F',15,'VS1','VG',25,10);

--对戒100016参数
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100016,'男 0.5,女 0,3',7,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100016,'男 0.5,女 0,3',8,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100016,'男 0.5,女 0,3',9,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100016,'男 0.5,女 0,3',10,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100016,'男 0.5,女 0,3',11,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100016,'男 0.5,女 0,3',12,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100016,'男 0.5,女 0,3',13,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100016,'男 0.5,女 0,3',14,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100016,'男 0.5,女 0,3',15,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100016,'男 0.5,女 0,3',16,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100016,'男 0.5,女 0,3',17,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100016,'男 0.5,女 0,3',18,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100016,'男 0.5,女 0,3',19,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100016,'男 0.5,女 0,3',20,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100016,'男 0.5,女 0,3',21,null,null,10,30);

--对戒100017参数
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100017,'男 0.05,女 0,03',7,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100017,'男 0.05,女 0,03',8,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100017,'男 0.05,女 0,03',9,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100017,'男 0.05,女 0,03',10,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100017,'男 0.05,女 0,03',11,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100017,'男 0.05,女 0,03',12,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100017,'男 0.05,女 0,03',13,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100017,'男 0.05,女 0,03',14,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100017,'男 0.05,女 0,03',15,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100017,'男 0.05,女 0,03',16,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100017,'男 0.05,女 0,03',17,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100017,'男 0.05,女 0,3',18,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100017,'男 0.05,女 0,03',19,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100017,'男 0.05,女 0,3',20,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100017,'男 0.05,女 0,03',21,null,null,10,30);

--对戒100018参数
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100018,'男 0.1,女 0,3',7,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100018,'男 0.1,女 0,3',8,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100018,'男 0.1,女 0,3',9,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100018,'男 0.1,女 0,3',10,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100018,'男 0.1,女 0,3',11,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100018,'男 0.1,女 0,3',12,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100018,'男 0.1,女 0,3',13,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100018,'男 0.1,女 0,3',14,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100018,'男 0.1,女 0,3',15,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100018,'男 0.1,女 0,3',16,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100018,'男 0.1,女 0,3',17,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100018,'男 0.05,女 0,3',18,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100018,'男 0.1,女 0,3',19,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100018,'男 0.05,女 0,3',20,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100018,'男 0.1,女 0,3',21,null,null,12,30);

--对戒100019参数
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100019,'男 0.2,女 0,2',7,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100019,'男 0.2,女 0,2',8,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100019,'男 0.2,女 0,2',9,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100019,'男 0.2,女 0,2',10,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100019,'男 0.2,女 0,2',11,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100019,'男 0.2,女 0,2',12,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100019,'男 0.2,女 0,2',13,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100019,'男 0.2,女 0,2',14,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100019,'男 0.2,女 0,2',15,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100019,'男 0.2,女 0,2',16,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100019,'男 0.2,女 0,2',17,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100019,'男 0.2,女 0,2',18,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100019,'男 0.2,女 0,2',19,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100019,'男 0.2,女 0,2',20,null,null,11,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100019,'男 0.2,女 0,2',21,null,null,12,30);

--对戒100020参数
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100020,'男 0.2,女 0,2',7,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100020,'男 0.2,女 0,2',8,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100020,'男 0.2,女 0,2',9,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100020,'男 0.2,女 0,2',10,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100020,'男 0.2,女 0,2',11,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100020,'男 0.2,女 0,2',12,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100020,'男 0.2,女 0,2',13,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100020,'男 0.2,女 0,2',14,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100020,'男 0.2,女 0,2',15,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100020,'男 0.2,女 0,2',16,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100020,'男 0.2,女 0,2',17,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100020,'男 0.2,女 0,2',18,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100020,'男 0.2,女 0,2',19,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100020,'男 0.2,女 0,2',20,null,null,11,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100020,'男 0.2,女 0,2',21,null,null,12,30);

--吊坠
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100021,'30分H 1',null,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100022,'30分H 1',null,null,null,12,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100023,'15分H 1',null,null,null,10,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100024,'50分J 1',null,null,null,20,30);

--耳饰
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100025,'6分D',null,'SI',null,8,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100026,'5分H',null,'SI',null,6,30);
insert into paramter(paramterid,goodid,pcarat,psize,gcrystal,gcutting,pprice,pcount) 
values(seq_paramter_id.nextval,100027,'4分J',null,'SI',null,4,30);



select g.*,c.collectionId,c.ctime,s.seriesname,sy.stylename  
from goods g,collection c,seriesstyle ss,series s,style sy 
where g.goodid=c.goodid and g.ssid=ss.ssid and ss.styleid=sy.styleid and ss.seriesid=s.seriesid;