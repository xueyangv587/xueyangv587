<template>
<div>
  <div class="mycolor">
    <div class="container">
      <div id="content" class="d-flex">
      <div><a href="#"><img src="../../assets/product/card.jpg" alt=""></a></div>
      <div class="mx-3"><a href="#"><img src="../../assets/product/card1.jpg" alt=""></a></div>
      <div><a href="#"><img src="../../assets/product/card2.jpg" alt=""></a></div>
      <div class="ml-3"><a href="#"><img src="../../assets/product/card3.jpg" alt=""></a></div>
    </div>
    <div class="content">
      <span class="d-flex">
        <img style="width:82px;height:26px;" src="../../assets/抢购.png" alt=""><p class="Timetext">距离开始 <i>{{h}}</i>时<i>{{m}}</i>分<i>{{s}}</i>秒</p>
      </span>
      <a href="#">更多场次></a>
    </div>
      <div class="prent">
        <div class="prent_img">                
           <ul id="ul" class="img_carousel p-0" :style="{'margin-left':ulMarginLeft,width:ulWidth}">
            <li id="lunbo" v-for="(item,i) of list" :key="i">
              <img class="mt-5" style="width:172px;height:172px;" :src="'http://127.0.0.1:3000/'+item.img" alt="">
              <span>
                <p class="px-4">{{item.sname}}</p>
                <p class="px-4">{{item.title}}</p>
                <p class="px-4 text-danger h4">¥{{item.pic.toFixed(2)}}</p>
             </span>
            </li>
          </ul>
        </div>
            <span @click="move(-1)" class="icon_previous"><img src="../../assets/左箭头.png" alt=""></span>
            <span @click="move(1)" class="icon_next"><img src="../../assets/右箭头.png" alt=""></span>
      </div>
        <h3 class="my-5">热卖专区</h3>
         <div class="re_mai mb-5">
           <div class="zoom">
             <img :src="'http://127.0.0.1:3000/'+remai[0].rimg" alt="">
             <p class="py-3 h5">{{remai[0].rname}}</p>
             <p class="py-3">{{remai[0].rtitle}}</p>
             <p class="h5 text-danger">¥{{remai[0].rpic}}</p>
           </div>
            <div class="mx-2 zoom">
             <img :src="'http://127.0.0.1:3000/'+remai[1].rimg" alt="">
             <p class="py-3 h5">{{remai[1].rname}}</p>
             <p class="py-3">{{remai[1].rtitle}}</p>
             <p class="h5 text-danger">¥{{remai[1].rpic}}</p>
           </div>
           <div class="zoom">
             <img :src="'http://127.0.0.1:3000/'+remai[2].rimg" alt="">
             <p class="py-3 h5">{{remai[2].rname}}</p>
             <p class="py-3">{{remai[2].rtitle}}</p>
             <p class="h5 text-danger">¥{{remai[2].rpic}}</p>
           </div>
         </div>
         <h3 class="my-5">精品配件</h3>
         <div class="jp_content">
            <div class="mb-2 zoom" v-for="(item,i) of list2" :key="i">
              <img :src="'http://127.0.0.1:3000/'+item.bimg" alt="">
              <p class="h5 py-3">{{item.bname}}</p>
              <p class="py-2">{{item.btitle}}</p>
              <p class="text-danger h5">¥{{item.bpic.toFixed(2)}}</p>
            </div>
         </div>
    </div>
  </div>
   <div class="brand my-5 d-flex justify-content-center">
           <ul class="list-unstyled d-flex justify-content-between" style="width:1200px;">
             <li>
               <img src="../../assets/正版.png" alt=""><span class="h5 ml-3">官方正品</span>
             </li>
             <li>
               <img src="../../assets/快递.png" alt=""><span class="h5 ml-3">顺丰极速送达</span>
             <li>
               <img src="../../assets/心爱心.png" alt=""><span class="h5 ml-3">全国联保</span>
             </li>
             <li>
               <img src="../../assets/闪电.png" alt=""><span class="h5 ml-3">镭雕定制</span>
             </li>
           </ul>
         </div>
