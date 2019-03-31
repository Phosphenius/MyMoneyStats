import Api from '@/services/Api'

export default {
    list() {
        return Api().get('tag/list')
    },
    create(entry) {
        return Api().post('tag/create', entry)
    }
}