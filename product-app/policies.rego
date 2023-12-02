package envoy.product.authz

import input.attributes.request.http

default allow = false

allow = response {
  http.method == "GET"
  glob.match("/products/*", ["/"], http.path)
  response := {
      "allowed": true
  }
}
