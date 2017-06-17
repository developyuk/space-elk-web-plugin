# Space Elk Web plugin
Crowd-funding web plugin.

This is a javascript attachment to provide interactive GUI for Space Elk on fundraiser domain

## How to use
    coming soon

## Frequently Asked Question (FAQ)
    coming soon

## Contribute this project
### Start develop
    $ git clone https://github.com/developyuk/space-elk-web-plugin.git
    $ ./docker-cli.sh build down up

use `CTRL+C`to exit terminal `STDOUT`

### Todo
- [x] babeljs + module loader
- [ ] `node-sass` to compile sass file
- [ ] create icon + icon action
- [ ] create iframe + iframe authentication

## `docker-cli.sh` Command Line Interface (CLI)
CLI | Description
----|------------
`$ ./docker-cli.sh build` | Build docker image
`$ ./docker-cli.sh up`    | Run container from builded image
`$ ./docker-cli.sh logs`  | Get logs from running container
`$ ./docker-cli.sh login` | Login to running container
`$ ./docker-cli.sh down`  | Stop running container
