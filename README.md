# Configure integrations for Log Analysis service

This module contains an example for how to use the [LogDNA Terraform Provider](https://docs.logdna.com/docs/terraform-provider) with IBM Cloud.

## Table of Contents

1. [Setup](##setup)
2. [Resources](##Resources)
3. [Variables](##Variables)

## Setup

In order to use the LogDNA provider, you must [retrieve your LogDNA Service Key](https://cloud.ibm.com/docs/Log-Analysis-with-LogDNA?topic=Log-Analysis-with-LogDNA-service_keys) from the GUI.

Add the `Demo1` and `Demo2` categories to your LogDNA instance

## Resources

This example creates:

- A LogDNA View

## Variables

Variable          | Type   | Description                                              | Default
----------------- | ------ | -------------------------------------------------------- |--------
ibm_region        | string | IBM Cloud region where the LogDNA instance is deployed   |
logdna_servicekey | string | LogDNA Service Key                                       |
logdna_endpoint   | string | LogDNA endpoint to use. Can be `public` or `private`     | `"public"`
