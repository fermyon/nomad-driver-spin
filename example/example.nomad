job "spin-hello-world" {
  datacenters = ["dc1"]

  group "spin-hello-world" {
    network {
      port "http" {}
    }

    task "spin" {
      driver = "spin"

      env {
        RUST_LOG   = "spin=trace"
      }

      config {
        listen     = "${NOMAD_IP_http}:${NOMAD_PORT_http}"
        bindle_id  = "spin-hello-world/1.0.0"
        bindle_url = "http://bindle.local.fermyon.link:8088/v1"
        env = {
          FOO = "bar"
        }
      }
    }
  }
}
