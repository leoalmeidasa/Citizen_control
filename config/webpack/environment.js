// config/webpack/environment.js
const { environment } = require('@rails/webpacker')
const globImporter = require('node-sass-glob-importer');

environment
    .loaders
    .get('sass')
    .use
    .find(item => item.loader === 'sass-loader')
    .options = { sassOptions: { importer: globImporter() } }; // <-- this!

const webpack = require('webpack')

environment.plugins.append('Provide', new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    jquery: 'jquery',
}),
    // Adds window.$ = require('jquery')
    environment.loaders.append('jquery', {
        test: require.resolve('jquery'),
        use: [
            {
                loader: 'expose-loader',
                options: '$',
            },
        ],
    }))

module.exports = environment
