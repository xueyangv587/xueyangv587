<template>
  <div>
    <!-- <imgs></imgs> -->
    <carousel></carousel>
    <div class="img">
        <div style="margin-right:10px;" class="my_title">
          <img src="../../assets/图片1.jpg" alt="">
          <span class="my_title_item">
            <h3>以旧换新</h3>
            <p>专业评估 极速回收</p>
          </span>
        </div>
        <div class="my_title">
          <img src="../../assets/图片2.jpg" alt="">
          <span class="my_title_item">
            <h3>新品镭雕开启</h3>
            <p>免费定制 镌刻心意</p>
          </span>
        </div>
    </div>
    <div class="img_s">
      <div class="img_f">
        <img src="../../assets/bg.png" alt="">
        <div class="title">
          <div>
            <img src="https://wwwstatic.vivo.com.cn/vivoportal/files/image/home/20190902/e5425fb7112b8500d39c295fc80de33b.svg" alt="">
          </div>
          <h2>5G智慧旗舰</h2>
          <p>即将上市</p>
          <div>
            <a href="#">>立即了解</a>
          </div>
        </div>
      </div>
      <div class="img_f mt-1">
        <img src="../../assets/bg1.jpg" alt="">
        <div class="title">
          <div>
            <h2>iQOO Neo</h2>
          </div>
          <p>骁龙845 4500mAh续航</p>
          <div>
            <a href="#">>立即购买</a>
          </div>
        </div>
      </div>
    </div>
    <div class="hover_img mt-2">
      <div class="div1">
        <img src="../../assets/hover1.jpg" alt="">
        <span>
           <h3>Y7s千元屏幕指纹</h3>
          <p>闪充4500mAh大电池</p>
        </span>
      </div>
      <div class="div2">
        <img src="../../assets/hover2.jpg" alt="">
        <span>
          <h3>iQOO Pro有多强</h3>
          <p>5G性能大揭秘</p>
        </span>
      </div>
      <div class="div3">
        <img src="../../assets/hover3.jpg" alt="">
        <span>
          <h3>U1大屏大电池</h3>
          <p>指纹人脸双识别</p>
        </span>
      </div>
      <div class="div4">
        <img src="../../assets/hover4.jpg" alt="">
        <span>
          <h3>和X27一起捕捉夏日光影</h3>
          <p>即刻前往</p>
        </span>
      </div>
    </div>
  </div>
</template>
<script>
  // import Imgs from "./imgs.vue"  //引入轮播图模块
  import Carousel from './Carousel.vue'
export default {

  components:{
  //  "imgs":Imgs
  "carousel":Carousel
  },
  data() {
    return {
    
    }
  },
  computed: {
   
  },
  mounted() {
   
  }, 
  methods: {
   
  },
  created() {
  
  },
}
</script>
<style scoped>
.my_title{
  position: relative;
  overflow: hidden;
}
.my_title>img{
  transition: all 2s;
}
.my_title>img:hover{
  transform:scale(1.2);
}
.my_title_item{
  position: absolute;
  left:25%;top:25%;
}
.img{
  margin-top:0.5rem;
  display:flex;
width:100%;
height:auto;
}
.img>div{
  width:50%;
  box-sizing: border-box;
  height:auto;
}
.img>div>img{
  width:100%;
  height:100%;
}
.img_s{
  margin-top:10px;
  display: flex;
  flex-direction: column;
  width:100%;
height: auto;
}
.img_f{
  width:100%;
  height:auto;
  overflow: hidden;
  position: relative;
}

.title{
  position: absolute;
  left: 150px;top:20px;
}
.img_s>div>img{
  width:100%;
}
.hover_img{
  display:flex;
}

.hover_img>.div1,.div2,.div3,.div4{
  width:25%;
  overflow: hidden;
  position: relative;
}
.hover_img img{
  width:100%;
  height:100%;
}
.hover_img span{
  position: absolute;
  left:0;top:0;
}
</style>