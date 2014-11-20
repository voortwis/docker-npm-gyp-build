# docker-npm-build
This is a base image for building [node.js][node.js] [npm][npm] repositories
that need node-gyp.

## Purpose
This docker image builds on top of the [npm-build][npm-build] image, but adds
`python`, `make`, and `gcc` for node-gyp compilation.

## Usage
See the [npm-build][npm-build] for examples, this is executed in the same way.

[node.js]: http://nodejs.org/
[npm]: https://www.npmjs.org/
[npm-build]: https://github.com/nubs/docker-npm-build
