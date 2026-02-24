# splunk-home-soc-lab
# Home SOC Lab: Building Foundational Monitoring Skills with Splunk  
**Created during MSc programme — March 2024**

Simple virtual lab to apply Network Security and Incident Response concepts.

### What I Built
- Virtualised small corporate network using VMware  
- Installed Splunk Enterprise Free Edition on Windows  
- Enabled Windows Firewall logging (all profiles)  
- Ingested Windows Event Logs (EventCode 4688) + pfirewall.log  
- Used SPL to detect suspicious activity (repeated blocked outbound connections)  
- Created one simple dashboard for visualisation  

**Completed:** March 2024

### Quick Setup (30 minutes)

**1. Lab VMs (VMware)**  
- VM1: Windows 10/11 → Endpoint  
- VM2: Windows → Splunk Server

**2. On Endpoint VM** → Run `enable-windows-firewall-logging.ps1` as Administrator

**3. On Splunk Server** → Install Splunk Free + use `splunk-inputs.conf.example`

**4. Test the queries** from `example-spl-queries.txt`

**5. Import** `basic-dashboard.xml`

Perfect small project for CV / LinkedIn / MSc portfolio.

Made with ❤️ during MSc — March 2024

Perfect for CV, LinkedIn, or portfolio.  
Small, clean, and exactly matches my MSc project description.

Made with ❤️ during MSc
