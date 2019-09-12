<template>
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="d-block w-100" src="../../assets/product/轮播图.png" alt="First slide">
            
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="../../assets/product/轮播图1.jpg" alt="Second slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="../../assets/product/轮播图2.jpg" alt="Third slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="../../assets/product/轮播图3.jpg" alt="Third slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="../../assets/product/轮播图4.jpg" alt="Third slide">
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
        <div @mouseleave="offHover()">
          <div class="nav">
          <ul class="list-inline">
            <li @mouseenter="hover(1)">手机  <i><img src="../../assets/箭头.png" alt=""></i></li>
            <li @mouseenter="hover(2)">充电  <i><img src="../../assets/箭头.png" alt=""></i></li>
            <li @mouseenter="hover(3)">音乐  <i><img src="../../assets/箭头.png" alt=""></i></li>
            <li @mouseenter="hover(4)">配件  <i><img src="../../assets/箭头.png" alt=""></i></li>
            <li @mouseenter="hover(5)">智能  <i><img src="../../assets/箭头.png" alt=""></i></li>
            <li @mouseenter="hover(6)">摄影  <i><img src="../../assets/箭头.png" alt=""></i></li>
            <li @mouseenter="hover(7)">生活  <i><img src="../../assets/箭头.png" alt=""></i></li>
          </ul>
          <div class="nav_bar">
              <p>{{msg}}</p>
              <div class="phone_hiden">
                <ul class="d-flex">
                  <li><a href="#" class="my_bgimg bg_img1">iQOO系列</a></li>
                  <li><a href="#" class="my_bgimg bg_img2">NEX系列</a></li>
                  <li><a href="#" class="my_bgimg bg_img3">S系列</a></li>
                  <li><a href="#" class="my_bgimg bg_img4">U系列</a></li>
                  <li><a href="#" class="my_bgimg bg_img5">X系列</a></li>
                  <li><a href="#" class="my_bgimg bg_img6">Y系列</a></li>
                  <li><a href="#" class="my_bgimg bg_img7">Z系列</a></li>
                </ul>
              </div>
              <div>
                <ul class="navbar" >
                  <li v-for="(item,i) of list" :key="i">
                    <img style="width:46px;height:46px;" :src="imgurl+item.sm" alt=""><span>{{item.lname}}</span>
                    </li>
                </ul>
              </div>
          </div>
        </div>
        </div>
    </div>
</template>
<script>
export default {
  data() {
    return {
      msg:"",
      list:[],
     imgurl:"http://127.0.0.1:3000/"
      
    }
  },
  methods: {
    hover(i){
      var div=document.getElementsByClassName("nav_bar")[0];
      var div2=document.getElementsByClassName("phone_hiden")[0];
      div.style.display="block";
      var url="product?class_id=";
      this.axios.get(url+i).then(result=>{
        this.list=result.data.data.result2;
      })
       if(i==1){
         this.msg="手机列表"
         div2.style.display="block";
       }else if(i==2){
         this.msg="充电"
         div2.style.display="none";
       }else if(i==3){
         this.msg="音乐"
         div2.style.display="none";
       }else if(i==4){
         this.msg="配件"
         div2.style.display="none";
       }else if(i==5){
         this.msg="智能"
         div2.style.display="none";
       }else if(i==6){
         this.msg="摄影"
         div2.style.display="none";
       }else if(i==7){
         this.msg="生活"
         div2.style.display="none";
       }
  
    },
    offHover(){
      var div=document.getElementsByClassName("nav_bar")[0];
      div.style.display="none";
    },
    
  },
  created() {
    
  },
}
</script>
<style scoped>
ul{
  list-style: none;
  padding:0;margin:0;
}
.navbar>li{
  width:222px;height:46px;
  margin:10px 0;
}
.navbar>li>span{
  display: inline-block;
  vertical-align: middle;
  max-width: 168px;
  font-size:14px;
  white-space: nowrap;  
  overflow: hidden;
  text-overflow: ellipsis;
}
.navbar{
  display:flex;
  padding:5px 10px;
}
.bg_img1{
  background-image: url('../../assets/product/iQOO系列.jpg');
}
.bg_img2{
  background-image: url('../../assets/product/NEX系列.jpg');
}
.bg_img3{
  background-image: url('../../assets/product/S系列.jpg');
}
.bg_img4{
  background-image: url('../../assets/product/U系列.jpg');
}
.bg_img5{
  background-image: url('../../assets/product/X系列.jpg');
}
.bg_img6{
  background-image: url('../../assets/product/Y系列.png');
}
.bg_img7{
  background-image: url('../../assets/product/Z系列.jpg');
}
.my_bgimg{
 background-size:cover;
  display: block;
  width:156px;height:50px;
  line-height:50px;
  border-radius: 9px;
  text-align: left;
  box-sizing: border-box;
  padding-left:20px;
}
  .phone_hiden{
    width:764px;
    display:flex;
    justify-content: center;
    padding:10px 20px;
  }
  .phone_hiden>ul{
    width:100%;
    flex-wrap: wrap;
    border-bottom:1px solid #ccc;
  }
  .phone_hiden>ul>li{
    margin:10px 10px;
  }
  
    .carousel-inner{
      position: relative;
    width: 100%;
    height: 600px;
    overflow: hidden
    }
    .carousel-item>img{
      height:600px;
    }
    .nav{
      position: absolute;
      left:18rem;top:5rem;
      width:200px;
      height:482px;
      background: rgba(255,255,255,.65);
      border-radius:5px;
    }
    .nav>ul>li{
      padding:21px 15px;
    }
    .nav>ul>li:hover{
      cursor: pointer;
      background:#fff;
    }
    .nav>ul>li>i{
      margin-left:120px;
    }
    .nav>ul>li>i>img{
      width:12px;height:px;
    }
    .nav_bar{
      display: none;
      position: absolute;
      left:13rem;top:0rem;
      background:#FFF;
      border-radius:5px;
      width:764px;height:482px;
    }
</style>