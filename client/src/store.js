import Vue from 'vue'
import Vuex from 'vuex'

import EntryService from "@/services/AccoutingEntryService";


Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    entries: [],
    tags: []
  },
  mutations: {
    ADD_ENTRY (state, entry) {
      state.entries.push(entry)
    },
    SET_ENTRIES (state, entries) {
      state.entries = entries
    }
  },
  actions: {
    createEntry: async ({ commit }, entry) => {
      EntryService.create(entry)
        .then((res) => {
          commit('ADD_ENTRY', res.data)
        })
    },
    getEntries: ({ commit }) => {
      EntryService.list()
        .then((res) => {
          commit('SET_ENTRIES', res.data)
        })
    }
  },
  modules: {

  }
})
