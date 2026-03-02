# SOC-Home-Lab
Enterprise SOC home lab: ELK Stack 8.x SIEM, Sysmon telemetry, Atomic Red Team attack simulation, custom KQL detection rules, MITRE ATT&amp;CK mapped

# 🛡️ SOC Home Lab — Enterprise Security Operations Center Build

> An enterprise SOC environment being built from scratch for hands-on security engineering practice.

![Status](https://img.shields.io/badge/Status-Phase%203%20In%20Progress-yellow)
![SIEM](https://img.shields.io/badge/SIEM-ELK%20Stack%208.x-blue)
![Rules](https://img.shields.io/badge/Detection%20Rules-Planned-lightgrey)
![ATT&CK](https://img.shields.io/badge/MITRE%20ATT%26CK-Planned-lightgrey)

---

## 🎯 What I Built

This lab consists of three virtual machines that simulate an enterprise SOC environment:

| Component    | Role                  | Technology                          | IP             |
|--------------|-----------------------|-------------------------------------|----------------|
| ELK-Server   | SIEM / Log Analysis   | Elasticsearch 8.x + Kibana + Fleet  | 192.168.10.30  |
| Win10-Target | Monitored Endpoint    | Windows 10 Pro + Sysmon + Agent     | 192.168.10.20  |
| Kali-Attacker| Adversary Simulation  | Kali Linux + Atomic Red Team        | 192.168.10.10  |

---

## 🏗️ Architecture

```
┌─────────────────────────────────────────────────────────────┐
│          VMnet2 (192.168.10.0/24) — Isolated Network        │
│                                                             │
│  ┌─────────────────┐   ┌──────────────────┐   ┌─────────┐  │
│  │   ELK-Server    │   │  Win10-Target    │   │  Kali   │  │
│  │  192.168.10.30  │◄──│  192.168.10.20   │   │  .10    │  │
│  │  Kibana  :5601  │   │  Elastic Agent   │   │  ART    │  │
│  │  Fleet   :8220  │   │  Sysmon          │   │         │  │
│  │                 │   │  PS Logging      │   │         │  │
│  └─────────────────┘   └──────────────────┘   └─────────┘  │
└─────────────────────────────────────────────────────────────┘
```

---

## 📋 Build Phases

| # | Phase              | Topic                                     | Status |
|---|--------------------|-------------------------------------------|--------|
| 1 | Infrastructure     | VM setup, VMnet2, static IPs              | ✅ Complete |
| 2 | ELK Stack          | Elasticsearch 8.x + Kibana + Fleet        | ✅ Complete |
| 3 | Endpoint Telemetry | Sysmon, Elastic Agent, PS logging         | 🟡 In Progress |
| 4 | Attack Simulation  | 8 ATT&CK techniques via Atomic Red Team   | ⚪ Not Started |
| 5 | Detection Eng.     | 5 custom KQL rules + SOC dashboard        | ⚪ Not Started |
| 6 | Threat Hunting/IR  | 3 hunts, Incident Report IR-2024-001      | ⚪ Not Started |

---

## 🔍 Detection Rules

> Detection engineering phase not started yet.  
> Custom KQL rules will be added in Phase 5.

| Rule File | Technique | Tactic | Severity | Source |
|-----------|-----------|--------|----------|--------|
| *To be created in Phase 5* | - | - | - | - |

---

## 🗺️ MITRE ATT&CK Coverage

![ATT&CK Coverage Heatmap](mitre-coverage/placeholder.png)

---

## 📸 Key Screenshots

### Detection Alerts (To Be Implemented in Phase 5)
![LSASS Alert](screenshots/phase5-detections/placeholder.png)

### SOC Dashboard (Planned)
![Dashboard](screenshots/phase6-hunting/placeholder.png)
---

## 📁 Repository Structure

See the full structure in [setup/README.md](setup/README.md)

---

## 🛠️ Skills Demonstrated (In Progress)

- SIEM Deployment — ELK Stack 8.x installation and configuration
- Fleet Server setup and agent policy configuration
- Enterprise network isolation with VMware
- Endpoint telemetry configuration (Sysmon + Elastic Agent — in progress)
- Detection engineering (planned for Phase 5)
- Threat hunting and incident response (planned for Phase 6)

---

## 🚀 Reproduce This Lab

> Current Stage: Phase 3 — Endpoint Telemetry  
> Progress: Windows Agent Policy created in Kibana.  
> Sysmon installation and Elastic Agent enrollment in progress.

---

*Built by [DIGunasekara](https://github.com/DIGunasekara) · [MIT License](https://github.com/DIGunasekara/SOC-Home-Lab/blob/main/LICENSE) · 2026*