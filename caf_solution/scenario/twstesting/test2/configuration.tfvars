landingzone = {
  backend_type        = "azurerm"
  level               = "level1"
  key                 = "testing_level1_storage"
  global_settings_key = "launchpad"
  tfstates = {
    launchpad = {
      tfstate = "caf_launchpad.tfstate"
      level   = "lower"
    }
    testing_level1 = {
      tfstate = "testing_level1.tfstate"
    }
  }
}

storage_accounts = {
  nsgflogs = {
    name = "nsglogs"
    resource_group = {
      key    = "evh_examples"
      lz_key = "testing_level1"

    }
    account_kind              = "BlobStorage"
    account_tier              = "Standard"
    shared_access_key_enabled = false
    account_replication_type  = "LRS"
  }
}