</div>
</template>
<script>
export default {
  data() {
    return {
      d:"",
      h:"",
      m:"",
      s:"",
      list:[],
      list2:[],
      tiems:0,
      ulWidth:0,
      remai:[
        {
          rimg:"",
          rname:"",
          rpic:0,
          rtitle:""
        },
        {
          rimg:"",
          rname:"",
          rpic:0,
          rtitle:""
        },
        {
          rimg:"",
          rname:"",
          rpic:0,
          rtitle:""
        }
      ]
    }
  },
  computed:{
    ulMarginLeft(){
      return this.tiems*-302+"px";
    }
  },
  methods: {
   move(i){
       if(i==-1&&this.tiems!=0 || i==1&&this.tiems<this.list.length-4){
         this.tiems+=i;
       }
    
   },
    countTime(){
      //获取当前时间
      var date= new Date();
      var now= date.getTime();
      //设置截止时间
      var endDate=new Date("2019-9-13 8:59:59");
      var end=endDate.getTime();
      //时间差
      var leftTime=end-now;
      //定义变量 d,h,m,s保存倒计时
      if(leftTime>=0){
        this.d=Math.floor(leftTime/1000/60/60/24);
        this.h=Math.floor(leftTime/1000/60/60%24);
        this.m=Math.floor(leftTime/1000/60%60);
        this.s=Math.floor(leftTime/1000%60); 
      }
    setTimeout(this.countTime, 1000);
    },
    loadMore(){
      var url="product"
      this.axios.get(url).then(result=>{
        console.log(result.data.data);
        this.list=result.data.data.result1;
        this.remai=result.data.data.result3;
        this.list2=result.data.data.result4;
        this.ulWidth=result.data.data.result1.length*292+"px";
      })
    } 
  },
  created:function() {
    this.countTime();
    this.loadMore();
  },
}
</script>
<style scoped>
.zoom{
  transition: all .2s linear;
}
.zoom:hover{
  transform: translate3d(0,-2px,0);
  box-shadow:0 15px 30px rgb(0,0,0,.1);
}
.brand{
  width:100%;
}
.brand>ul{
  padding-bottom:10px;
   border-bottom:1px solid #ccc;
}
.jp_content>div{
  width:292px;height:380px;
  background: #fff;
}
.jp_content>div:nth-child(odd){
  margin-right:10px;
}
.jp_content>div:nth-child(3){
  margin-left:10px;
  
}
.jp_content>div:nth-child(7){
  margin-left: 10px;
}
.jp_content>div>img{
  width:172px;height:172px;
}
.jp_content{
  display: flex;
  width:1200px;
  flex-wrap: wrap;
}
.container{
  width:70%;
}
.prent{
  position: relative;
  width:100%;
}
.icon_next{
  position: absolute;
  left:1210px;top:200px;
}
.icon_previous{
  position: absolute;
  left:-40px;top:200px;
}
.prent_img{
  width:1200px;height:380px;
  overflow: hidden;
}
.img_carousel{
  margin-top:10px;
  display: flex;
  transition:margin-left .5s linear;
}
.re_mai{
  display: flex;
  justify-content: space-between;
  width:1200px;
}
.re_mai>div{
  width:400px;height:500px;
  background: #fff;
  box-sizing: border-box;
}
.re_mai>div>img{
  width:200px;height:200px;
  margin-top:58px;
}
.img_carousel>li{
  margin-right:10px;
}
.img_carousel>li{
  display:inline-block;
  list-style:none;
width:292px;
 height:380px;
  background:#fff;
}
.img_carousel>li>span>p{
    white-space: nowrap;  /*文本不换行*/
  overflow: hidden;
  text-overflow: ellipsis;
}
.Timetext{
        /*上右下左  */
  margin:0 0 0 10px;
  color:#aaa;

}
.Timetext>i{
  display: inline-block;
  border-radius:3px;
  width:38px;
  height:32px;
  line-height:32xp;
  text-align: center;
  background-color:#ec0404;
  color:#fff;
  font-size:20px;
}
.content{
  margin-top:50px;
  display:flex;
  justify-content: space-between;
}
.mycolor{
  display:flex;
 justify-content: center;
  background:#F0F0F0;
  width:100%;
}
#content{
  margin-top:10px;
  justify-content:space-between;
  width:100%;
}
#content>div img{
  width:287px;height:auto;
}
</style>