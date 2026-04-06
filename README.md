# 🔍 SUBREX — Subdomain Reconnaissance Framework

<p align="center">
  <b>Automated, fast, and structured subdomain reconnaissance pipeline</b><br>
  Built for bug bounty hunters & penetration testers
</p>

---

## 🚀 Overview

**SUBREX** is a powerful Bash-based reconnaissance tool designed to automate **subdomain enumeration, asset discovery, and attack surface mapping**.

It combines multiple industry-standard tools into a **single workflow**, producing **clean, categorized, and actionable output**.

---

## ✨ Features

* 🔎 Passive subdomain enumeration (subfinder, assetfinder, chaos, crt.sh)
* ⚡ Active brute-force (shuffledns, puredns, altdns, optional knockpy)
* 🌐 ASN discovery & expansion
* 🔁 Reverse DNS (PTR) scanning
* 📡 DNS resolution (live host detection)
* 🌍 HTTP probing with tech detection
* 📊 Status-based filtering (200 / 403 / 302 / others)
* 🧹 Automatic cleanup (remove CDN, noise, duplicates)
* 🎯 Clean URL extraction for testing

---

## 🧰 Requirements

### System Dependencies

* Linux / WSL (Recommended)
* Bash
* Go
* Python3

### Tools (Auto-installed via script)

* subfinder
* assetfinder
* httpx
* dnsx
* amass
* shuffledns
* puredns
* altdns
* jq
* curl
* whois
* sublist3r

---

## ⚙️ Installation

### 1. Clone Repository

```bash
git clone https://github.com/clipp3rX/subrex.git
cd subrex
```

---

### 2. Install Dependencies

```bash
chmod +x install.sh
./install.sh
```

---

### 3. Make SUBREX Global (Run from Anywhere)

```bash
chmod +x subrex
sudo ln -sf "$(pwd)/subrex" /usr/local/bin/subrex
```

---

### 4. Verify Installation

```bash
subrex -h
```

If installed correctly, you will see the help menu.

---

## ▶️ Usage

```bash
subrex -d example.com
```

### Options

```
bash
-d <domain>        Target domain (required)
-o <directory>     Output directory (default: recon)
-k                 Enable knockpy brute-force
-h                 Show help menu
```




### Options

```
bash
-d <domain>        Target domain (required)
-o <directory>     Output directory (default: recon)
-k                 Enable knockpy (slow brute-force)
-h                 Show help menu
```

---

## 📁 Output Structure

```
recon/example.com/

all_subs.txt        # all discovered subdomains
resolved.txt        # live domains

httpx.txt           # full HTTP scan results

200.txt             # HTTP 200 responses
403.txt             # HTTP 403 responses
302.txt             # redirects
other.txt           # other status codes

urls.txt            # all URLs
urls_200.txt        # high-value targets
clean_urls.txt      # filtered (no static/CDN)
```

---

## 🧠 Workflow

```
Subdomain Enum → ASN Expansion → DNS Resolve → HTTP Probe → Filtering → Clean Output
```

---

## ⚠️ Important Notes

* Use only on **authorized targets**
* Some tools may require API keys (GitHub, Chaos)
* Results may vary depending on target scope and infrastructure
* Avoid relying solely on automation — manual analysis is critical

---

## 🛠 Troubleshooting

### Permission denied

```bash
chmod +x subrex.sh
```

### Missing tools

```bash
./requirements.sh
```

### Windows users

👉 Use **WSL (Windows Subsystem for Linux)** for best performance

---

## 📌 Roadmap

* [ ] CLI command version (`subrex`)
* [ ] JSON output support
* [ ] Python-based prioritization engine
* [ ] Nuclei integration
* [ ] GitHub CI/CD release pipeline
* [ ] `.deb` package distribution

---

## 🤝 Contributing

Contributions are welcome!
Feel free to fork, improve, and submit a pull request.

---

## 📜 License

MIT License

---

## 👨‍💻 Author

**clipp3rX**

---

## ⭐ Support

If you find this useful:

👉 Star the repository
👉 Share with others
👉 Contribute improvements

---

<p align="center">
  Built with ⚡ for hackers who think deeper
</p>
