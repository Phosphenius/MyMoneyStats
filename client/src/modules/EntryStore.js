import EntryService from "@/services/AccoutingEntryService";

export default {
    state: {
        entries: []
    },
    mutations: {
        ADD_ENTRY(state, entry) {
            state.entries.push(entry)
        },
        SET_ENTRIES(state, entries) {
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
    }
}