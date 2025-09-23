# 🏗️ Structure du Projet AeroGuard

## 📁 Organisation des Dossiers

```
AeroGuard/
├── 📱 client/                    # Frontend React + TypeScript
│   ├── public/                   # Assets statiques et PWA
│   │   ├── favicon.svg
│   │   ├── icon.svg
│   │   ├── manifest.json
│   │   └── sw.js
│   └── src/
│       ├── components/           # Composants React
│       │   ├── ui/              # Composants UI de base (shadcn/ui)
│       │   ├── AIAnalysisPanel.tsx
│       │   ├── EquipmentAreaCard.tsx
│       │   ├── RecentAlerts.tsx
│       │   ├── Sidebar.tsx
│       │   ├── StatsCard.tsx
│       │   └── TopBar.tsx
│       ├── hooks/                # Hooks React personnalisés
│       │   ├── use-mobile.tsx
│       │   ├── use-toast.ts
│       │   └── useWebSocket.ts
│       ├── lib/                  # Utilitaires et configuration
│       │   ├── queryClient.ts
│       │   └── utils.ts
│       ├── pages/                # Pages de l'application
│       │   ├── Dashboard.tsx
│       │   └── not-found.tsx
│       ├── types/                # Types TypeScript
│       │   └── equipment.ts
│       ├── App.tsx               # Composant principal
│       ├── main.tsx              # Point d'entrée
│       └── index.css             # Styles globaux
├── 🖥️ server/                    # Backend Node.js + TypeScript
│   ├── services/                 # Services métier
│   │   ├── aiService.ts         # Service d'analyse IA
│   │   └── whatsappService.ts   # Service de notifications WhatsApp
│   ├── index.ts                  # Point d'entrée du serveur
│   ├── routes.ts                 # Routes API
│   ├── storage.ts                # Gestion des données
│   └── vite.ts                   # Configuration Vite pour le serveur
├── 🔗 shared/                    # Code partagé entre client et serveur
│   └── schema.ts                 # Schémas de données
├── 📋 scripts/                   # Scripts utilitaires
│   ├── generate-icons.js         # Génération des icônes PWA
│   └── test-api.js               # Tests de l'API
├── 📚 docs/                      # Documentation du projet
│   └── PROJECT_STRUCTURE.md      # Ce fichier
├── ⚙️ Configuration              # Fichiers de configuration
│   ├── components.json           # Configuration shadcn/ui
│   ├── drizzle.config.ts         # Configuration base de données
│   ├── postcss.config.js         # Configuration PostCSS
│   ├── tailwind.config.ts        # Configuration Tailwind CSS
│   ├── tsconfig.json             # Configuration TypeScript
│   └── vite.config.ts            # Configuration Vite
├── 📦 Gestion des dépendances
│   ├── package.json              # Dépendances et scripts
│   └── package-lock.json         # Verrouillage des versions
├── 🌍 Environnement
│   ├── .env.example              # Exemple de variables d'environnement
│   └── .gitignore                # Fichiers ignorés par Git
└── 📖 README.md                  # Documentation principale du projet
```

## 🎯 Composants Principaux

### Frontend (React + TypeScript)
- **Dashboard** : Vue d'ensemble du système de surveillance
- **AIAnalysisPanel** : Interface d'analyse IA en temps réel
- **RecentAlerts** : Gestion et affichage des alertes
- **EquipmentAreaCard** : Statut des équipements par zone
- **StatsCard** : Métriques et statistiques système
- **Sidebar** : Navigation principale
- **TopBar** : Barre supérieure avec actions rapides

### Backend (Node.js + TypeScript)
- **aiService** : Intégration avec Hugging Face pour l'analyse IA
- **whatsappService** : Notifications automatiques via Twilio
- **storage** : Gestion des données et état du système
- **routes** : API REST complète pour toutes les fonctionnalités

## 🔧 Technologies Utilisées

- **Frontend** : React 18, TypeScript, Tailwind CSS, Radix UI
- **Backend** : Node.js, Express, TypeScript
- **IA** : Hugging Face API
- **Notifications** : Twilio WhatsApp API
- **Temps réel** : WebSocket
- **Build** : Vite
- **PWA** : Service Worker, Manifest

## 📱 Fonctionnalités Clés

1. **Surveillance en temps réel** des équipements aéroportuaires
2. **Analyse IA** pour diagnostics intelligents
3. **Alertes WhatsApp** automatiques
4. **Interface responsive** et moderne
5. **PWA** avec support hors ligne
6. **WebSocket** pour mises à jour en temps réel

## 🚀 Démarrage Rapide

```bash
# Installation
npm install

# Configuration
cp env.example .env
# Remplir les variables d'environnement

# Démarrage
npm run dev
```

## 📊 Architecture

- **Monorepo** avec séparation claire client/serveur
- **API REST** bien structurée
- **Services modulaires** pour chaque fonctionnalité
- **Types partagés** entre frontend et backend
- **Configuration centralisée** pour tous les outils
