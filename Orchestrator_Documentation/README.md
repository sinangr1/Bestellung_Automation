# Orchestrator Documentation

This folder documents the UiPath Orchestrator setup for the Bestellung Automation project.

## Process
- Process Name: Bestellung_Automation
- Package Name: Bestellung_Automation
- Entry Point: Main.xaml

## Queue
- Queue Name: BestellungQueue
- Purpose: Stores incoming order data from Excel attachments.

## Assets
- inputFolderPath
- outlookAccount
- processedFolderPath

Sensitive data such as passwords, tokens and credentials are not included in this repository.

## Trigger
- Trigger Type: Time Trigger
- Frequency: Every 5 minutes
- Purpose: Starts the robot to check the Outlook mailbox.
