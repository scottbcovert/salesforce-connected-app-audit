# Salesforce Connected App Audit

Audit your Salesforce org's connected applications

## Background

In response to recent security concerns regarding the Salesforce vishing hack by UNC6040, detailed in [this Google blog post](https://cloud.google.com/blog/topics/threat-intelligence/voice-phishing-data-extortion), Salesforce announced a [series of upcoming changes](https://help.salesforce.com/s/articleView?id=005132365&type=1) regarding how organizations will authorize, install, and use connected apps.

Specifically, the documentation makes a distinction between 'installed' and 'authorized' connected apps.

1.  **Authorized Connected Applications**: These are applications that have been granted access to the Salesforce org by a user, typically through an OAuth flow. At the individual level, they appear in the 'OAuth Apps' section of 'Advanced User Details' and at the organization level they appear within the 'Connected Apps OAuth Usage' section of Setup. While authorized, they may not be fully "installed" or managed directly within the Salesforce setup.

2.  **Installed Connected Applications**: These are applications that have been formally installed into the Salesforce org, either via a managed package, by creating a Connected App directly in the org, or through manual installation from the 'Connected Apps OAuth Usage' section in Setup. These applications are typically managed by administrators and have broader access and configuration options within the org's setup.

This repository provides a simple Anonymous Apex script that can be used by admins to perform a basic audit of their org's current landscape. It identifies the number and names of all authorized connected applications as well as the number and names of all installed connected applications.

Please note that this script does not provide details on the successor to Connected Applications, External Client Applications.

In addition to this script, admins are encouraged to follow the instructions from Salesforce's help documentation linked above.

For additional help on performing a more detailed audit, feel free to [send a note](mailto:scott@nomorebackdoor.com) or fill out the form at [nomorebackdoor.com](https://nomorebackdoor.com)