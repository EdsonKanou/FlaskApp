# Étape 1 : Utiliser une image de base Python
FROM python:3.9-slim

# Étape 2 : Définir le répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Étape 3 : Copier les fichiers nécessaires dans le conteneur
COPY requirements.txt requirements.txt
COPY . .

# Étape 4 : Installer les dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Étape 5 : Exposer le port sur lequel l'application Flask écoute
EXPOSE 5000

# Étape 6 : Définir la commande par défaut pour exécuter l'application Flask
CMD ["python", "app.py"]
