import Vue from 'vue'
import Router from 'vue-router'
import Home from './components/home.vue'
import Creator from './components/questionCreator.vue'

Vue.use(Router)

export default new Router({
  //base: process.env.BASE_URL,
  mode : 'history',
  routes: [
    // {
    //   path: '/home',
    //   name: 'questionaire',
    //   component: Home
    // },
    {
      path: '/edit/:id',
      component: Creator
    }
  ]
})
