# 🛩️ AeroGuard

**Système de surveillance intelligente des équipements aéroportuaires avec analyse IA et alertes WhatsApp automatiques**

> *Développé avec ❤️ par ZAKARIAE EL HADDOUCHI pour assurer la sécurité et l'efficacité des opérations aéroportuaires*

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node.js](https://img.shields.io/badge/Node.js-18+-green.svg)](https://nodejs.org/)
[![React](https://img.shields.io/badge/React-18+-blue.svg)](https://reactjs.org/)
[![TypeScript](https://img.shields.io/badge/TypeScript-5+-blue.svg)](https://www.typescriptlang.org/)

## ✨ Fonctionnalités

- 🔍 **Surveillance en temps réel** des équipements aéroportuaires
- 🤖 **Analyse IA** avec Hugging Face pour diagnostics intelligents
- 📱 **Alertes WhatsApp** automatiques via Twilio
- 📊 **Tableau de bord** moderne et responsive
- 🔌 **WebSocket** pour mises à jour en temps réel
- 📱 **PWA** avec support hors ligne
- 🎨 **Interface moderne** avec Tailwind CSS et Radix UI

## 🚀 Démarrage Rapide

### Prérequis

- Node.js 18+ 
- npm ou yarn
- PostgreSQL 15+ (ou Docker)
- Clés API Hugging Face et Twilio

### Installation

1. **Cloner le projet**
```bash
git clone https://github.com/Eng-ZAKARIAE-AI/airport-ai-monitoring.git
cd aeroguard
```

2. **Installer les dépendances**
```bash
npm install
```

3. **Configurer l'environnement**
```bash
cp env.example .env
```

4. **Configurer PostgreSQL**
```bash
# Option A: Docker (Recommandé)
docker-compose up postgres -d

# Option B: Installation locale
# Installer PostgreSQL et créer la base de données
```

5. **Configurer la base de données**
```bash
npm run db:setup
```

6. **Remplir les variables d'environnement**
```env
# Base de données PostgreSQL
DATABASE_URL=postgresql://aeroguard_user:aeroguard_password@localhost:5432/aeroguard_db

# AI Analysis - Hugging Face API
HUGGING_FACE_API_KEY=your_hugging_face_api_key_here

# WhatsApp Notifications - Twilio API
TWILIO_ACCOUNT_SID=your_twilio_account_sid_here
TWILIO_AUTH_TOKEN=your_twilio_auth_token_here
TWILIO_WHATSAPP_NUMBER=whatsapp:+14155238886
TECHNICIAN_WHATSAPP_NUMBERS=+33612345678,+33687654321

# Server Configuration
PORT=5000
NODE_ENV=development
```

7. **Lancer l'application**
```bash
npm run dev
```

L'application sera disponible sur `http://localhost:5000`

## 🏗️ Architecture

```
AeroGuard/
├── client/                 # Frontend React
│   ├── src/
│   │   ├── components/    # Composants UI
│   │   ├── pages/         # Pages de l'application
│   │   ├── hooks/         # Hooks React personnalisés
│   │   └── types/         # Types TypeScript
│   └── public/            # Assets statiques
├── server/                 # Backend Node.js
│   ├── services/          # Services métier
│   ├── routes/            # Routes API
│   └── storage.ts         # Gestion des données
└── shared/                 # Schémas partagés
```

## 🔌 API Endpoints

### Équipements
- `GET /api/equipment` - Liste des équipements
- `GET /api/equipment/:area` - Équipements par zone
- `POST /api/equipment` - Créer un équipement
- `PUT /api/equipment/:id/status` - Mettre à jour le statut

### Alertes
- `GET /api/alerts` - Liste des alertes
- `GET /api/alerts/recent` - Alertes récentes
- `GET /api/alerts/critical` - Alertes critiques
- `POST /api/alerts` - Créer une alerte
- `PUT /api/alerts/:id/resolve` - Résoudre une alerte

### IA
- `POST /api/ai/analyze` - Analyser un incident
- `GET /api/ai/predictions` - Prédictions de maintenance
- `GET /api/ai/status` - Statut du service IA

### WhatsApp
- `POST /api/whatsapp/test` - Tester la connexion
- `POST /api/whatsapp/alert` - Envoyer une alerte
- `GET /api/whatsapp/status` - Statut du service

### Système
- `GET /api/stats` - Statistiques système
- `GET /api/health` - Santé des services
- `GET /health` - Health check simple

## 🧪 Tests et Exemples

### Test de l'API IA

```bash
# Analyser un incident
curl -X POST http://localhost:5000/api/ai/analyze \
  -H "Content-Type: application/json" \
  -d '{
    "equipmentName": "ATB-C03",
    "status": "DOWN",
    "logs": "Erreur de connexion réseau détectée"
  }'
```

### Test des Alertes WhatsApp

```bash
# Envoyer une alerte de test
curl -X POST http://localhost:5000/api/whatsapp/test

# Envoyer une alerte personnalisée
curl -X POST http://localhost:5000/api/whatsapp/alert \
  -H "Content-Type: application/json" \
  -d '{
    "equipmentName": "BGR-G12",
    "message": "Scanner en panne - intervention requise",
    "alertLevel": "CRITICAL"
  }'
```

### Test de Santé des Services

```bash
# Vérifier la santé globale
curl http://localhost:5000/api/health

# Vérifier le statut IA
curl http://localhost:5000/api/ai/status

# Vérifier le statut WhatsApp
curl http://localhost:5000/api/whatsapp/status
```

### Simulation d'Incidents

```bash
# Simuler une panne d'équipement
curl -X POST http://localhost:5000/api/equipment/ATB-C03/status \
  -H "Content-Type: application/json" \
  -d '{"status": "DOWN"}'
```

## 🎨 Interface Utilisateur

### Composants Principaux

- **Dashboard** - Vue d'ensemble du système
- **AIAnalysisPanel** - Analyse IA en temps réel
- **RecentAlerts** - Gestion des alertes
- **EquipmentAreaCard** - Statut par zone
- **StatsCard** - Métriques système

### Responsive Design

- **Desktop** - Interface complète avec sidebar
- **Tablet** - Layout adaptatif
- **Mobile** - Interface optimisée tactile

## 🔧 Configuration Avancée

### Variables d'Environnement

| Variable | Description | Requis | Défaut |
|----------|-------------|---------|---------|
| `HUGGING_FACE_API_KEY` | Clé API Hugging Face | ✅ | - |
| `TWILIO_ACCOUNT_SID` | SID compte Twilio | ✅ | - |
| `TWILIO_AUTH_TOKEN` | Token d'authentification Twilio | ✅ | - |
| `TWILIO_WHATSAPP_NUMBER` | Numéro WhatsApp Twilio | ❌ | +14155238886 |
| `TECHNICIAN_WHATSAPP_NUMBERS` | Numéros des techniciens | ❌ | - |
| `PORT` | Port du serveur | ❌ | 5000 |
| `NODE_ENV` | Environnement | ❌ | development |

### Modèles IA Supportés

- **Primary**: `microsoft/DialoGPT-small`
- **Fallback 1**: `gpt2`
- **Fallback 2**: `EleutherAI/gpt-neo-125M`

## 📱 PWA et Icons

### Tailles d'Icons Générées

- 16x16, 32x32, 48x48, 72x72
- 96x96, 128x128, 192x192, 512x512

### Fonctionnalités PWA

- Installation sur l'écran d'accueil
- Support hors ligne
- Notifications push
- Mise à jour automatique

## 🚀 Déploiement

### Production

```bash
# Build de production
npm run build

# Démarrer en production
npm start
```

### Docker (Optionnel)

```dockerfile
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production
COPY . .
RUN npm run build
EXPOSE 5000
CMD ["npm", "start"]
```

## 🔒 Sécurité

- Validation des entrées avec Zod
- Gestion sécurisée des erreurs
- Headers de sécurité
- Validation des clés API

## 📊 Monitoring

- Logs structurés avec emojis
- Métriques de performance
- Health checks automatiques
- WebSocket pour temps réel

## 🤝 Contribution

Ce projet est ouvert aux contributions ! Si vous souhaitez contribuer :

1. **Fork** le projet
2. **Créer** une branche feature (`git checkout -b feature/AmazingFeature`)
3. **Commit** les changements (`git commit -m 'Add AmazingFeature'`)
4. **Push** vers la branche (`git push origin feature/AmazingFeature`)
5. **Ouvrir** une Pull Request

### 🎯 Domaines de contribution
- 🚀 Nouvelles fonctionnalités
- 🐛 Correction de bugs
- 📚 Amélioration de la documentation
- 🎨 Amélioration de l'interface utilisateur
- ⚡ Optimisation des performances

## 📄 Licence

Ce projet est sous licence MIT. Voir le fichier `LICENSE` pour plus de détails.

## 🆘 Support

- **Documentation**: [Wiki du projet](https://github.com/Eng-ZAKARIAE-AI/airport-ai-monitoring/wiki)
- **Issues**: [GitHub Issues](https://github.com/Eng-ZAKARIAE-AI/airport-ai-monitoring/issues)
- **Discussions**: [GitHub Discussions](https://github.com/Eng-ZAKARIAE-AI/airport-ai-monitoring/discussions)
- **Email**: [zakaria.elhaddouchi2004@gmail.com](mailto:zakaria.elhaddouchi2004@gmail.com)
- **LinkedIn**: [ZAKARIAE EL HADDOUCHI](https://www.linkedin.com/in/zakariae-el-haddouchi-992474339/)

### 🚨 Problèmes courants
- **Configuration API** : Vérifiez vos clés Hugging Face et Twilio
- **Port déjà utilisé** : Changez le port dans votre fichier `.env`
- **Dépendances** : Supprimez `node_modules` et relancez `npm install`

## 🙏 Remerciements

- [Hugging Face](https://huggingface.co/) pour les modèles IA
- [Twilio](https://www.twilio.com/) pour les notifications WhatsApp
- [Tailwind CSS](https://tailwindcss.com/) pour le design
- [Radix UI](https://www.radix-ui.com/) pour les composants
- [React](https://reactjs.org/) pour l'écosystème frontend
- [Node.js](https://nodejs.org/) pour la plateforme backend
- [TypeScript](https://www.typescriptlang.org/) pour la sécurité des types

---

**AeroGuard** - Surveillance intelligente pour un aéroport plus sûr ✈️
