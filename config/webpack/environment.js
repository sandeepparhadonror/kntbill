const { environment } = require('@rails/webpacker')
var webpack = require('webpack');
environment.plugins.append(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    jquery: 'jquery/src/jquery',
    Popper: 'popper.js/dist/popper',
    moment: 'moment/moment'
  })
)
module.exports = environment