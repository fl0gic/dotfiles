# Update App Store apps
sudo softwareupdate -i -a

# Update Homebrew (Cask) & packages
brew upgrade

# Update npm & packages
npm install npm -g
npm update -g

# Pip global packages
# python3 -m pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 python3 -m pip install -U

# Google Cloud & Flutter
gcloud components update
flutter upgrade
