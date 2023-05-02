import request from '@/utils/request'

// 查询用户通告阅读标记列表
export function listSend(query) {
  return request({
    url: '/news/send/list',
    method: 'get',
    params: query
  })
}

// 查询用户通告阅读标记详细
export function getSend(id) {
  return request({
    url: '/news/send/' + id,
    method: 'get'
  })
}

// 新增用户通告阅读标记
export function addSend(data) {
  return request({
    url: '/news/send',
    method: 'post',
    data: data
  })
}

// 修改用户通告阅读标记
export function updateSend(data) {
  return request({
    url: '/news/send',
    method: 'put',
    data: data
  })
}

// 删除用户通告阅读标记
export function delSend(id) {
  return request({
    url: '/news/send/' + id,
    method: 'delete'
  })
}
