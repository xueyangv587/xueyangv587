import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
import Home from "./components/home/home.vue"
import NotFound from './components/home/NotFound.vue'
import product from './components/product/product.vue'
import Details from './components/product_details/Pdetails.vue'
Vue.use(Router)

export default new Router({
  routes:[
    {path:'/',component:HelloContainer},
    {path:"/home",component:Home},
    {path:"*",component:NotFound},
    {path:'/product',component:product},
    {path:'/details',component:Details}
  ]
})
