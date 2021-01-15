##############################################################################
# Account Variables
##############################################################################

variable ibm_region {
    description = "IBM Cloud region where the LogDNA instance is deployed"
    type        = string
}


variable logdna_servicekey {
    description = "LogDNA Service Key"
    type        = string
}

variable logdna_endpoint {
    description = "LogDNA endpoint to use. Can be `public` or `private`"
    type        = string
    default     = "public"
}

##############################################################################