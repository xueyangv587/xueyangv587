<template>
  <div>
    <mhead></mhead>
    <pcarousel></pcarousel>
    <pbody></pbody>
    <mfooter></mfooter>
  </div>
</template>
<script>
import Mhead from '../home/M_Head.vue'
import Pcarousel from './Pcarousel.vue'
import productBody from './product-body.vue'
import Mfooter from '../home/M_Footer.vue'
export default {
  data() {
    return {
      
    }
  },
  components:{
    "mhead":Mhead,
    "pcarousel":Pcarousel,
    "pbody":productBody,
    "mfooter":Mfooter
  }
}
</script>
<style lang="" scoped>
  
</style>