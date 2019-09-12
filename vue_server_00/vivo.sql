SET NAMES UTF8;
DROP DATABASE IF EXISTS vivo;
CREATE DATABASE vivo CHARSET=UTF8;
USE vivo;
/*抢购数据表*/
CREATE TABLE snap_up(
  id INT PRIMARY KEY AUTO_INCREMENT,
  sname VARCHAR(32), #商品名称
   img VARCHAR(128),  #商品图片
   title VARCHAR(128), #商品标题
   pic DECIMAL(10,2) #商品价格
);
INSERT INTO snap_up VALUES
(NULL,'iQOO Pro 5G版 12GB+128GB 竞速黑','img/product/details_img/phone_lg/10001399_1566442828100_750x750.png','骁龙855 Plus，4500mAh超大电池，44W超快闪充，4800万超广角AI三摄（不支持5G网络）','3198'),
(NULL,'iQOO Pro 5G版 12GB+128GB 竞速黑','img/product/details_img/phone_lg/10001399_1566442828100_750x750.png','骁龙855 Plus，4500mAh超大电池，44W超快闪充，4800万超广角AI三摄（不支持5G网络）','3198'),
(NULL,'iQOO Pro 5G版 12GB+128GB 竞速黑','img/product/details_img/phone_lg/10001399_1566442828100_750x750.png','骁龙855 Plus，4500mAh超大电池，44W超快闪充，4800万超广角AI三摄（不支持5G网络）','3198'),
(NULL,'iQOO Pro 5G版 12GB+128GB 竞速黑','img/product/details_img/phone_lg/10001399_1566442828100_750x750.png','骁龙855 Plus，4500mAh超大电池，44W超快闪充，4800万超广角AI三摄（不支持5G网络）','3198'),
(NULL,'iQOO Pro 5G版 12GB+128GB 竞速黑','img/product/details_img/phone_lg/10001399_1566442828100_750x750.png','骁龙855 Plus，4500mAh超大电池，44W超快闪充，4800万超广角AI三摄（不支持5G网络）','3198'),
(NULL,'iQOO Pro 5G版 12GB+128GB 竞速黑','img/product/details_img/phone_lg/10001399_1566442828100_750x750.png','骁龙855 Plus，4500mAh超大电池，44W超快闪充，4800万超广角AI三摄（不支持5G网络）','3198'),
(NULL,'iQOO Pro 5G版 12GB+128GB 竞速黑','img/product/details_img/phone_lg/10001399_1566442828100_750x750.png','骁龙855 Plus，4500mAh超大电池，44W超快闪充，4800万超广角AI三摄（不支持5G网络）','3198'),
(NULL,'iQOO Pro 5G版 12GB+128GB 竞速黑','img/product/details_img/phone_lg/10001399_1566442828100_750x750.png','骁龙855 Plus，4500mAh超大电池，44W超快闪充，4800万超广角AI三摄（不支持5G网络）','3198'),
(NULL,'iQOO Pro 5G版 12GB+128GB 竞速黑','img/product/details_img/phone_lg/10001399_1566442828100_750x750.png','骁龙855 Plus，4500mAh超大电池，44W超快闪充，4800万超广角AI三摄（不支持5G网络）','3198'),
(NULL,'iQOO Pro 5G版 12GB+128GB 竞速黑','img/product/details_img/phone_lg/10001399_1566442828100_750x750.png','骁龙855 Plus，4500mAh超大电池，44W超快闪充，4800万超广角AI三摄（不支持5G网络）','3198'),
(NULL,'iQOO Pro 5G版 12GB+128GB 竞速黑','img/product/details_img/phone_lg/10001399_1566442828100_750x750.png','骁龙855 Plus，4500mAh超大电池，44W超快闪充，4800万超广角AI三摄（不支持5G网络）','3198');

/*手机型号家族*/
CREATE TABLE vivo_laptop_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32),
  fimg VARCHAR(128),          #展示小图片
  sm VARCHAR(128),             #商品小图片
  md VARCHAR(128),               #商品中图
  lg VARCHAR(128)                 #商品大图 
);

