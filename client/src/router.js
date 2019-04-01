import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Entries from './views/Entries.vue'
import Tags from './views/Tags.vue'


Vue.use(Router)

// More details: https://github.com/vuematerial/vue-material/issues/1977
Vue.component('router-link', Vue.options.components.RouterLink)
Vue.component('router-view', Vue.options.components.RouterView)

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/entries',
      name: 'entries',
      component: Entries
    },
    {
      path: '/tags',
      name: 'tags',
      component: Tags
    },
    {
      path: '*',
      redirect: '/'
    }
  ]
})
