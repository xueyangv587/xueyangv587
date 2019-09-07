<template>
  <div>
    <mhead></mhead>
    <pcarousel></pcarousel>
  </div>
</template>
<script>
import Mhead from '../home/M_Head.vue'
import Pcarousel from './Pcarousel.vue'
export default {
  data() {
    return {
      
    }
  },
  components:{
    "mhead":Mhead,
    "pcarousel":Pcarousel
  }
}
</script>
<style lang="" scoped>
  
</style>