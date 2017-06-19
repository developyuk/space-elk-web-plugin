const deye = {
  baseUrl: 'http://192.168.1.2',
  id: deye.id.length ? deye.id : '',
}

exports.baseUrl = deye.baseUrl;
exports.iframeURL = `${deye.baseUrl}/${deye.id}/tx`;
exports.namespace = `deye-space-elk`;
