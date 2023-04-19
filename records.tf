data "cloudflare_zones" "dan" {
  filter {
    name        = "gophers.ch"
    lookup_type = "contains"
    status      = "active"
  }
}

resource "cloudflare_record" "one" {
  zone_id = data.cloudflare_zones.dan.zones[0].id
  name    = "@"
  value   = "52.21.33.16"
  type    = "A"
  proxied = true
}

resource "cloudflare_record" "two" {
  zone_id = data.cloudflare_zones.dan.zones[0].id
  name    = "@"
  value   = "18.184.197.212"
  type    = "A"
  proxied = true
}

resource "cloudflare_record" "www" {
  zone_id = data.cloudflare_zones.dan.zones[0].id
  name    = "www"
  value   = "gophers.ch"
  type    = "CNAME"
  proxied = true
}
