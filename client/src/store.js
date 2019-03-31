import Vue from 'vue'
import Vuex from 'vuex'

import TagStore from "@/modules/TagStore"
import EntryStore from './modules/EntryStore';


Vue.use(Vuex)

export default new Vuex.Store({
  state: {
  },
  mutations: {
  },
  actions: {
  },
  modules: {
    entry: EntryStore,
    tag: TagStore
  }
})
