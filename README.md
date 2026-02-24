# splunk-home-soc-lab

# Home SOC Lab: Building Foundational Monitoring Skills with Splunk  
**Created during MSc programme**

Simple virtual lab to apply Network Security and Incident Response concepts.

### What I Built
- Virtualised small corporate network using VMware  
- Installed Splunk Enterprise Free Edition on Windows  
- Enabled Windows Firewall logging (all profiles)  
- Ingested Windows Event Logs (EventCode 4688) + pfirewall.log  
- Used SPL to detect suspicious activity (repeated blocked outbound connections)  
- Created one simple dashboard for visualisation  

### Quick Setup (30 minutes)

**1. Lab VMs (VMware)**
- VM1: Windows 10/11 → Endpoint (run the PowerShell script here)
- VM2: Windows → Splunk Server (install Splunk Enterprise Free)

**2. On Endpoint VM (as Administrator)**
- Double-click `enable-windows-firewall-logging.ps1` or run in PowerShell

**3. On Splunk Server**
- Install Splunk Enterprise Free
- Add data:
  - Windows Event Log → Security channel
  - Monitor file → `C:\Windows\System32\LogFiles\Firewall\pfirewall.log` (sourcetype = pfirewall.log)
- Or just copy `splunk-inputs.conf.example` content into `C:\Program Files\Splunk\etc\system\local\inputs.conf` and restart Splunk

**4. Open Splunk → Search & Reporting**
- Paste queries from `example-spl-queries.txt`
- Import the dashboard XML (Dashboards → Create New → Edit Source → paste)

**5. Test**
- From Endpoint: try `ping 8.8.8.8` or open browser to random sites → you will see blocks in Splunk

### Files in this repo
- `enable-windows-firewall-logging.ps1` → Run on endpoint
- `splunk-inputs.conf.example` → Splunk configuration
- `example-spl-queries.txt` → Ready to copy-paste
- `basic-dashboard.xml` → One simple dashboard

Perfect for CV, LinkedIn, or portfolio.  
Small, clean, and exactly matches my MSc project description.

Made with ❤️ during MSc
