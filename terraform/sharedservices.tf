module "sharedsvcs" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "edwardjlane22+shrdsvcs@gmail.com"
    AccountName               = "ed-shrdsvcs-aft-test"
    ManagedOrganizationalUnit = "Shared Services"
    SSOUserEmail              = "edwardjlane22+shrdsvcs@gmail.com"
    SSOUserFirstName          = "ed-shrdsvcs"
    SSOUserLastName           = "shrdsvcs-test"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Ed Lane"
    change_reason       = "Testing OU creation"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "shrdsvcs"
}