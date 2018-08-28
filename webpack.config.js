const webpack = require('webpack');
const babelpolyfill = require("babel-polyfill");
var path = require('path');
var pkg = require('./package.json');
module.exports = {
    entry: './src/example.js',
    target:"node",
    output: {
        filename: '[name].js',
        path: path.resolve(__dirname, 'dist'),
        library: pkg.name.replace(/-/g,"_"),
        libraryTarget: "umd", 
    },
    node: {
        casper: "empty"
    },
    devtool: 'source-map',
    module: {
        loaders: [{
            test: /\.jsx?$/,
            exclude: /node_modules|dist/,
            loader: 'babel-loader'
        }]
    }
}
