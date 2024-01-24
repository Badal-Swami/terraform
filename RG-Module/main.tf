module "rgmodule" {
  source = "github.com/Badal-Swami/terraform.git/ResourceGroup"
  # Other module inputs if needed

  rg_name = {
  "badal-rg" = {
    "name"     = "badal-rg"
    "location" = "east us"
  }
}
}
