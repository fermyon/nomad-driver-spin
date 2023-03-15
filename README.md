# Nomad Spin Driver Plugin

[Nomad task driver plugins](https://www.nomadproject.io/docs/drivers/index.html).

Requirements
-------------------

- [Nomad](https://www.nomadproject.io/downloads.html) v0.9+
- [Go](https://golang.org/doc/install) v1.11 or later (to build the plugin)

Building the Plugin
-------------------

```sh
$ make build
```

## Setup Bindle Server
Clone Fermyon fork of Bindle and checkout tag 0.8.2

```sh
$ git clone https://github.com/fermyon/bindle
$ cd bindle
$ git checkout tags/0.8.2
```

Make and run Bindle server

```sh
$ make
$ target/debug/bindle-server --unauthenticated
```

Bindle images can now be pushed to this server

```sh
$ spin bindle push --bindle-server http://localhost:8081/v1

## Deploying Driver Plugins in Nomad
Build and plugin and start Nomad server.

```sh
$ make build
$ nomad agent -dev -config=./example/agent.hcl -plugin-dir=$PWD
```


Modify the example/example.nomad file to use the appropriate Bindle server and Bindle image id, then run the job in Nomad.

```sh
# in another shell
$ nomad run ./example/example.nomad
$ nomad logs <ALLOCATION ID>
```
