data "cloudflare_zones" "gophers" {
  filter {
    name        = "gophers.ch"
    lookup_type = "contains"
    status      = "active"
  }
}

resource "cloudflare_record" "one" {
  zone_id = data.cloudflare_zones.gophers.zones[0].id
  name    = "@"
  value   = "185.199.108.153"
  type    = "A"
  proxied = false
}

resource "cloudflare_record" "two" {
  zone_id = data.cloudflare_zones.gophers.zones[0].id
  name    = "@"
  value   = "185.199.109.153"
  type    = "A"
  proxied = false
}
resource "cloudflare_record" "three" {
  zone_id = data.cloudflare_zones.gophers.zones[0].id
  name    = "@"
  value   = "185.199.110.153"
  type    = "A"
  proxied = false
}
resource "cloudflare_record" "four" {
  zone_id = data.cloudflare_zones.gophers.zones[0].id
  name    = "@"
  value   = "185.199.111.153"
  type    = "A"
  proxied = false
}
resource "cloudflare_record" "www" {
  zone_id = data.cloudflare_zones.gophers.zones[0].id
  name    = "www"
  value   = "zurich-gophers.github.io"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "zh" {
  zone_id = data.cloudflare_zones.gophers.zones[0].id
  name    = "zh"
  value   = "zurich-gophers.github.io"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "github" {
  zone_id = data.cloudflare_zones.gophers.zones[0].id
  name    = "_github-challenge-Zurich-Gophers-org"
  value   = "f3558adb1b"
  type    = "TXT"
}
