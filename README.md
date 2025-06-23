
# 💾 backup-automation

🛠️ Projet d'automatisation de sauvegardes locales avec Vagrant et Bash  
📦 Environnement isolé sous Ubuntu 18.04 via Vagrant  
📁 Sauvegarde automatique de répertoires configurables  
🕒 Planification via cron (sauvegardes régulières)

---

## 🔧 Technologies utilisées

- 🐧 Ubuntu 18.04 (via Vagrant)
- 📜 Bash scripting
- ⏰ cron (planification des tâches)
- 🧰 VirtualBox

---

## 📂 Structure du projet

backup-automation/
│
├── .gitignore
├── README.md
├── Vagrantfile
│
├── scripts/
│ └── backup.sh
│
├── config/ # (vide pour l’instant)
│ └── .gitkeep
│
└── docs/ # (vide pour l’instant)
└── .gitkeep


---

## 🚀 Lancement

```bash
vagrant up         # Démarre la VM
vagrant ssh        # Se connecter à la VM

💡 Exemple de crontab

0 2 * * * /home/vagrant/backup-automation/scripts/backup.sh

📄 Licence

MIT