/**手机型号家族**/
INSERT INTO vivo_laptop_family VALUES
(NULL,'iQOO','img/product/iQOO系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442828607_250x250.png','img/product/details_img/phone_lg/10001399_1566442828607_750x750.png'),
(NULL,'iQOO','img/product/iQOO系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442825375_250x250.png','img/product/details_img/phone_lg/10001399_1566442825375_750x750.png'),
(NULL,'iQOO','img/product/iQOO系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442827640_250x250.png','img/product/details_img/phone_lg/10001399_1566442827640_750x750.png'),
(NULL,'iQOO','img/product/iQOO系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442828100_250x250.png','img/product/details_img/phone_lg/10001399_1566442828100_750x750.png'),
(NULL,'NEX','img/product/NEX系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442828607_250x250.png','img/product/details_img/phone_lg/10001399_1566442828607_750x750.png'),
(NULL,'X','img/product/S系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442828607_250x250.png','img/product/details_img/phone_lg/10001399_1566442828607_750x750.png'),
(NULL,'X','img/product/S系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442825375_250x250.png','img/product/details_img/phone_lg/10001399_1566442825375_750x750.png'),
(NULL,'X','img/product/S系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442827640_250x250.png','img/product/details_img/phone_lg/10001399_1566442827640_750x750.png'),
(NULL,'X','img/product/S系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442828100_250x250.png','img/product/details_img/phone_lg/10001399_1566442828100_750x750.png'),
(NULL,'S','img/product/U系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442828607_250x250.png','img/product/details_img/phone_lg/10001399_1566442828607_750x750.png'),
(NULL,'S','img/product/U系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442825375_250x250.png','img/product/details_img/phone_lg/10001399_1566442825375_750x750.png'),
(NULL,'S','img/product/U系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442827640_250x250.png','img/product/details_img/phone_lg/10001399_1566442827640_750x750.png'),
(NULL,'S','img/product/U系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442828100_250x250.png','img/product/details_img/phone_lg/10001399_1566442828100_750x750.png'),
(NULL,'Z','img/product/X系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442828607_250x250.png','img/product/details_img/phone_lg/10001399_1566442828607_750x750.png'),
(NULL,'Z','img/product/X系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442825375_250x250.png','img/product/details_img/phone_lg/10001399_1566442825375_750x750.png'),
(NULL,'Z','img/product/X系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442827640_250x250.png','img/product/details_img/phone_lg/10001399_1566442827640_750x750.png'),
(NULL,'Z','img/product/X系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442828100_250x250.png','img/product/details_img/phone_lg/10001399_1566442828100_750x750.png'),
(NULL,'Y','img/product/Y系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442828607_250x250.png','img/product/details_img/phone_lg/10001399_1566442828607_750x750.png'),
(NULL,'Y','img/product/Y系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442825375_250x250.png','img/product/details_img/phone_lg/10001399_1566442825375_750x750.png'),
(NULL,'Y','img/product/Y系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442827640_250x250.png','img/product/details_img/phone_lg/10001399_1566442827640_750x750.png'),
(NULL,'Y','img/product/Y系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442828100_250x250.png','img/product/details_img/phone_lg/10001399_1566442828100_750x750.png'),
(NULL,'U','img/product/Z系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442828607_250x250.png','img/product/details_img/phone_lg/10001399_1566442828607_750x750.png'),
(NULL,'U','img/product/Z系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442825375_250x250.png','img/product/details_img/phone_lg/10001399_1566442825375_750x750.png'),
(NULL,'U','img/product/Z系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442827640_250x250.png','img/product/details_img/phone_lg/10001399_1566442827640_750x750.png'),
(NULL,'U','img/product/Z系列.jpg','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png','img/product/details_img/phone_md/10001399_1566442828100_250x250.png','img/product/details_img/phone_lg/10001399_1566442828100_750x750.png');

/*手机详情*/
CREATE TABLE vivo_laptop(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,              #所属型号家族编号
  title VARCHAR(128),         #主标题
  subtitle VARCHAR(128),      #副标题
  price DECIMAL(10,2),        #价格
  promise VARCHAR(64),        #服务承诺
  spec VARCHAR(64),           #规格/颜色
  lname VARCHAR(32),          #商品名称
  os VARCHAR(32),             #操作系统
  memory VARCHAR(32),         #内存容量
  resolution VARCHAR(32),     #分辨率
  cpu VARCHAR(32),            #处理器
  category VARCHAR(32),       #所属分类
  disk VARCHAR(32),           #手机容量及类型
  details VARCHAR(1024),      #产品详细说明
  shelf_time BIGINT,          #上架时间
  is_onsale BOOLEAN           #是否促销中
);

/*商品图片*/
CREATE TABLE product_img(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  class_id INT,     #分类id
  sm VARCHAR(128)    #商品小图片
  -- md VARCHAR(128),     #商品中图
  -- lg VARCHAR(128)     #商品大图
);

/*插入图片数据*/
INSERT INTO product_img VALUES
(NULL,1,'img/product/details_img/charge/111_1534839266764_250x250.png'),
(NULL,1,'img/product/details_img/charge/1883_1447903056851_250x250.png'),
(NULL,1,'img/product/details_img/charge/9988_1534842258247_250x250.png'),
(NULL,1,'img/product/details_img/charge/9989_1534842693670_250x250.png'),
(NULL,1,'img/product/details_img/charge/10424_1534841769313_250x250.png'),
(NULL,1,'img/product/details_img/charge/10425_1534842381523_250x250.png'),
(NULL,1,'img/product/details_img/charge/10000614_1553586771780_250x250.jpg'),
(NULL,1,'img/product/details_img/charge/10001130_1560166546355_250x250.jpg'),
(NULL,1,'img/product/details_img/charge/10001303_1563247175845_250x250.jpg'),

(NULL,2,'img/product/details_img/music/00_1538896707288_250x250.png'),
(NULL,2,'img/product/details_img/music/00_1540627445158_250x250.png'),
(NULL,2,'img/product/details_img/music/00_1541126606964_250x250.png'),
(NULL,2,'img/product/details_img/music/4068_1531902211892hd_250x250.png'),
(NULL,2,'img/product/details_img/music/4100_1531902437342hd_250x250.png'),
(NULL,2,'img/product/details_img/music/5071_1531902328482hd_250x250.png'),
(NULL,2,'img/product/details_img/music/5131_1531902752370hd_250x250.png'),
(NULL,2,'img/product/details_img/music/5139_1531902701330hd_250x250.png'),
(NULL,2,'img/product/details_img/music/10131_1559031022312_250x250.jpg'),
(NULL,2,'img/product/details_img/music/10000254_1560525168626_250x250.jpg'),
(NULL,2,'img/product/details_img/music/10000354_1548236713522_250x250.jpg'),
(NULL,2,'img/product/details_img/music/10000705_1564133902079_250x250.jpg'),
(NULL,2,'img/product/details_img/music/10000957_1557562171975_250x250.jpg'),
(NULL,2,'img/product/details_img/music/10001238_1560600306547_250x250.jpg'),

