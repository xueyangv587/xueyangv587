<template>
  <div>
    <imgs></imgs>
    <div class="img">
        <div style="margin-right:10px;">
          <img src="../../assets/图片1.jpg" alt="">
        </div>
        <div>
          <img src="../../assets/图片2.jpg" alt="">
        </div>
    </div>
  </div>
</template>
<script>
  import Imgs from "./imgs.vue"  //引入轮播图模块
export default {

  components:{
   "imgs":Imgs
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
}
</script>
<style scoped>
.img{
  display:flex;
width:100%;
}
.img>div{
  width:50%;
  box-sizing: border-box;
}
.img>div>img{
  width:100%;
}
</style>