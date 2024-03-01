
**Project Title**: Automated Service Checker

**Description:**
The Automated Service Checker is a project aimed at automating the monitoring and management of services on a system. This tool runs at regular intervals (every 15 minutes by default) to check the status of specified services. If any service is found to be in an incorrect state (e.g., stopped when it should be running), the tool will attempt to fix the issue automatically and log the details. The powershell script, the .csv file and the log output file have been attached for reference.

**Working:**

**Service Status Checking:**
The script begins by retrieving a list of services to monitor from a configuration file or predefined list.
It then checks the status of each service using PowerShell cmdlets, such as Get-Service.

**Error Detection and Correction:**
If a service is found to be in an incorrect state (e.g., stopped when it should be running), the script attempts to rectify the issue automatically.
This could involve restarting the service, changing its startup type, or performing any other necessary actions to restore it to the correct state.

**Logging and Notification:**
The script logs the details of each service check, including the timestamp, service name, current status, and any actions taken to fix issues.

**Future Enhancements:**
While the current version of the project provides basic functionality for monitoring and managing services, several enhancements could be implemented in future iterations to make it more intermediate or advanced. Some potential improvements include:

Integration with databases for storing and querying historical service status data.
Utilization of PowerShell remoting to monitor services on remote systems.
Implementation of more advanced error handling and recovery mechanisms.
Creation of a web-based dashboard for visualizing service status and trends.

**Results:**
The Automated Service Checker project simplifies the task of monitoring and managing services on a system by automating routine checks and corrective actions. By running this tool at regular intervals, administrators can ensure that critical services are always functioning as expected, minimizing downtime and ensuring the smooth operation of their systems. Additionally, the email notifications provide administrators with timely updates on the status of monitored services, enabling them to take proactive measures to address any issues that arise.
