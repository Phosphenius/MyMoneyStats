import Api from '@/services/Api'

export default {
    list() {
        return Api().get('entry/list')
    },
    create(entry) {
        return Api().post('entry/create', entry)
    }
}