(NULL,3,'img/product/details_img/fittings/10325_1535510295231_250x250.png'),
(NULL,3,'img/product/details_img/fittings/10557_1543217205549_250x250.jpg'),
(NULL,3,'img/product/details_img/fittings/10638_1539570622845_250x250.png'),
(NULL,3,'img/product/details_img/fittings/10000167_1545050981298_250x250.jpg'),
(NULL,3,'img/product/details_img/fittings/10000486_1550835581628_250x250.jpg'),
(NULL,3,'img/product/details_img/fittings/10000755_1555657258293_250x250.jpg'),
(NULL,3,'img/product/details_img/fittings/10000756_1556008306939_250x250.jpg'),
(NULL,3,'img/product/details_img/fittings/10000887_1564971268846_250x250.jpg'),
(NULL,3,'img/product/details_img/fittings/10000888_1557224327287_250x250.jpg'),
(NULL,3,'img/product/details_img/fittings/10000889_1557224944613_250x250.jpg'),
(NULL,3,'img/product/details_img/fittings/10000996_1557836417933_250x250.jpg'),
(NULL,3,'img/product/details_img/fittings/10001307_1563447953439_250x250.jpg'),
(NULL,3,'img/product/details_img/fittings/10001448_1566910182816_250x250.jpg'),
(NULL,3,'img/product/details_img/fittings/10001449_1566909932544_250x250.jpg'),
(NULL,3,'img/product/details_img/fittings/10001462_1566910476021_250x250.jpg'),

(NULL,4,'img/product/details_img/AI/9990_1564993926093_250x250.jpg'),
(NULL,4,'img/product/details_img/AI/10000068_1543828629584_250x250.jpg'),
(NULL,4,'img/product/details_img/AI/10000227_1545999720881_250x250.jpg'),
(NULL,4,'img/product/details_img/AI/10000613_1553584833927_250x250.jpg'),
(NULL,4,'img/product/details_img/AI/10000735_1555494634524_250x250.jpg'),
(NULL,4,'img/product/details_img/AI/10000737_1555499131977_250x250.jpg'),
(NULL,4,'img/product/details_img/AI/10000739_1555502388656_250x250.jpg'),
(NULL,4,'img/product/details_img/AI/10001036_1558080531536_250x250.jpg'),
(NULL,4,'img/product/details_img/AI/10001037_1559720816389_250x250.jpg'),
(NULL,4,'img/product/details_img/AI/10001039_1558083766621_250x250.jpg'),
(NULL,4,'img/product/details_img/AI/10001056_1558098562843_250x250.jpg'),
(NULL,4,'img/product/details_img/AI/10001293_1562309887703_250x250.jpg'),
(NULL,4,'img/product/details_img/AI/10001293_1562309887703_250x250.jpg'),
(NULL,4,'img/product/details_img/AI/10001308_1563504627100_250x250.jpg'),

(NULL,5,'img/product/details_img/Photo/4484_1508913199043hd_250x250.png'),
(NULL,5,'img/product/details_img/Photo/5123_1530263062203hd_250x250.png'),
(NULL,5,'img/product/details_img/Photo/5124_1530264754347hd_250x250.png'),
(NULL,5,'img/product/details_img/Photo/5250_1534734746129hd_250x250.png'),
(NULL,5,'img/product/details_img/Photo/10741_1541657726660_250x250.png'),
(NULL,5,'img/product/details_img/Photo/10001158_1562643497442_250x250.jpg'),

(NULL,5,'img/product/details_img/life/10000072_1548298176802_250x250.jpg'),
(NULL,5,'img/product/details_img/life/10000228_1567672050332_250x250.jpg'),
(NULL,5,'img/product/details_img/life/10000229_1559044564474_250x250.jpg'),
(NULL,5,'img/product/details_img/life/10000331_1562844164784_250x250.jpg'),
(NULL,5,'img/product/details_img/life/10000371_1548322527043_250x250.jpg'),
(NULL,5,'img/product/details_img/life/10000375_1548387052693_250x250.jpg'),
(NULL,5,'img/product/details_img/life/10000376_1548661811859_250x250.png'),
(NULL,5,'img/product/details_img/life/10000483_1566964335650_250x250.jpg'),
(NULL,5,'img/product/details_img/life/10000553_1552531448630_250x250.jpg'),
(NULL,5,'img/product/details_img/life/10000680_1561103581872_250x250.jpg'),
(NULL,5,'img/product/details_img/life/10000704_1555142662456_250x250.jpg'),
(NULL,5,'img/product/details_img/life/10000790_1556179931365_250x250.jpg'),
(NULL,5,'img/product/details_img/life/10000819_1556537595122_250x250.jpg'),
(NULL,5,'img/product/details_img/life/10000876_1556625288227_250x250.jpg'),
(NULL,5,'img/product/details_img/life/10000882_1557056963342_250x250.jpg');


/*商城列表*/
CREATE TABLE product_details(
 lid INT PRIMARY KEY AUTO_INCREMENT,
 class_id INT,  #分类id
 title VARCHAR(128),         #主标题
  price DECIMAL(10,2),        #价格
  promise VARCHAR(64),        #服务承诺
  spec VARCHAR(64),           #规格/颜色
  lname VARCHAR(32),          #商品名称
  sm VARCHAR(128)            #商品小图片
  );

