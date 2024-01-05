#!/bin/bash

# Run terraform-compliance tool with specified arguments:
# - `$PLUGIN_ARGS`: Additional arguments or options provided when running the checks.
# - `-p plan.out`: Specify the Terraform plan file as input for compliance checks.
# - `-f features`: Specify the directory containing the compliance feature files.

terraform-compliance $PLUGIN_ARGS -p plan.out -f features
