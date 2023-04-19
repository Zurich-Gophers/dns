resource "cloudflare_argo" "argo" {
  zone_id        = data.cloudflare_zones.dan.zones[0].id
  tiered_caching = "on"
  # smart_routing  = "off" # https://community.cloudflare.com/t/cant-to-edit-argo-smarting-routing-via-api-token/318283
}