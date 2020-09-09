# Update App Store apps
sudo softwareupdate -i -a

# Update Homebrew (Cask) & packages
brew upgrade
brew upgrade --cask

# Update npm & packages
npm install npm -g
npm update -g

# Pip global packages
pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U

# Google Cloud & Flutter
gcloud components update
flutter upgrade
