module.exports = {
  entry: './src/js/app.js',
  output: {
    path: '/project/dist',
    filename: 'app.bundle.js',
  },
  module: {
    loaders: [{
      test: /\.js$/,
      exclude: /node_modules/,
      loader: 'babel-loader'
    }]
  }
}
