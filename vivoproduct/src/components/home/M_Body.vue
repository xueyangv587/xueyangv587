<template>
  <div class="container">
    <div class="imgs">
      <img style="max-height:680px;max-width:2560px;" src="../../assets/轮播图2修正.jpg" alt="">
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
.container{
  display: flex;
}
  .imgs{
    display: flex;
    width: 100%;
  }
  .imgs>img{
    height:100%;
    width:100%;
  }
</style>