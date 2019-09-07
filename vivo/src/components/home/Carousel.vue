<template>
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="d-block w-100" :src="imgUrl" alt="First slide">
            
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" :src="imgUrl1" alt="Second slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" :src="imgUrl2" alt="Third slide">
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
</template>
<script>
export default {
  data() {
    return {
      imgUrl:"http://127.0.0.1:3000/",
      imgUrl1:"http://127.0.0.1:3000/",
      imgUrl2:"http://127.0.0.1:3000/",
    }
  },
  methods: {
    loadMore(){
      var url="home"
      this.axios.get(url).then(result=>{
         this.imgUrl+=result.data.data.result1[0].img;
         this.imgUrl1+=result.data.data.result1[1].img;
         this.imgUrl2+=result.data.data.result1[2].img;
        console.log(result.data.data.result1)
      })
    }
  },
  created() {
   this.loadMore();
  },
}
</script>
<style>
  
</style>

