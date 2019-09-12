<template>
  <div>
    <mhead></mhead>
    <pcarousel></pcarousel>
    <pbody></pbody>
  </div>
</template>
<script>
import Mhead from '../home/M_Head.vue'
import Pcarousel from './Pcarousel.vue'
import productBody from './product-body.vue'
export default {
  data() {
    return {
      
    }
  },
  components:{
    "mhead":Mhead,
    "pcarousel":Pcarousel,
    "pbody":productBody
  }
}
</script>
<style lang="" scoped>
  
</style>