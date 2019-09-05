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
      
    }
  },
  components:{
    "mhead":Mhead,
    "mbody":Mbody,
    "mfooter":Mfooter
  },
}
</script>
<style scoped>
  
</style>