const path = require('path');

module.exports = {
    entry: {
      client: './build.hxml'
    },
    devServer: {
        contentBase: './bin',
        overlay: true
	},
    output: {
        path: path.resolve(__dirname, 'bin'),
        filename: "main.js"
    },
 	module: {
        rules: [
            // Have a rule that explains hxml files should use `haxe-loader`.
            {
                test: /\.hxml$/,
                loader: 'haxe-loader',
            }
        ]
    }
};