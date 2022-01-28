module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "edwardjlane22+sandbox@gmail.com"
    AccountName               = "ed-sandbox-aft-test"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "edwardjlane22+sandbox@gmail.com"
    SSOUserFirstName          = "ed-aft"
    SSOUserLastName           = "sandbox-test"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
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