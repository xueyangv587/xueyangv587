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
      <div class="childs3">
        <ul id="u1" >
          <li><img src="../../assets/vivo.png" alt=""></li>
          <li><a class="lg" href="">iQOO专区</a><a class="md" href="">iQOO</a></li>
          <li><a class="lg" href="">NEX系列</a><a class="md" href="">NEX</a></li>
          <li><a class="lg" href="">X系列</a><a class="md" href="">X</a></li>
          <li><a class="lg" href="">S系列</a><a class="md" href="">S</a></li>
          <li><a class="lg" href="">Z系列</a><a class="md" href="">Z</a></li>
          <li><a class="lg" href="">Y系列</a><a class="md" href="">Y</a></li>
          <li><a class="lg" href="">U系列</a><a class="md" href="">U</a></li>
          <li><a href="">商城</a></li>
          <li><a href="">服务</a></li>
          <li><img src="../../assets/搜索.png" alt=""></li>
        </ul>
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
          <a href="">iQOO专区</a>  <img src="" alt="">
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
       screenWidth: document.body.clientWidth
    }
  },
  methods: {
    show(){
      var div=document.getElementById("item-content");
      console.log(div.className);
      if(div.style.display=="none"){
        div.style.display="block";
      }else{
        div.style.display="none";
      }
    }
  },

}
</script>
<style scoped>
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
  background:#ccc;
  height:68px;
}
.content2>.childs3{
  width:100%;
 display:flex;
 justify-content: center;
}
.content2>.childs3>ul{
  width:70%;
  display: flex;
  justify-content: space-between;
  align-items: center;
margin:0;
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