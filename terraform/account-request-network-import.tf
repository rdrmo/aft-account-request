# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "shared_network_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "rdrmo+workshop-sharednetwork@amazon.com"
    AccountName  = "Shared Network"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Infrastructure"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "rdrmo@amazon.com"
    SSOUserFirstName = "Rodrigo"
    SSOUserLastName  = "Monteiro"
  }

  account_tags = {
    "ABC:Owner"       = "rdrmo@amazon.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "Rodrigo Monteiro"
    change_reason       = "testing the account vending process for import"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "network-customizations"
}
