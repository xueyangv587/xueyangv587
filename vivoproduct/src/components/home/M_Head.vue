<template>
  <div class="content">
    <div class="parent">
      <div class="child1">
      <ul>
        <li><a href="">品牌</a></li>
        <li><a href="">Funtouch OS</a></li>
        <li><a href="">体验店</a></li>
        <li><a href="">政企业务</a></li>
        <li><a href="">社区</a></li>
      </ul>
    </div>
    <div class="child2">
      <a href="javascript:;">购物车</a>
      <a href="javascript:;">登录</a>
      <i style="color:#ccc">|</i>
      <a href="javascript:;">注册</a>
    </div>
    </div>
    <div class="parent2">
      <div class="child">
        <i><img src="../../assets/vivo.png" alt=""></i>
        <ul>  
          <li><a href="">iQOO专区</a></li>
          <li><a href="">NEX系列</a></li>
          <li><a href="">X系列</a></li>
          <li><a href="">S系列</a></li>
          <li><a href="">Z系列</a></li>
          <li><a href="">Y系列</a></li>
          <li><a href="">U系列</a></li>
          <li><a href="">商城</a></li>
          <li><a href="">服务</a></li>
        </ul>
        <span><img src="../../assets/搜索.png" alt=""></span>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      
    }
  },
}
</script>
<style scoped>
  .child1>ul>li>a:hover{
    color:#848484;
    transition:color .2s ease-in-out;
  }
  .child2>a:hover{
    color:#848484;
    transition:color .2s ease-in-out;
  }
  ul{
    list-style:none;
    margin: 0;
  }
 .parent a{
    color:#ccc;
    text-decoration: none;
  }
  .parent{
    display:flex;
    justify-content:space-between;
    background: #333;
    width:100%;
    padding:8px 0;
  }
  .child1{
    width:20%;
  }
  .child1>ul{
    display:flex;
    justify-content: space-around;
    color:#ccc;
    font-size:12px;
    align-items: center;
  }
  .child2{
    margin-right:20px;
    width:10%;
    font-size:12px;
    display:flex;
    justify-content: space-around;
  }
  .parent2{
    width:100%;
    display:flex;
    justify-content:center;
    background:#ccc;
  }
  .parent2>.child{
    width:70%;
    display:flex;
    justify-content: space-around;
  }
   .parent2>.child>ul{
     width:100%;
     display: flex;
     justify-content: space-between;
     align-items: center;
   }
   .parent2 a{
      color:#fff;
    text-decoration: none;
   }
</style>