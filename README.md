# SOC-Home-Lab
Enterprise SOC home lab: ELK Stack 8.x SIEM, Sysmon telemetry, Atomic Red Team attack simulation, custom KQL detection rules, MITRE ATT&amp;CK mapped

# 🛡️ SOC Home Lab — Enterprise Security Operations Center Build

> A fully operational SOC environment built from scratch for hands-on
> security engineering practice.

![Status](https://img.shields.io/badge/Status-Complete-brightgreen)
![SIEM](https://img.shields.io/badge/SIEM-ELK%20Stack%208.x-blue)
![Rules](https://img.shields.io/badge/Detection%20Rules-5%20Custom%20KQL-green)
![ATT&CK](https://img.shields.io/badge/MITRE%20ATT%26CK-9%20Techniques-red)

---

## 🎯 What I Built

A three-VM isolated lab that replicates an enterprise SOC:

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
│  │  5 KQL Rules    │   │  PS Logging      │   │         │  │
│  └─────────────────┘   └──────────────────┘   └─────────┘  │
└─────────────────────────────────────────────────────────────┘
```

---

## 📋 Build Phases

| # | Phase              | Topic                                     | Status      |
|---|--------------------|-------------------------------------------|-------------|
| 1 | Infrastructure     | VM setup, VMnet2, static IPs              | ✅ Complete |
| 2 | ELK Stack          | Elasticsearch 8.x + Kibana + Fleet        | ✅ Complete |
| 3 | Endpoint Telemetry | Sysmon, Elastic Agent, PS logging         | ✅ Complete |
| 4 | Attack Simulation  | 8 ATT&CK techniques via Atomic Red Team   | ✅ Complete |
| 5 | Detection Eng.     | 5 custom KQL rules + SOC dashboard        | ✅ Complete |
| 6 | Threat Hunting/IR  | 3 hunts, Incident Report IR-2024-001      | ✅ Complete |

---

## 🔍 Detection Rules

| Rule File                            | Technique  | Tactic            | Severity   | Source        |
|--------------------------------------|------------|-------------------|------------|---------------|
| T1003.001-lsass-memory-access.kql    | T1003.001  | Credential Access | 🔴 High    | Sysmon EID 10 |
| T1059.001-suspicious-powershell.kql  | T1059.001  | Execution         | 🔴 High    | WinEvent 4104 |
| T1547.001-registry-persistence.kql   | T1547.001  | Persistence       | 🟠 Medium  | Sysmon 12/13  |
| T1105-lolbin-abuse.kql               | T1105/1218 | C&C/Defense Ev.   | 🔴 High    | Sysmon EID 1  |
| T1566.001-office-spawning-shell.kql  | T1566.001  | Initial Access    | 🔴 Critical| Sysmon EID 1  |

---

## 🗺️ MITRE ATT&CK Coverage

![ATT&CK Coverage Heatmap](mitre-coverage/attack-coverage-heatmap.png)

---

## 📸 Key Screenshots

### Alert Firing — LSASS Credential Dump Detected
![LSASS Alert](screenshots/phase5-detections/placeholder.png)

### SOC Overview Dashboard
![Dashboard](screenshots/phase6-hunting/placeholder.png)

---

## 📁 Repository Structure

See the full structure in [setup/README.md](setup/README.md)

---

## 🛠️ Skills Demonstrated

- **SIEM deployment** — ELK Stack 8.x: Elasticsearch, Kibana, Fleet, Elastic Defend
- **Endpoint telemetry** — Sysmon enterprise config, WinEvent collection, PS logging
- **Adversary emulation** — 8 MITRE ATT&CK techniques via Atomic Red Team
- **Detection engineering** — Custom KQL rules with false positive tuning
- **Threat hunting** — Beaconing, parent-child anomalies, credential access timeline
- **Incident response** — Formal IR with IOC extraction, timeline, remediation

---

## 🚀 Reproduce This Lab

Requirements: 16GB RAM, VMware Workstation Pro, ~200GB disk, 3–5 days.

---

*Built by [DIGunasekara](https://github.com/DIGunasekara) · [MIT License](https://github.com/DIGunasekara/SOC-Home-Lab/blob/main/LICENSE) · 2026*