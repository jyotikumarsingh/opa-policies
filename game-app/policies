package envoy.authz

import input.attributes.request.http

default allow = false

allow = response {
  http.method == "GET"
  glob.match("/games/*", ["/"], http.path)
  response := {
      "allowed": true
  }
}
