<template>
  <div>
    <mhead></mhead>
    <mbody></mbody>
    <mfooter></mfooter>
  </div>
</template>
<script>
import Mhead from './M_Head.vue'
import Mbody from './M_Body.vue'
import Mfooter from './M_Footer.vue'
export default {
  data() {
    return {
      list:[]
    }
  },
  methods: {
    lodeMore(){
    var url="home"
    this.axios.get(url).then(result=>{
      this.list=result.data.data;
      // console.log(result.data.data)
    })
  }
  },
  created() {
    this.lodeMore();
  },
  components:{
    "mhead":Mhead,
    "mbody":Mbody,
    "mfooter":Mfooter
  },
}
</script>
<style lang="stylus" scoped>
  
</style>