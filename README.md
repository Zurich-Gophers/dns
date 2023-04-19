# gophers.ch cloudflare dns settings

This repository manages the `gophers.ch` domain settings using terraform cloud.

Run:
```bash
terraform plan
git commit
git push
```

You need a `.auto.tfvars` file structured like this:
```terraform
cf_api_token = "key"
```