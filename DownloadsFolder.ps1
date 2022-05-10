# Automatically remove items from Downloads folders 60+ days old

Get-ChildItem -Path “C:\Users\Administrator.ADATUM\Downloads” -Recurse | Where-Object {($_.LastWriteTime – lt (Get-Date).AddDays(-60))} | Remove-Item
