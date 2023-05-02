import request from '@/utils/request'

// 查询系统通告列表
export function listAnnouncement(query) {
  return request({
    url: '/news/announcement/list',
    method: 'get',
    params: query
  })
}

// 查询系统通告详细
export function getAnnouncement(id) {
  return request({
    url: '/news/announcement/' + id,
    method: 'get'
  })
}

// 新增系统通告
export function addAnnouncement(data) {
  return request({
    url: '/news/announcement',
    method: 'post',
    data: data
  })
}

// 修改系统通告
export function updateAnnouncement(data) {
  return request({
    url: '/news/announcement',
    method: 'put',
    data: data
  })
}

// 删除系统通告
export function delAnnouncement(id) {
  return request({
    url: '/news/announcement/' + id,
    method: 'delete'
  })
}
