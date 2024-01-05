#!/bin/bash
echo "Running Your Code Analysis test using terraform-compliance"
terraform-compliance $PLUGIN_OPTION -p plan.out -f features
