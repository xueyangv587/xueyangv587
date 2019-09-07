<template>
 <!-- 轮播组件的位置 -->
   <div class="container">
     <slider-show :slides="slides" :inv="invTime"></slider-show>
     <div>{{imgurl}},{{imgurl1}},{{imgurl2}}</div>
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
      imgurl:"",
      imgurl1:"",
      imgurl2:"",
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
 },
 methods: {
    lodeMore(){
    var url="home"
    this.axios.get(url).then(result=>{
      let list=result.data.data;
      for(var i=0;i<list.length;i++){
        console.log(list[i].img);
        this.imgurl=list[0].img;
        this.imgurl1=list[1].img;
        this.imgurl2=list[2].img;
      }
    })
  }
 },
 created() {
   this.lodeMore();
 },
}
</script>
<style scoped>

</style>
