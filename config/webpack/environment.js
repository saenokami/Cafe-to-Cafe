// config/webpack/environment.js

const { environment } = require('@rails/webpacker');
const webpack = require('webpack');

// ProvidePluginの設定が適切に行われていることを確認します
environment.plugins.prepend(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    Popper: ['popper.js', 'default']
  })
);

module.exports = environment;
