# 🚀 VMware-style VM Migration to Google Cloud (with Nginx + MySQL)

This project simulates a real-world cloud migration scenario from a legacy VM environment (like VMware) to Google Cloud Platform (GCP), while maintaining service uptime and stability.

✅ **Services used**: CentOS VM, Nginx, MariaDB  
✅ **Tools**: GCP Compute Engine, Snapshots  
✅ **Goal**: Demonstrate a near-zero-downtime migration of a critical service

---

## 🛠️ Project Overview

We simulate the migration of a RedHat-based server (CentOS) hosting a critical service:  
- A web server (**Nginx**)  
- A database (**MariaDB** / MySQL-compatible)

> The entire service is preserved and migrated using a GCP VM snapshot without reconfiguration.

---

## 📦 Project Structure

```text
vmware-migration-gcp/
├── scripts/
│   └── install_services.sh       # Auto-installs Nginx + MariaDB
├── images/
│   ├── vm-running.png
│   ├── nginx-running.png
│   ├── mysql-running.png
│   ├── firewall-mysql.png
│   ├── snapshot-created.png
│   ├── restored-vm.png
│   └── uptime-success.png
├── README.md
```

---

## ✅ Steps

### 1. Create CentOS VM on GCP

- Name: `rhel-migration-demo`
- Region: `europe-west2`
- Image: CentOS 7
- Firewall: ✅ Allow HTTP traffic

📸 `images/vm-running.png`

---

### 2. Install Nginx + MariaDB

```bash
bash scripts/install_services.sh
```

📸 `images/nginx-running.png`  
📸 `images/mysql-running.png`

---

### 3. Open MySQL Port (3306) via Firewall

Create a firewall rule in GCP VPC to allow TCP port `3306`.

📸 `images/firewall-mysql.png`

---

### 4. Create a Snapshot

Take a disk snapshot of the running VM.

📸 `images/snapshot-created.png`

---

### 5. Launch a New VM from the Snapshot

Create a second VM using the snapshot as boot disk:

- Name: `rhel-migration-restored`

📸 `images/restored-vm.png`

---

### 6. Test the Restored VM

- Nginx is accessible at: `http://<new-vm-ip>`
- MySQL is already running
- No reinstallation/config needed

📸 `images/uptime-success.png`

---

## 🎯 What This Demonstrates

✅ Legacy VM compatibility  
✅ Cloud migration with no downtime  
✅ Stability and service continuity  
✅ GCP snapshot + restore strategy  
✅ Real-world skills for SRE, DevOps & Platform Engineering

---

## ✍️ Author

By [Azin Behdarvand](https://www.linkedin.com/in/azin-behdarvand)  
GitHub: [AzinBehdarvand](https://github.com/AzinBehdarvand)

---
