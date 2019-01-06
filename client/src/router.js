import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'

Vue.use(Router)

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
      component: function () { 
        return import(/* webpackChunkName: "entries" */ './views/Entries.vue')
      }
    },
    {
      path: '/tags',
      name: 'tags',
      component: function () { 
        return import(/* webpackChunkName: "tags" */ './views/Tags.vue')
      }
    },
    {
      path: '*',
      name: '404',
      component: function () {
        return import(/* webpackChunkName: "404" */ './views/NotFound.vue')
      }
    }
  ]
})
