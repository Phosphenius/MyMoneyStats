import Api from '@/services/Api'

export default {
  list () {
    return Api().get(`project`)
  },
  create (project) {
    return Api().post(`project/create`, project)
  },
  update (project) {
    return Api().put(`project/${project.id}`, project)
  },
  delete (ProjectId) {
    return Api().delete(`project/${ProjectId}`)
  }
}