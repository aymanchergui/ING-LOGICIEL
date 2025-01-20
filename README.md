# ING-LOGICIEL

# 1. Qui est l'auteur des commits dans ce dépôt ?
git log
# Sortie :
# Author: PSYSHX <ayman.chergui@isen.yncrea.fr>
----------
# 2. Combien de branches contient le dépôt ?
git branch -a
# Sortie :
# * main
#   remotes/origin/main
----------
# 3. Qui est le contributeur principal ?
git shortlog -sn
# Sortie :
# 1  PSYSHX
----------
# 4. Combien de tags contient le dépôt ?
git tag
# Sortie :
# (Aucun tag trouvé)
----------
# 5. Le dépôt est-il lié à un système d'intégration continue (CI/CD) comme Jenkins ou Travis CI ?
# Vérification des fichiers de configuration CI/CD :
ls | grep Jenkinsfile
ls -a | grep .travis.yml
ls -a .github/workflows
ls -a | grep .gitlab-ci.yml
# Sortie :
# Aucun fichier de configuration CI/CD détecté.
