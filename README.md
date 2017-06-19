# Space Elk Web plugin
Crowd-funding web plugin.

This is a javascript attachment to provide interactive GUI for Space Elk on fundraiser domain

## How to use
    coming soon

### Build from source
    $ git clone https://github.com/developyuk/space-elk-web-plugin.git
    $ ./docker-cli.sh build
    $ ./docker-cli.sh down up exec "npm run build" down

go to `dist` folder

## Frequently Asked Question (FAQ)
    coming soon

## Contribute this project
### Start develop
    $ git clone https://github.com/developyuk/space-elk-web-plugin.git
    $ ./docker-cli.sh build
    $ ./docker-cli.sh down up logs

then update source file on `src` folder. Docker will try to compile source file when updating source

### Todo
- [x] babeljs + module loader
- [x] `node-sass` to compile sass file
- [x] create plugin
- [ ] update plugin design

## `docker-cli.sh` Command Line Interface (CLI)
CLI | Description
----|------------
`$ ./docker-cli.sh build` | Build docker image
`$ ./docker-cli.sh up`    | Run container from build image
`$ ./docker-cli.sh logs`  | View logs from running container
`$ ./docker-cli.sh login` | Login to running container
`$ ./docker-cli.sh down`  | Stop and remove running container
`$ ./docker-cli.sh exec "SYNTAX"`  | Run SYNTAX inside container