/*插入商品数据*/
INSERT INTO product_details VALUES
(NULL,1,'骁龙855 Plus，4500mAh超大电池，44W超快闪充，4800万超广角AI三摄（不支持5G网络）','3198','购买即送3198积分','5G全网通版 12GB+128GB 竞速黑','iQOO Pro 5G版 12GB+128GB 竞速黑','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png'),
(NULL,1,'骁龙855 Plus，4500mAh超大电池，44W超快闪充，4800万超广角AI三摄（不支持5G网络）','3198','购买即送3198积分','5G全网通版 12GB+128GB 竞速黑','iQOO Pro 5G版 12GB+128GB 竞速黑','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png'),
(NULL,1,'骁龙855 Plus，4500mAh超大电池，44W超快闪充，4800万超广角AI三摄（不支持5G网络）','3198','购买即送3198积分','5G全网通版 12GB+128GB 竞速黑','iQOO Pro 5G版 12GB+128GB 竞速黑','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png'),
(NULL,1,'骁龙855 Plus，4500mAh超大电池，44W超快闪充，4800万超广角AI三摄（不支持5G网络）','3198','购买即送3198积分','5G全网通版 12GB+128GB 竞速黑','iQOO Pro 5G版 12GB+128GB 竞速黑','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png'),
(NULL,1,'骁龙855 Plus，4500mAh超大电池，44W超快闪充，4800万超广角AI三摄（不支持5G网络）','3198','购买即送3198积分','5G全网通版 12GB+128GB 竞速黑','iQOO Pro 5G版 12GB+128GB 竞速黑','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png'),
(NULL,1,'骁龙855 Plus，4500mAh超大电池，44W超快闪充，4800万超广角AI三摄（不支持5G网络）','3198','购买即送3198积分','5G全网通版 12GB+128GB 竞速黑','iQOO Pro 5G版 12GB+128GB 竞速黑','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png'),
(NULL,1,'骁龙855 Plus，4500mAh超大电池，44W超快闪充，4800万超广角AI三摄（不支持5G网络）','3198','购买即送3198积分','5G全网通版 12GB+128GB 竞速黑','iQOO Pro 5G版 12GB+128GB 竞速黑','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png'),
(NULL,1,'骁龙855 Plus，4500mAh超大电池，44W超快闪充，4800万超广角AI三摄（不支持5G网络）','3198','购买即送3198积分','5G全网通版 12GB+128GB 竞速黑','iQOO Pro 5G版 12GB+128GB 竞速黑','img/product/details_img/phone_sm/10001479_1567765373256_250x250.png'),

(NULL,2,'官方原装正品，Z5标配数据线，支持22.5w双引擎闪充和vivo闪充及数据传输。购买时请注意，此数据线只适配Type-C接口。','24.5','购买即送25积分','灰色','vivo Type-C闪充数据线-2.25A（Z5标配）','img/product/details_img/charge/111_1534839266764_250x250.png'),
(NULL,2,'官方原装正品，支持18W双引擎闪充，Micro USB接口，兼容多种设备。（注：闪充功能需搭配9V/2A充电器使用，本商品不含充电器，充电器需另行购买）','19','购买即送19积分','灰白色','vivo Micro USB闪充数据线-2A','img/product/details_img/charge/1883_1447903056851_250x250.png'),
(NULL,2,'采用24AWG双铜镀锡线，降低阻率，提升充电效率，不伤手机；尼龙编织线身，耐磨抗压，铝合金外壳，延长使用寿命；经典红黑外观，精致漂亮','39','购买即送39积分','红黑','MGE Type-C金属编织数据线','img/product/details_img/charge/9988_1534842258247_250x250.png'),
(NULL,2,'44W超快闪充，六重保护系统（iQOO Pro、iQOO 8G/12G运存版本标配充电器，iQOO 6G运存版使用兼容，本商品不含数据线，数据线请另行购买）','119','购买即送119积分','白色','iQOO 44W（11V/4A）超快闪充充电器','img/product/details_img/charge/9989_1534842693670_250x250.png'),
(NULL,2,'官方原装正品，Z5标配数据线，支持22.5w双引擎闪充和vivo闪充及数据传输。购买时请注意，此数据线只适配Type-C接口。','24.5','购买即送25积分','灰色','vivo Type-C闪充数据线-2.25A（Z5标配）','img/product/details_img/charge/10424_1534841769313_250x250.png'),
(NULL,2,'官方原装正品，支持18W双引擎闪充，Micro USB接口，兼容多种设备。（注：闪充功能需搭配9V/2A充电器使用，本商品不含充电器，充电器需另行购买）','19','购买即送19积分','灰白色','vivo Micro USB闪充数据线-2A','img/product/details_img/charge/10425_1534842381523_250x250.png'),
(NULL,2,'采用24AWG双铜镀锡线，降低阻率，提升充电效率，不伤手机；尼龙编织线身，耐磨抗压，铝合金外壳，延长使用寿命；经典红黑外观，精致漂亮','39','购买即送39积分','红黑','MGE Type-C金属编织数据线','img/product/details_img/charge/10000614_1553586771780_250x250.jpg'),
(NULL,2,'44W超快闪充，六重保护系统（iQOO Pro、iQOO 8G/12G运存版本标配充电器，iQOO 6G运存版使用兼容，本商品不含数据线，数据线请另行购买）','119','购买即送119积分','白色','iQOO 44W（11V/4A）超快闪充充电器','img/product/details_img/charge/10001130_1560166546355_250x250.jpg'),
(NULL,2,'官方原装正品，Z5标配数据线，支持22.5w双引擎闪充和vivo闪充及数据传输。购买时请注意，此数据线只适配Type-C接口。','24.5','购买即送25积分','灰色','vivo Type-C闪充数据线-2.25A（Z5标配）','img/product/details_img/charge/10001303_1563247175845_250x250.jpg'),
(NULL,2,'官方原装正品，支持18W双引擎闪充，Micro USB接口，兼容多种设备。（注：闪充功能需搭配9V/2A充电器使用，本商品不含充电器，充电器需另行购买）','19','购买即送19积分','灰白色','vivo Micro USB闪充数据线-2A','img/product/details_img/charge/10001303_1563247175845_250x250.jpg'),
(NULL,2,'采用24AWG双铜镀锡线，降低阻率，提升充电效率，不伤手机；尼龙编织线身，耐磨抗压，铝合金外壳，延长使用寿命；经典红黑外观，精致漂亮','39','购买即送39积分','红黑','MGE Type-C金属编织数据线','img/product/details_img/charge/10001303_1563247175845_250x250.jpg'),
(NULL,2,'44W超快闪充，六重保护系统（iQOO Pro、iQOO 8G/12G运存版本标配充电器，iQOO 6G运存版使用兼容，本商品不含数据线，数据线请另行购买）','119','购买即送119积分','白色','iQOO 44W（11V/4A）超快闪充充电器','img/product/details_img/charge/10001303_1563247175845_250x250.jpg'),

