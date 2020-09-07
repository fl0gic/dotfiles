# Update App Store apps
sudo softwareupdate -i -a

# Update Homebrew (Cask) & packages
brew upgrade
brew cask upgrade

# Update npm & packages
npm install npm -g
npm update -g

# Google Cloud & Flutter
gcloud components update
flutter upgrade
