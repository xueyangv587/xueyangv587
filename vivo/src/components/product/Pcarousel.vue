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
        <div class="nav" @mouseleave="offHover()">
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
              {{msg}}
          </div>
      </div>
    </div>
</template>
<script>
export default {
  data() {
    return {
      msg:""
    }
  },
  methods: {
    hover(i){
      var div=document.getElementsByClassName("nav_bar")[0];
      div.style.display="block";
      if(i==1){
        this.msg="手机列表"
      }else if(i==2){
        this.msg="充电"
      }else if(i==3){
        this.msg="音乐"
      }else if(i==4){
        this.msg="配件"
      }else if(i==5){
        this.msg="智能"
      }else if(i==6){
        this.msg="摄影"
      }else if(i==7){
        this.msg="生活"
      }
      
    },
    offHover(){
      var div=document.getElementsByClassName("nav_bar")[0];
      div.style.display="none";
    }
  },
}
</script>
<style scoped>
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
    .nav li{
      padding:21px 15px;
    }
    .nav li:hover{
      cursor: pointer;
      background:#fff;
    }
    .nav li>i{
      margin-left:120px;
    }
    .nav li>i>img{
      width:12px;height:px;
    }
    .nav_bar{
      display: none;
      position: absolute;
      left:13rem;top:0rem;
      background: rgba(255,255,255,.65);
      border-radius:5px;
      width:764px;height:482px;
    }
</style>