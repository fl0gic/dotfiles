# Update App Store apps
sudo softwareupdate -i -a

# Update Homebrew (Cask) & packages
brew upgrade

# Update npm & packages
npm update -g

#  Anaconda packages
conda update --all

# Gems
sudo gem update

# Google Cloud & Flutter
gcloud components update
flutter upgrade
