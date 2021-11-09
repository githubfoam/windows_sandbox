FROM microsoft/iis

# install ASP.NET 4.5
RUN dism /online /enable-feature /all /featurename:IIS-ASPNET45 /NoRestart

# enable windows eventlog
RUN powershell.exe -command Set-ItemProperty HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application Start 1