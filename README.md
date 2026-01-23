# Bash Rootina 🛠️

![Bash](https://img.shields.io/badge/Shell_Script-Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Linux](https://img.shields.io/badge/OS-Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)

**Bash Rootina** is a collection of essential automation scripts for system administration and QA tasks. 
It automates the "routine" work, ensuring infrastructure stability and quick diagnostics.

## 📂 Repository Structure

### 1. Monitoring (`/monitoring`)
**`health_check.sh`**
- **Purpose:** Checks availability of API endpoints.
- **Use Case:** Smoke testing after deployment to verify `200 OK` status.
- **Logic:** Iterates through service URLs using `curl`.

### 2. Maintenance (`/maintenance`)
**`clear_logs.sh`**
- **Purpose:** Frees up disk space by removing old logs.
- **Use Case:** Scheduled via Cron to delete logs older than 7 days.
- **Logic:** Safe cleanup using `find` with `-mtime`.

### 3. Backups (`/backups`)
**`backup_configs.sh`**
- **Purpose:** Backs up configuration files before updates.
- **Use Case:** Quick rollback strategy for Nginx/DB configs.
- **Logic:** Creates time-stamped `.tar.gz` archives.

## 🚀 How to Use

### **Clone the repository:**
   ```bash
   git clone [https://github.com/YOUR_USERNAME/bash_rootina.git](https://github.com/YOUR_USERNAME/bash_rootina.git)
   ```

### Make scripts executable:
```bash
chmod +x monitoring/health_check.sh
chmod +x maintenance/clear_logs.sh
```

### Run a script:
```bash
./monitoring/health_check.sh
```

---