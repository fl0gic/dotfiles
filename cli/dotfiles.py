import os


def main(args):
    if (args[1].lower() == 'install'):
        os.system('bash ~/dotfiles/install')
    elif (args[1].lower() == 'update'):
        os.system('bash ~/dotfiles/update.sh')
    elif (args[1].lower() == 'macos'):
        os.system('bash ~/dotfiles/macos')
    else:
        print('Invalid argument!')
        print('Valid arguments:')
        print(' - install | Runs the dotfiles install script.')
        print(' - update | Runs the dotfiles update script.')
