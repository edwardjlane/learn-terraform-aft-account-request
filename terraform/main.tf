module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ed-sandbox-aft@ccdemos.com"
    AccountName               = "ed-sandbox-aft"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "ed-sandbox-aft@ccdemos.com"
    SSOUserFirstName          = "ed-Sandbox"
    SSOUserLastName           = "ed-AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
    "Edward"          = "LANE"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
