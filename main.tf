##############################################################################
# Create Example View
# This code is directly from the LogDNA Terraform Provider Documentation
##############################################################################

resource logdna_view example {
  apps       = ["app1", "app2"]
  categories = ["Demo1", "Demo2"]
  hosts      = ["host1"]
  levels     = ["warn", "error"]
  name       = "Terraform View-specific Alert Example"
  query      = "my query"
  tags       = ["tag1", "tag2"]

  email_channel {
    emails          = ["test@logdna.com"]
    immediate       = "false"
    operator        = "absence"
    terminal        = "true"
    timezone        = "Pacific/Samoa"
    triggerinterval = "15m"
    triggerlimit    = 15
  }

  pagerduty_channel {
    key             = "Your PagerDuty service key goes here"
    terminal        = "true"
    triggerinterval = "15m"
    triggerlimit    = 15
  }

  webhook_channel {
    bodytemplate = jsonencode({
      message = "Alerts from {{name}}"
    })
    headers = {
      "Authentication" = "auth_header_value"
      "HeaderTwo"      = "ValueTwo"
    }
    immediate       = "false"
    method          = "post"
    terminal        = "true"
    triggerinterval = "15m"
    triggerlimit    = 15
    url             = "https://yourwebhook/endpoint"
  }
}

##############################################################################