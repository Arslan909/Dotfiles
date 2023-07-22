import os

DOTFILES_PATH = os.path.expanduser("~/Dotfiles")

def symlink(source, destination):
    source = os.path.join(DOTFILES_PATH, source)
    destination = os.path.join(os.path.expanduser("~"), destination)


    # remove the destination if it is a folder, unlink if it is a symlink
    if os.path.isdir(destination):
        os.system(f"rm -rf {destination}")
    elif os.path.islink(destination):
        os.unlink(destination)
        
        

    print(f"Linking {source} to {destination}")
    os.symlink(source, destination)


destinations = [
    ".icons",
    ".themes"
]
sources = [
    "assets/.icons",
    "assets/.themes"
]

for source, destination in zip(sources, destinations):
    symlink(source, destination)
