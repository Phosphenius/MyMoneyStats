import TagService from "@/services/TagService";

export default {
    state: {
        tags: []
    },
    mutations: {
        ADD_TAG(state, tag) {
            state.tags.push(tag)
        },
        SET_TAGS(state, tags) {
            state.tags = tags
        }
    },
    actions: {
        createTag: async ({ commit }, tag) => {
            TagService.create(tag)
                .then((res) => {
                    commit('ADD_TAG', res.data)
                })
        },
        getTags: ({ commit }) => {
            TagService.list()
                .then((res) => {
                    commit('SET_TAGS', res.data)
                })
        }
    }
}