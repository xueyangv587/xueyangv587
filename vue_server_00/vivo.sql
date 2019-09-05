SET NAMES UTF8;
DROP DATABASE IF EXISTS vivo;
CREATE DATABASE vivo CHARSET=UTF8;
USE vivo;

/*手机型号家族*/
CREATE TABLE vivo_laptop_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32)
);

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


/**手机图片**/
CREATE TABLE vivo_laptop_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  laptop_id INT,              #手机编号
  sm VARCHAR(128)          #小图片路径
);

/****首页轮播广告商品****/
CREATE TABLE vivo_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);

/**手机型号家族**/
INSERT INTO vivo_laptop_family VALUES
(NULL,'iQOO'),
(NULL,'NEX'),
(NULL,'X'),
(NULL,'S'),
(NULL,'Z'),
(NULL,'Y'),
(NULL,'U');

/**手机**/
INSERT INTO vivo_laptop VALUES
(1,1,'iQOO ','5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航',6988,'*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','双核i5/8GB内存/128GB闪存','AppleMacBook Air','MacOS','8G','1920*1080','Intel i5低功耗版','轻薄本','128G固态','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,true),
(2,1,'iQOO ','5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航',6988,'*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','双核i5/8GB内存/128GB闪存','AppleMacBook Air','MacOS','8G','1920*1080','Intel i5低功耗版','轻薄本','128G固态','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,true),
(3,1,'iQOO ','5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航',6988,'*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','双核i5/8GB内存/128GB闪存','AppleMacBook Air','MacOS','8G','1920*1080','Intel i5低功耗版','轻薄本','128G固态','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,true),
(4,1,'iQOO ','5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航',6988,'*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','双核i5/8GB内存/128GB闪存','AppleMacBook Air','MacOS','8G','1920*1080','Intel i5低功耗版','轻薄本','128G固态','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,true),
(5,1,'iQOO ','5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航',6988,'*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','双核i5/8GB内存/128GB闪存','AppleMacBook Air','MacOS','8G','1920*1080','Intel i5低功耗版','轻薄本','128G固态','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,true);

/*手机图片*/
INSERT INTO vivo_laptop_pic VALUES
(NULL,1,'img/iQOO.png'),
(NULL,1,'img/iQOO1.png'),
(NULL,1,'img/iQOO2.png'),
(NULL,2,'img/NEX.png'),
(NULL,2,'img/NEX旗舰版.png'),
(NULL,3,'img/X系列.png'),
(NULL,3,'img/X系列1.png'),
(NULL,3,'img/X系列23.png'),
(NULL,3,'img/X系列23s.png'),
(NULL,4,'img/S系列1.png'),
(NULL,4,'img/S系列2.png'),
(NULL,5,'img/Z系列.png'),
(NULL,5,'img/Z系列2.png'),
(NULL,5,'img/Z系列3.png'),
(NULL,5,'img/Z系列4.png'),
(NULL,5,'img/Z系列5.png'),
(NULL,6,'img/Y系列.png'),
(NULL,6,'img/Y系列1.png'),
(NULL,6,'img/Y系列2.png'),
(NULL,6,'img/Y系列3.png'),
(NULL,7,'img/U系列.png');

/****首页轮播广告商品****/
INSERT INTO vivo_index_carousel VALUES
(NULL, 'img/index/轮播图1.png','轮播广告商品1','product_details.html?lid=28'),
(NULL, 'img/index/轮播图2.png','轮播广告商品2','product_details.html?lid=19'),
(NULL, 'img/index/轮播图.png','轮播广告商品4','lookforward.html');

