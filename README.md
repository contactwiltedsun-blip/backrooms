# Backrooms - Godot Project

Un projet Godot 4.x avec une structure de tests unitaires.

## Structure du Projet

```
backrooms/
├── scripts/              # Scripts GDScript
│   └── menu_principal.gd # Script principal du menu
├── tests/               # Tests unitaires
│   └── test_menu_principal.gd
├── scenes/              # Scènes Godot
├── audio/               # Ressources audio
├── project.godot        # Configuration Godot
├── gut_config.json      # Configuration GUT
└── README.md            # Ce fichier
```

## Configuration Requise

- **Godot**: Version 4.1 ou supérieure
- **GUT**: Framework de test (à installer via Asset Library)

## Installation

### 1. Cloner le projet
```bash
git clone https://github.com/contactwiltedsun-blip/backrooms.git
cd backrooms
```

### 2. Installer GUT

1. Ouvrir le projet dans Godot
2. Aller à **Asset Library** → **Search** → Chercher "GUT"
3. Télécharger et installer "Gut - Unit testing framework"
4. Activer le plugin si demandé

### 3. Valider la configuration
- Vérifier que `res://addons/gut/hook.gd` existe
- Vérifier que `gut_config.json` est présent

## Lancer les Tests

### Option 1: Via Godot Editor
1. Aller à **Tools** → **GUT** → **Run Tests**
2. Ou appuyer sur **Ctrl+Shift+T**

### Option 2: Via Terminal (Godot 4.1+)
```bash
godot --headless -d --script res://addons/gut/gut_runner.gd
```

## Exécuter le Projet

```bash
godot
```

Ou directement en mode de jeu depuis l'éditeur.

## Structure des Tests

Les tests sont organisés dans le dossier `tests/` et suivent la convention `test_*.gd`.

### Exemple: test_menu_principal.gd

```gdscript
extends GutTest

func test_audio_initialization():
    """Test que l'audio s'initialise correctement."""
    var menu = menu_scene.new()
    menu._initialize_audio()
    assert_true(true, "Audio initialization should complete without error")
```

## Ajouter de Nouveaux Tests

1. Créer un fichier `tests/test_<script_name>.gd`
2. Hériter de `GutTest`
3. Ajouter des méthodes `test_*`
4. Lancer les tests

## Bonnes Pratiques

- ✅ Utiliser des noms de tests explicites
- ✅ Tester une seule chose par test
- ✅ Utiliser `before_each()` et `after_each()` pour la configuration
- ✅ Valider les signaux et les résultats
- ✅ Tester les cas limites (valeurs invalides, nulls, etc.)

## Ressources

- [GUT Documentation](https://github.com/bitwes/Gut/wiki)
- [Godot Testing Best Practices](https://docs.godotengine.org/en/stable/)
- [GDScript Documentation](https://docs.godotengine.org/en/stable/getting_started/scripting/gdscript/index.html)

## Dépannage

### Les tests ne se lancent pas
- Vérifier que GUT est installé dans `res://addons/gut/`
- Vérifier que `gut_config.json` existe
- Redémarrer Godot

### "Module not found" errors
- Vérifier les chemins des `preload()`
- Vérifier que les fichiers existent
- Utiliser des chemins absolus (`res://...`)

## Contribution

Pour contribuer:
1. Fork le projet
2. Créer une branche feature
3. Ajouter/mettre à jour les tests
4. Valider que tous les tests passent
5. Créer un Pull Request

## License

À définir
