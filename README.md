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

## Deploying Driver Plugins in Nomad

```sh
$ make build
$ nomad agent -dev -config=./example/agent.hcl -plugin-dir=$PWD

# in another shell
$ nomad run ./example/example.nomad
$ nomad logs <ALLOCATION ID>
```
