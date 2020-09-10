import os


def main(args):
    if (args[1].lower() == 'install'):
        os.system('bash ~/dotfiles/install '+' '.join(args[2:]))
    elif (args[1].lower() == 'update'):
        os.system('bash ~/dotfiles/update.sh '+' '.join(args[2:]))
    elif (args[1].lower() == 'macos'):
        os.system('bash ~/dotfiles/macos '+' '.join(args[2:]))
    else:
        print('Invalid argument!')
        print('Valid arguments:')
        print(' - install | Runs the dotfiles install script.')
        print(' - update | Runs the dotfiles update script.')
