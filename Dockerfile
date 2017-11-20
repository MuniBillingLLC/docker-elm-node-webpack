FROM codesimple/elm:0.18

# Install Webpack
RUN npm install webpack -g

WORKDIR /usr/app

RUN mkdir -p /usr/app/src /usr/app/build

RUN npm install elm-hot-loader elm-webpack-loader

COPY ./webpack.config.js webpack.config.js

ENTRYPOINT []
CMD ['webpack', 'run', '--watch']
