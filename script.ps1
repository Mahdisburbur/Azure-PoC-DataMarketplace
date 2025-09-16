# PowerShell script to test connectivity to Azure Blob Storage
param (
    [string]$storageAccountName = "dmpocstorageacct",
    [string]$containerName = "testcontainer"
)

Write-Host "Connecting to Azure..."
Connect-AzAccount

Write-Host "Creating storage container if not exists..."
$ctx = (Get-AzStorageAccount -ResourceGroupName "rg-data-marketplace-poc" -Name $storageAccountName).Context
New-AzStorageContainer -Name $containerName -Context $ctx -ErrorAction SilentlyContinue

Write-Host "Uploading sample file..."
Set-Content -Path sample.txt -Value "Hello from PoC Azure Blob Storage"
Set-AzStorageBlobContent -File "sample.txt" -Container $containerName -Blob "sample.txt" -Context $ctx

Write-Host "File uploaded successfully!"
