// Axios & Echo global
require('./bootstrap');

/* Core */
import Vue from 'vue'

import 'bootstrap';
import { BootstrapVue, BootstrapVueIcons } from 'bootstrap-vue'
// import 'bootstrap/dist/css/bootstrap.css'
// import 'bootstrap-vue/dist/bootstrap-vue.css'

import VueApexCharts from 'vue-apexcharts'
import Buefy from 'buefy'

/* Vue. Main component */
import App from './components/home.vue'
import Questionaire from './components/questionCreator.vue'
import questionsList from './components/listQuestions.vue'
import competencyCreator from './components/competencyCreator.vue'

/* Router */
//import router from './router'

Vue.config.productionTip = false

/* This is main entry point */

Vue.use(BootstrapVue)
Vue.use(BootstrapVueIcons)
Vue.use(Buefy)
Vue.use(VueApexCharts)

/* Main component */
Vue.component('home', App)
Vue.component('questionaire', Questionaire)
Vue.component('question-list', questionsList)
Vue.component('competency-creator', competencyCreator)
Vue.component('apexchart', VueApexCharts)

console.log("In app.js");
new Vue({
  //render: h => h(App),
}).$mount('#app')


