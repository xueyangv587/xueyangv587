<template>
 <!-- 轮播组件的位置 -->
   <div class="container">
     <slider-show :slides="slides" :inv="invTime"></slider-show>
   </div>
</template>

<script>
import sliderShow from 'vueslideshow'
export default {
  components: {
    sliderShow
  },
  data () {
    return {
      invTime: 2000,
      slides: [
        {
          src: require('../../assets/轮播图.png'),
          title: '',
          href: 'detail/analysis'
       },
       {
          src: require('../../assets/轮播图1.jpg'),
          title: '',
          href: 'detail/analysis'
       },
       {
          src: require('../../assets/轮播图2.jpg'),
          title: '',
          href: 'detail/analysis'
       }
    ]
   }
 }
}
</script>
<style scoped>

</style>
