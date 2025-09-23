# 🤝 Guide de Contribution - AeroGuard

> *Merci de votre intérêt pour contribuer à AeroGuard ! Ce projet vise à améliorer la sécurité et l'efficacité des opérations aéroportuaires grâce à l'IA et à la surveillance en temps réel.*

## 🌟 Pourquoi Contribuer ?

AeroGuard est un projet open-source qui combine :
- **Surveillance intelligente** des équipements aéroportuaires
- **Analyse IA** pour la prédiction de maintenance
- **Alertes automatiques** via WhatsApp
- **Interface moderne** et responsive

Votre contribution peut aider à :
- 🚀 Améliorer la sécurité des aéroports
- 🤖 Optimiser l'utilisation de l'IA
- 📱 Créer une meilleure expérience utilisateur
- 🌍 Rendre la technologie accessible à tous

## 🚀 Comment Commencer

### 1. **Fork et Clone**
```bash
# Fork le projet sur GitHub
# Puis clonez votre fork
git clone https://github.com/votre-username/aeroguard.git
cd aeroguard

# Ajoutez le repo original comme upstream
git remote add upstream https://github.com/Eng-ZAKARIAE-AI/aeroguard.git
```

### 2. **Installation et Configuration**
```bash
# Installer les dépendances
npm install

# Copier la configuration d'environnement
cp env.example .env

# Configurer vos clés API (optionnel pour le développement)
# HUGGING_FACE_API_KEY=your_key_here
# TWILIO_ACCOUNT_SID=your_sid_here
# TWILIO_AUTH_TOKEN=your_token_here
```

### 3. **Démarrer le Développement**
```bash
# Mode développement complet
npm run dev

# Ou séparément
npm run dev:client  # Frontend uniquement
npm run dev:server  # Backend uniquement
```

## 🎯 Types de Contributions

### 🐛 **Correction de Bugs**
- Signalez les bugs avec des détails clairs
- Incluez des étapes de reproduction
- Ajoutez des captures d'écran si possible

### ✨ **Nouvelles Fonctionnalités**
- Discutez de l'idée dans une issue d'abord
- Créez un plan d'implémentation
- Suivez les conventions de code existantes

### 📚 **Documentation**
- Améliorez le README
- Ajoutez des exemples d'utilisation
- Traduisez en d'autres langues

### 🎨 **Interface Utilisateur**
- Améliorez le design
- Ajoutez des animations
- Optimisez pour mobile

### ⚡ **Performance**
- Optimisez le code
- Réduisez la taille des bundles
- Améliorez les temps de réponse

## 📝 Conventions de Code

### **TypeScript/JavaScript**
```typescript
// Utilisez des noms descriptifs
const equipmentStatus = 'OPERATIONAL';
const isCriticalAlert = true;

// Fonctions avec types explicites
function analyzeEquipment(equipment: Equipment): AnalysisResult {
  // Logique ici
}

// Commentaires en français pour la cohérence
// Vérifier si l'équipement est opérationnel
if (equipment.status === 'OPERATIONAL') {
  // Traitement...
}
```

### **React Components**
```tsx
// Nommage des composants
export function EquipmentStatusCard({ equipment }: EquipmentStatusCardProps) {
  // Utilisez des hooks personnalisés
  const { isOnline, lastUpdate } = useEquipmentStatus(equipment.id);
  
  return (
    <Card className="p-4">
      {/* Contenu du composant */}
    </Card>
  );
}
```

### **CSS/Tailwind**
```css
/* Utilisez les classes Tailwind quand possible */
.equipment-card {
  @apply bg-white rounded-lg shadow-md p-4;
}

/* Classes personnalisées avec préfixe ag- */
.ag-critical-alert {
  @apply bg-red-100 border-red-500 text-red-700;
}
```

## 🔄 Workflow de Contribution

### 1. **Créer une Branche**
```bash
# Toujours depuis main
git checkout main
git pull upstream main

# Créer votre branche
git checkout -b feature/nom-de-la-fonctionnalite
# ou
git checkout -b fix/nom-du-bug
```

### 2. **Développer et Tester**
```bash
# Faites vos modifications
# Testez localement
npm run dev
npm run type-check

# Commits réguliers avec des messages clairs
git add .
git commit -m "feat: ajouter la surveillance des scanners de sécurité

- Nouveau composant ScannerMonitor
- Intégration avec l'API de surveillance
- Tests unitaires ajoutés"
```

### 3. **Push et Pull Request**
```bash
# Push vers votre fork
git push origin feature/nom-de-la-fonctionnalite

# Créer une Pull Request sur GitHub
# Remplissez le template de PR
```

## 📋 Template de Pull Request

```markdown
## 🎯 Description
Bref résumé des changements apportés

## 🔍 Type de Changement
- [ ] Bug fix
- [ ] Nouvelle fonctionnalité
- [ ] Amélioration de la documentation
- [ ] Refactoring
- [ ] Test

## 📱 Plateformes Testées
- [ ] Desktop
- [ ] Mobile
- [ ] Tablet

## 🧪 Tests
- [ ] Tests unitaires ajoutés/mis à jour
- [ ] Tests d'intégration
- [ ] Testé manuellement

## 📸 Captures d'Écran (si applicable)
Ajoutez des captures d'écran des changements

## 📋 Checklist
- [ ] Code respecte les conventions
- [ ] Documentation mise à jour
- [ ] Tests passent
- [ ] Aucun warning/erreur
```

## 🚨 Signaler un Bug

### **Template d'Issue**
```markdown
## 🐛 Description du Bug
Description claire et concise du problème

## 🔄 Étapes de Reproduction
1. Aller sur '...'
2. Cliquer sur '...'
3. Voir l'erreur

## 📱 Comportement Attendu
Ce qui devrait se passer

## 📱 Comportement Actuel
Ce qui se passe réellement

## 💻 Environnement
- OS: [ex: Windows 10, macOS, Linux]
- Navigateur: [ex: Chrome, Firefox, Safari]
- Version: [ex: 1.0.0]

## 📸 Captures d'Écran
Si applicable, ajoutez des captures d'écran

## 📝 Informations Supplémentaires
Tout autre contexte sur le problème
```

## 🎉 Reconnaissance

Tous les contributeurs seront reconnus dans :
- Le fichier `CONTRIBUTORS.md`
- Les releases GitHub
- La documentation du projet

## 📞 Besoin d'Aide ?

- **Discussions** : [GitHub Discussions](https://github.com/Eng-ZAKARIAE-AI/airport-ai-monitoring/discussions)
- **Issues** : [GitHub Issues](https://github.com/Eng-ZAKARIAE-AI/airport-ai-monitoring/issues)
- **Email** : [zakaria.elhaddouchi2004@gmail.com](mailto:zakaria.elhaddouchi2004@gmail.com)

## 🙏 Remerciements

Un grand merci à tous ceux qui contribuent à AeroGuard ! 
Votre travail aide à créer un avenir plus sûr pour l'aviation civile.

---

**AeroGuard** - Surveillance intelligente pour un aéroport plus sûr ✈️
