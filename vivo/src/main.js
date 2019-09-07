import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from "axios"
//配置axios基础路径
axios.defaults.baseURL="http://127.0.0.1:3000"
//配置axios保存seesion信息
axios.defaults.withCredentials=true
Vue.config.productionTip = false
// 将axios注册vue示例中
Vue.prototype.axios=axios
new Vue({
  router,
  store,
  render: h => h(App),
}).$mount('#app')