(NULL,3,'Y系列机型标配耳机，适配全部vivo机型。由vivo自主设计，品牌原装，三频均衡，音域广阔！','19.5','购买即送20积分','灰白色色','vivo XE100原装耳机','img/product/details_img/music/00_1538896707288_250x250.png'),
(NULL,3,'数字降噪，全包耳设计，柔软舒适；封闭式腔体耳机，减少噪音影响；高保真音质，高度还原音乐本身；有线、无线两种模式，支持高清通话','399','购买即送400积分','黑色','西柚 蓝牙降噪耳机 X-PRO ANC','img/product/details_img/music/00_1540627445158_250x250.png'),
(NULL,3,'手机直插音响，即插即用；3.5mm接口，一秒即可链接；5倍音量放大，不损音质；精致小巧，携带方便','49','购买即送49积分','红色','蔚乐 棒棒糖音箱 红色','img/product/details_img/music/00_1541126606964_250x250.png'),
(NULL,3,'vivo原装Hi-Fi耳机，XE1000头戴式耳机，高保真音质，德产定制三明治振膜，多金属完美结合；数千人试戴，精巧设计，舒适佩戴体验。','1999','购买即送1999积分','白色','vivo XE1000头戴式耳机 白色
','img/product/details_img/music/4068_1531902211892hd_250x250.png'),
(NULL,3,'Y系列机型标配耳机，适配全部vivo机型。由vivo自主设计，品牌原装，三频均衡，音域广阔！','19.5','购买即送20积分','灰白色色','vivo XE100原装耳机','img/product/details_img/music/4100_1531902437342hd_250x250.png'),
(NULL,3,'数字降噪，全包耳设计，柔软舒适；封闭式腔体耳机，减少噪音影响；高保真音质，高度还原音乐本身；有线、无线两种模式，支持高清通话','399','购买即送400积分','黑色','西柚 蓝牙降噪耳机 X-PRO ANC','img/product/details_img/music/5071_1531902328482hd_250x250.png'),
(NULL,3,'手机直插音响，即插即用；3.5mm接口，一秒即可链接；5倍音量放大，不损音质；精致小巧，携带方便','49','购买即送49积分','红色','蔚乐 棒棒糖音箱 红色','img/product/details_img/music/5131_1531902752370hd_250x250.png'),
(NULL,3,'vivo原装Hi-Fi耳机，XE1000头戴式耳机，高保真音质，德产定制三明治振膜，多金属完美结合；数千人试戴，精巧设计，舒适佩戴体验。','1999','购买即送1999积分','白色','vivo XE1000头戴式耳机 白色
','img/product/details_img/music/5139_1531902701330hd_250x250.png'),
(NULL,3,'Y系列机型标配耳机，适配全部vivo机型。由vivo自主设计，品牌原装，三频均衡，音域广阔！','19.5','购买即送20积分','灰白色色','vivo XE100原装耳机','img/product/details_img/music/10131_1559031022312_250x250.jpg'),
(NULL,3,'数字降噪，全包耳设计，柔软舒适；封闭式腔体耳机，减少噪音影响；高保真音质，高度还原音乐本身；有线、无线两种模式，支持高清通话','399','购买即送400积分','黑色','西柚 蓝牙降噪耳机 X-PRO ANC','img/product/details_img/music/10000254_1560525168626_250x250.jpg'),
(NULL,3,'手机直插音响，即插即用；3.5mm接口，一秒即可链接；5倍音量放大，不损音质；精致小巧，携带方便','49','购买即送49积分','红色','蔚乐 棒棒糖音箱 红色','img/product/details_img/music/10000354_1548236713522_250x250.jpg'),
(NULL,3,'vivo原装Hi-Fi耳机，XE1000头戴式耳机，高保真音质，德产定制三明治振膜，多金属完美结合；数千人试戴，精巧设计，舒适佩戴体验。','1999','购买即送1999积分','白色','vivo XE1000头戴式耳机 白色
','img/product/details_img/music/10000705_1564133902079_250x250.jpg'),

(NULL,4,'【（9月9日-9月12日限时直降10元）两件包邮】 两片装，平面贴膜，材质坚韧，有效抵抗磨损，远离刮伤，贴心呵护你的爱机，适配NEX系列机型（注：不适用NEX双屏版，2.5D弧面位置不在贴膜覆盖范围）','19','购买即送20积分','透明','NEX原装高透保护膜','img/product/details_img/fittings/10325_1535510295231_250x250.png'),
(NULL,4,'两片装，平面贴膜，X21&X21i&X21UD原装高透保护膜 ，材质坚韧，远离刮伤，贴心呵护你的爱机（适配X21系列机型，注：2.5D弧面位置不在贴膜覆盖范围）','29','购买即送29积分','透明','X21原装高透保护膜','img/product/details_img/fittings/10557_1543217205549_250x250.jpg'),
(NULL,4,'【（9月9日-9月12日限时直降10元）两件包邮】 两片装，平面贴膜，材质坚韧，有效抵抗磨损，远离刮伤，贴心呵护你的爱机，适配NEX系列机型（注：不适用NEX双屏版，2.5D弧面位置不在贴膜覆盖范围）','19','购买即送20积分','透明','NEX原装高透保护膜','img/product/details_img/fittings/10638_1539570622845_250x250.png'),
(NULL,4,'两片装，平面贴膜，X21&X21i&X21UD原装高透保护膜 ，材质坚韧，远离刮伤，贴心呵护你的爱机（适配X21系列机型，注：2.5D弧面位置不在贴膜覆盖范围）','29','购买即送29积分','透明','X21原装高透保护膜','img/product/details_img/fittings/10000167_1545050981298_250x250.jpg'),
(NULL,4,'【（9月9日-9月12日限时直降10元）两件包邮】 两片装，平面贴膜，材质坚韧，有效抵抗磨损，远离刮伤，贴心呵护你的爱机，适配NEX系列机型（注：不适用NEX双屏版，2.5D弧面位置不在贴膜覆盖范围）','19','购买即送20积分','透明','NEX原装高透保护膜','img/product/details_img/fittings/10000486_1550835581628_250x250.jpg'),
(NULL,4,'两片装，平面贴膜，X21&X21i&X21UD原装高透保护膜 ，材质坚韧，远离刮伤，贴心呵护你的爱机（适配X21系列机型，注：2.5D弧面位置不在贴膜覆盖范围）','29','购买即送29积分','透明','X21原装高透保护膜','img/product/details_img/fittings/10000755_1555657258293_250x250.jpg'),
(NULL,4,'【（9月9日-9月12日限时直降10元）两件包邮】 两片装，平面贴膜，材质坚韧，有效抵抗磨损，远离刮伤，贴心呵护你的爱机，适配NEX系列机型（注：不适用NEX双屏版，2.5D弧面位置不在贴膜覆盖范围）','19','购买即送20积分','透明','NEX原装高透保护膜','img/product/details_img/fittings/10000756_1556008306939_250x250.jpg'),
(NULL,4,'两片装，平面贴膜，X21&X21i&X21UD原装高透保护膜 ，材质坚韧，远离刮伤，贴心呵护你的爱机（适配X21系列机型，注：2.5D弧面位置不在贴膜覆盖范围）','29','购买即送29积分','透明','X21原装高透保护膜','img/product/details_img/fittings/10000887_1564971268846_250x250.jpg'),
(NULL,4,'【（9月9日-9月12日限时直降10元）两件包邮】 两片装，平面贴膜，材质坚韧，有效抵抗磨损，远离刮伤，贴心呵护你的爱机，适配NEX系列机型（注：不适用NEX双屏版，2.5D弧面位置不在贴膜覆盖范围）','19','购买即送20积分','透明','NEX原装高透保护膜','img/product/details_img/fittings/10000888_1557224327287_250x250.jpg'),
(NULL,4,'两片装，平面贴膜，X21&X21i&X21UD原装高透保护膜 ，材质坚韧，远离刮伤，贴心呵护你的爱机（适配X21系列机型，注：2.5D弧面位置不在贴膜覆盖范围）','29','购买即送29积分','透明','X21原装高透保护膜','img/product/details_img/fittings/10000889_1557224944613_250x250.jpg'),
(NULL,4,'【（9月9日-9月12日限时直降10元）两件包邮】 两片装，平面贴膜，材质坚韧，有效抵抗磨损，远离刮伤，贴心呵护你的爱机，适配NEX系列机型（注：不适用NEX双屏版，2.5D弧面位置不在贴膜覆盖范围）','19','购买即送20积分','透明','NEX原装高透保护膜','img/product/details_img/fittings/10000996_1557836417933_250x250.jpg'),
(NULL,4,'两片装，平面贴膜，X21&X21i&X21UD原装高透保护膜 ，材质坚韧，远离刮伤，贴心呵护你的爱机（适配X21系列机型，注：2.5D弧面位置不在贴膜覆盖范围）','29','购买即送29积分','透明','X21原装高透保护膜','img/product/details_img/fittings/10001307_1563447953439_250x250.jpg'),

(NULL,5,'360°可活动秤脚，受力更均匀；离地高度仅4MM，测量更稳固；坚固抗震，更安全；保护核心部件，寿命更长。','129','购买即送129积分','白色','乐心S11体脂秤','img/product/details_img/AI/9990_1564993926093_250x250.jpg'),
(NULL,5,'26万色真彩大屏，0.96英寸触摸显示屏，支持支付宝支付；12分钟有氧跑，科学指导有氧训...','149','购买即送149积分','黑色','乐心手环Mambo5','img/product/details_img/AI/10000068_1543828629584_250x250.jpg'),
(NULL,5,'360°可活动秤脚，受力更均匀；离地高度仅4MM，测量更稳固；坚固抗震，更安全；保护核心部件，寿命更长。','129','购买即送129积分','白色','乐心S11体脂秤','img/product/details_img/AI/10000227_1545999720881_250x250.jpg'),
(NULL,5,'26万色真彩大屏，0.96英寸触摸显示屏，支持支付宝支付；12分钟有氧跑，科学指导有氧训...','149','购买即送149积分','黑色','乐心手环Mambo5','img/product/details_img/AI/10000613_1553584833927_250x250.jpg'),
(NULL,5,'360°可活动秤脚，受力更均匀；离地高度仅4MM，测量更稳固；坚固抗震，更安全；保护核心部件，寿命更长。','129','购买即送129积分','白色','乐心S11体脂秤','img/product/details_img/AI/10000735_1555494634524_250x250.jpg'),
(NULL,5,'26万色真彩大屏，0.96英寸触摸显示屏，支持支付宝支付；12分钟有氧跑，科学指导有氧训...','149','购买即送149积分','黑色','乐心手环Mambo5','img/product/details_img/AI/10000737_1555499131977_250x250.jpg'),
(NULL,5,'360°可活动秤脚，受力更均匀；离地高度仅4MM，测量更稳固；坚固抗震，更安全；保护核心部件，寿命更长。','129','购买即送129积分','白色','乐心S11体脂秤','img/product/details_img/AI/10000739_1555502388656_250x250.jpg'),
(NULL,5,'26万色真彩大屏，0.96英寸触摸显示屏，支持支付宝支付；12分钟有氧跑，科学指导有氧训...','149','购买即送149积分','黑色','乐心手环Mambo5','img/product/details_img/AI/10001036_1558080531536_250x250.jpg'),
(NULL,5,'360°可活动秤脚，受力更均匀；离地高度仅4MM，测量更稳固；坚固抗震，更安全；保护核心部件，寿命更长。','129','购买即送129积分','白色','乐心S11体脂秤','img/product/details_img/AI/10001037_1559720816389_250x250.jpg'),
(NULL,5,'26万色真彩大屏，0.96英寸触摸显示屏，支持支付宝支付；12分钟有氧跑，科学指导有氧训...','149','购买即送149积分','黑色','乐心手环Mambo5','img/product/details_img/AI/10001039_1558083766621_250x250.jpg'),
(NULL,5,'360°可活动秤脚，受力更均匀；离地高度仅4MM，测量更稳固；坚固抗震，更安全；保护核心部件，寿命更长。','129','购买即送129积分','白色','乐心S11体脂秤','img/product/details_img/AI/10001056_1558098562843_250x250.jpg'),
(NULL,5,'26万色真彩大屏，0.96英寸触摸显示屏，支持支付宝支付；12分钟有氧跑，科学指导有氧训...','149','购买即送149积分','黑色','乐心手环Mambo5','img/product/details_img/AI/10001293_1562309887703_250x250.jpg'),

(NULL,6,'创新工业设计，自拍更加自由，横竖拍轻松切换，多种拍摄场景轻松驾驭，自拍与直播体验更佳；','599','购买即送599积分','灰色','飞宇 Vimble2手持稳定器 灰色','img/product/details_img/Photo/4484_1508913199043hd_250x250.png'),
(NULL,6,'3D立体均匀补光，能够有效降低噪点，黑暗环境，拍摄依旧清晰动人。','29','购买即送29积分','粉色','Jji 手机美颜补光灯 粉色','img/product/details_img/Photo/5123_1530263062203hd_250x250.png'),
(NULL,6,'创新工业设计，自拍更加自由，横竖拍轻松切换，多种拍摄场景轻松驾驭，自拍与直播体验更佳；','599','购买即送599积分','灰色','飞宇 Vimble2手持稳定器 灰色','img/product/details_img/Photo/5124_1530264754347hd_250x250.png'),
(NULL,6,'3D立体均匀补光，能够有效降低噪点，黑暗环境，拍摄依旧清晰动人。','29','购买即送29积分','粉色','Jji 手机美颜补光灯 粉色','img/product/details_img/Photo/5250_1534734746129hd_250x250.png'),
(NULL,6,'创新工业设计，自拍更加自由，横竖拍轻松切换，多种拍摄场景轻松驾驭，自拍与直播体验更佳；','599','购买即送599积分','灰色','飞宇 Vimble2手持稳定器 灰色','img/product/details_img/Photo/10741_1541657726660_250x250.png'),
(NULL,6,'3D立体均匀补光，能够有效降低噪点，黑暗环境，拍摄依旧清晰动人。','29','购买即送29积分','粉色','Jji 手机美颜补光灯 粉色','img/product/details_img/Photo/10001158_1562643497442_250x250.jpg'),
(NULL,6,'创新工业设计，自拍更加自由，横竖拍轻松切换，多种拍摄场景轻松驾驭，自拍与直播体验更佳；','599','购买即送599积分','灰色','飞宇 Vimble2手持稳定器 灰色','img/product/details_img/life/10000072_1548298176802_250x250.jpg'),
(NULL,6,'3D立体均匀补光，能够有效降低噪点，黑暗环境，拍摄依旧清晰动人。','29','购买即送29积分','粉色','Jji 手机美颜补光灯 粉色','img/product/details_img/life/10000228_1567672050332_250x250.jpg'),
(NULL,6,'创新工业设计，自拍更加自由，横竖拍轻松切换，多种拍摄场景轻松驾驭，自拍与直播体验更佳；','599','购买即送599积分','灰色','飞宇 Vimble2手持稳定器 灰色','img/product/details_img/life/10000229_1559044564474_250x250.jpg'),
(NULL,6,'3D立体均匀补光，能够有效降低噪点，黑暗环境，拍摄依旧清晰动人。','29','购买即送29积分','粉色','Jji 手机美颜补光灯 粉色','img/product/details_img/life/10000331_1562844164784_250x250.jpg'),
(NULL,6,'创新工业设计，自拍更加自由，横竖拍轻松切换，多种拍摄场景轻松驾驭，自拍与直播体验更佳；','599','购买即送599积分','灰色','飞宇 Vimble2手持稳定器 灰色','img/product/details_img/life/10000371_1548322527043_250x250.jpg'),
(NULL,6,'3D立体均匀补光，能够有效降低噪点，黑暗环境，拍摄依旧清晰动人。','29','购买即送29积分','粉色','Jji 手机美颜补光灯 粉色','img/product/details_img/life/10000375_1548387052693_250x250.jpg'),

(NULL,7,'双效舒缓颈部不适，随时呵护你的脖子；新颖时尚外观，适配各种生活场景；小巧轻便的造型，佩戴轻盈；贴合颈部，按摩更到位；3大模式，15档力度，满足多种按摩需求。','499','购买即送499积分','白色','SKG智能颈椎按摩器','img/product/details_img/life/10000376_1548661811859_250x250.png'),
(NULL,7,'涡轮三叶组合刀片，大孔径回旋刀网，贴合面部轮廓，4500转调整马达，独特盲剃效果，听得到的干净；专业时间长，2小时极速充电，IPX7级防水','149','购买即送149积分','白色','须眉 便携式剃须刀ST-R101','img/product/details_img/life/10000483_1566964335650_250x250.jpg');


/**手机图片**/
CREATE TABLE vivo_laptop_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  laptop_id INT,              #手机编号
  sm VARCHAR(128),          #小图片路径
  family VARCHAR(24)     #手机型号
);

/****首页轮播广告商品****/
CREATE TABLE vivo_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);

/**手机**/
INSERT INTO vivo_laptop VALUES
(1,1,'iQOO ','5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航',6988,'*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','双核i5/8GB内存/128GB闪存','AppleMacBook Air','MacOS','8G','1920*1080','Intel i5低功耗版','轻薄本','128G固态','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,true),
(2,1,'iQOO ','5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航',6988,'*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','双核i5/8GB内存/128GB闪存','AppleMacBook Air','MacOS','8G','1920*1080','Intel i5低功耗版','轻薄本','128G固态','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,true),
(3,1,'iQOO ','5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航',6988,'*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','双核i5/8GB内存/128GB闪存','AppleMacBook Air','MacOS','8G','1920*1080','Intel i5低功耗版','轻薄本','128G固态','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,true),
(4,1,'iQOO ','5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航',6988,'*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','双核i5/8GB内存/128GB闪存','AppleMacBook Air','MacOS','8G','1920*1080','Intel i5低功耗版','轻薄本','128G固态','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,true),
(5,1,'iQOO ','5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航',6988,'*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','双核i5/8GB内存/128GB闪存','AppleMacBook Air','MacOS','8G','1920*1080','Intel i5低功耗版','轻薄本','128G固态','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,true);

/*手机图片*/
INSERT INTO vivo_laptop_pic VALUES
(NULL,1,'img/iQOO.png','iQOO'),
(NULL,1,'img/iQOO1.png','iQOO'),
(NULL,1,'img/iQOO2.png','iQOO'),
(NULL,2,'img/NEX.png','NEX'),
(NULL,2,'img/NEX旗舰版.png','NEX'),
(NULL,3,'img/X系列.png','X系列'),
(NULL,3,'img/X系列1.png','X系列'),
(NULL,3,'img/X系列23.png','X系列'),
(NULL,3,'img/X系列23s.png','X系列'),
(NULL,4,'img/S系列1.png','S系列'),
(NULL,4,'img/S系列2.png','S系列'),
(NULL,5,'img/Z系列.png','Z系列'),
(NULL,5,'img/Z系列2.png','Z系列'),
(NULL,5,'img/Z系列3.png','Z系列'),
(NULL,5,'img/Z系列4.png','Z系列'),
(NULL,5,'img/Z系列5.png','Z系列'),
(NULL,6,'img/Y系列.png','Y系列'),
(NULL,6,'img/Y系列1.png','Y系列'),
(NULL,6,'img/Y系列2.png','Y系列'),
(NULL,6,'img/Y系列3.png','Y系列'),
(NULL,7,'img/U系列.png','U系列');

/****首页轮播广告商品****/
INSERT INTO vivo_index_carousel VALUES
(NULL, 'img/index/轮播图1.png','轮播广告商品1','product_details.html?lid=28'),
(NULL, 'img/index/轮播图2.png','轮播广告商品2','product_details.html?lid=19'),
(NULL, 'img/index/轮播图.png','轮播广告商品4','lookforward.html');

/***手机导航小图片***/

CREATE TABLE phone_card_img(
   fid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
   img VARCHAR(128)        
);

INSERT INTO phone_card_img VALUES
(NULL,'iQOO系列','img/product/iQOO系列.jpg'),
(NULL,'NEX系列','img/product/NEX系列.jpg'),
(NULL,'S系列','img/product/S系列.jpg'),
(NULL,'U系列','img/product/U系列.jpg'),
(NULL,'X系列','img/product/X系列.jpg'),
(NULL,'Y系列','img/product/Y系列.png'),
(NULL,'Z系列','img/product/Z系列.jpg');