<template>
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
        <div class="img_carousel">
        <li id="lunbo" v-for="(item,i) of list" :key="i">
          <img class="mt-5" style="width:172px;height:172px;" :src="'http://127.0.0.1:3000/'+item.img" alt="">
          <span>
            <p class="px-4">{{item.sname}}</p>
            <p class="px-4">{{item.title}}</p>
            <p class="px-4 text-danger h4">¥{{item.pic.toFixed(2)}}</p>
          </span>
        </li>
      </div>
       <span @click="previous()" class="icon_previous"><img src="../../assets/左箭头.png" alt=""></span>
        <span @click="next()" class="icon_next"><img src="../../assets/右箭头.png" alt=""></span>
      </div>
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
      list:[]
     
    }
  },
  methods: {
    previous(){
      var div=document.getElementsByClassName("img_carousel")[0]
      console.log(div);
      var lis=div.getElementsByTagName("li");
      console.log(lis);
      for(let i=0;i<lis.length;i++){
        lis[i].style.marginLeft="-100px";
      }
      // var mgleft=292;
      // if(li.style.marginLeft){
      //   li.style.marginLeft=parseInt(li.style.marginLeft)+mgleft+"px";
      // }else{
      //   li.style.marginLeft=mgleft+"px";
      // }
    },
    next(){
      alert("下一列");
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
      })
    } 
  },
  created() {
    this.countTime();
    this.loadMore();
  },
}
</script>
<style scoped>
.container{
  width:70%;
}
.prent{
  position: relative;
}
.icon_next{
  position: absolute;
  left:1210px;top:200px;
}
.icon_previous{
  position: absolute;
  left:-40px;top:200px;
}
.img_carousel{
  margin-top:10px;
  width:1200px;height:390px;
  display: flex;
  overflow: hidden;
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