

##############################################################################
# Terraform Providers
# This block is required for every module in Terraform 0.13.x
##############################################################################

terraform {
  required_providers {
    logdna = {
      source = "logdna/logdna"
      version = "1.0.0"
    }
  }
}

##############################################################################


##############################################################################
# LogDNA Provider
##############################################################################

provider logdna {
  servicekey = var.logdna_servicekey
  url        = "https://${var.logdna_endpoint == "public" ? "api" : "api.private" }.${var.ibm_region}.logging.cloud.ibm.com"
}

##############################################################################