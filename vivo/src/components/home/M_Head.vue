<template>
  <div>
    <div id="pc">
      <div class="content">
        <div class="childs">
          <ul>
            <li><a href="">品牌</a></li>
            <li><a href="">Funtouch OS</a></li>
            <li><a href="">体验店</a></li>
            <li><a href="">政企业务</a></li>
            <li><a href="">社区</a></li>
          </ul>
        </div>
        <div class="childs2">
         <p>
          <a style="margin-right:15px;" href="">购物车</a>
          <a style="margin-right:10px;" href="">登录</a>
          <i>|</i>
          <a style="margin-left:10px;" href="">注册</a>
         </p>
        </div>
    </div>
    <div class="content2">
      <div class="childs3" @mouseleave="offHover()">
        <ul id="u1" >
          <li><a href="http://127.0.0.1:8080/#/home"><img src="../../assets/vivo.png" alt=""></a></li>
          <li @mouseenter="hover(1)" ><a class="lg" href="">iQOO专区</a><a class="md" href="">iQOO</a></li>
          <li @mouseenter="hover(2)"><a class="lg" href="">NEX系列</a><a class="md" href="">NEX</a></li>
          <li @mouseenter="hover(3)"><a class="lg" href="">X系列</a><a class="md" href="">X</a></li>
          <li @mouseenter="hover(4)"><a class="lg" href="">S系列</a><a class="md" href="">S</a></li>
          <li @mouseenter="hover(5)"><a class="lg" href="">Z系列</a><a class="md" href="">Z</a></li>
          <li @mouseenter="hover(6)"><a class="lg" href="">Y系列</a><a class="md" href="">Y</a></li>
          <li @mouseenter="hover(7)"><a class="lg" href="">U系列</a><a class="md" href="">U</a></li>
          <li><a href="http://127.0.0.1:8080/#/product">商城</a></li>
          <li><a href="">服务</a></li>
          <li><img src="../../assets/搜索.png" alt=""></li>
        </ul>
        <div class="u1_hiden">
          <div style="margin:0 30px;" v-for="(item,i) of list" :key="i">
            <img style="width:68px;height:160px;" :src="'http://127.0.0.1:3000/'+item.sm" alt="">
            <p>iQOO新品</p>
          </div>
          <div style="padding-top:20px;padding-left:20px;">
            <p class="my_btn">全部{{phone}}机型</p>
            <p class="my_btn">对比{{phone}}机型</p>
          </div>
        </div>
      </div>
    </div>
    </div>
    <div id="phone" style="display:none;">
      <div class="container">
        <img @click="show()" style="width:50px;height:50px;" src="../../assets/收起按钮icon.png" alt="">
        <img src="../../assets/vivo.png" alt="">
        <img style="width:50px;height:50px;" src="../../assets/购物.png" alt="">
      </div>
      <div id="item-content">
        <ul class="item-child">
        <li>
          <a href="">iQOO专区</a> <img src="" alt="">
        </li>
        <li>
          <a href="">NEX系列</a> <img src="" alt="">
        </li>
        <li>
          <a href="">X系列</a> <img src="" alt="">
        </li>
        <li>
          <a href="">S系列</a> <img src="" alt="">
        </li>
        <li>
          <a href="">Z系列</a> <img src="" alt="">
        </li>
        <li>
          <a href="">Y系列</a> <img src="" alt="">
        </li>
        <li>
          <a href="">U系列</a> <img src="" alt="">
        </li>
      </ul>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
       screenWidth: document.body.clientWidth,
       msg:"手机详情一",
      list:[],
      phone:""
    }
  },
  methods: {
    show(){
      var div=document.getElementById("item-content");
      if(div.style.display=="none"){
        div.style.display="block";
      }else{
        div.style.display="none";
      }
    },
    hover(i){
      var div=document.getElementsByClassName("u1_hiden")[0];
      var bg=document.getElementsByClassName("content2")[0];
      bg.style.background="rgba(240, 237, 237, 0.7)";
      div.style.transition="background,height .3s linear";
      div.style.height="250px"; 
      var url="home?laptop_id="
      this.axios.get(url+i).then(result=>{
        this.list=result.data.data.result2;
        this.phone=result.data.data.result2[0].family;
      })
    },
    offHover(){
      var div=document.getElementsByClassName("u1_hiden")[0];
      var bg=document.getElementsByClassName("content2")[0];
      div.style.transition="background,height .3s linear";
       div.style.height="0";
       bg.style.background="rgba(52,52,43,.3)";
    },
  },
  created() {
   
  },
  watch: {
    
  },
  computed: {

  },
}
</script>
<style scoped>
ul,p{
  margin:0;
}
.u1_hiden{
  display: flex;
  height:0;
  transition: all .3s linear;
}
@media screen and (min-width:1025px){
  #u1 .lg{
    display: inline;
  }
  #u1 .md{
    display: none;
  }
}
@media screen and (min-width:768px) and (max-width:1024px){
  #u1 .lg{
    display: none;
  }
  #u1 .md{
    display: inline;
  }
}
@media screen and (max-width:767px) {
  #pc{
    display: none;
  }
  #phone{
    display: block !important;
  }
}
#item-content{
 display:none;
}
#item-content>.item-child{
  width: 100%;
  padding:0;
  display: flex;
  flex-direction: column;
  z-index: 999;
}
.container{
  display: flex;
  justify-content: space-between;
  align-items: center;
  background: #333;
  padding:0 1rem;
}
.show{
  display: block !important;
}
.hiden{
  display:none !important;
}
 .childs a,.childs2 a{
   color:#ccc;
  text-decoration:none;
  transition:color .2s ease-in-out;
 }
 .childs a:hover,.childs2 a:hover{
   color:#848484;
 }
 .childs,.childs2{
   display: inline-block;
 }
 ul{
   list-style: none;
   display:inline-flex;
 }
 .childs>ul>li>a{
   font-size:12px;
  padding-right: 25px;
 }
.childs2{
  position: absolute;
  right:0;
  padding-right:50px;
}
.content{
  width:100%;
  height:32px;
  display: flex;
  align-items:center;
  background:#333;
}
.content2{
  width:100%;
  background:rgba(52,52,43,.3);
  max-height:300px;
  position: absolute;
  top: 30px;
  overflow: hidden;
  z-index:999;
}
.content2>.childs3{
  width:100%;
 display:flex;
 flex-direction: column;
 align-items: center;
 justify-content: center;
 box-sizing: border-box;
}
.content2>.childs3>ul{
  width:70%;
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin:0;
}
.content2>.childs3>ul>li>a{
    padding:20px 0;  
}
.childs3 a{
  color:#fff;
  text-decoration: none;
  font-size:18px;
  transition:color .2s ease-in-out;
}
.childs3 a:hover{
  color:rgb(38, 115, 231);
}
</style>