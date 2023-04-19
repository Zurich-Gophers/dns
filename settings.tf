# cf-terraforming generate --resource-type cloudflare_zone_settings_override --zone "ZONE_ID" --email "EMAIL" --token "TOKEN"

resource "cloudflare_zone_settings_override" "settings" {

# https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/zone_settings_override
# all the commented out settings are either read_only or do not allow me to edit them

  zone_id = data.cloudflare_zones.dan.zones[0].id
  settings {
    always_online             = "on"
    always_use_https          = "on"
    automatic_https_rewrites  = "on"
    brotli                    = "on"
    browser_cache_ttl         = 14400
    browser_check             = "on"
    cache_level               = "aggressive"
    challenge_ttl             = 1800
    cname_flattening          = "flatten_at_root"
    development_mode          = "off"
    early_hints               = "off"
    email_obfuscation         = "on"
    # filter_logs_to_cloudflare = "off"
    hotlink_protection        = "off"
    # http2                     = "on"
    http3                     = "on"
    ip_geolocation            = "on"
    ipv6                      = "on"
    # log_to_cloudflare         = "on"
    max_upload                = 100
    min_tls_version           = "1.2"
    minify {
      css  = "off"
      html = "off"
      js   = "off"
    }
    # mirage                      = "off"
    opportunistic_encryption    = "on"
    opportunistic_onion         = "on"
    # orange_to_orange            = "off"
    # origin_error_page_pass_thru = "off"
    # polish                      = "off"
    # prefetch_preload            = "off"
    privacy_pass                = "on"
    # proxy_read_timeout          = "100"
    pseudo_ipv4                 = "off"
    # response_buffering          = "off"
    rocket_loader               = "off"
    security_header {
      enabled            = true
      include_subdomains = true
      max_age            = 15552000
      nosniff            = true
      preload            = true
    }
    security_level              = "medium"
    server_side_exclude         = "on"
    # sort_query_string_for_cache = "off"
    ssl                         = "flexible"
    tls_1_3                     = "on"
    tls_client_auth             = "off"
    # true_client_ip_header       = "off"
    # visitor_ip                  = "on"
    # waf                         = "off"
    # webp                        = "off"
    websockets                  = "on"
    zero_rtt                    = "off"
  }
}