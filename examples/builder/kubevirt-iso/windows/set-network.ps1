# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Get current network
$profile = Get-NetConnectionProfile

# Set network to Private from Public (required to enable WinRM)
Set-NetConnectionProfile -InterfaceIndex $profile.InterfaceIndex -NetworkCategory Private
