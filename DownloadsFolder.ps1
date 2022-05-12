# Automatically remove items older than 60 days from the Download Folder

Get-ChildItem -Path “C:\Users\Administrator.ADATUM\Downloads” -Recurse | Where-Object {($_.LastWriteTime –gt (Get-Date).AddDays(-60))} | Remove-Item
