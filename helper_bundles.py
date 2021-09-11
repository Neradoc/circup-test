import circup
import click
import os
import shutil
import tempfile

def get_save_file(token):
    return os.path.join(tempfile.gettempdir(), f"circup_bundles_{token}.json")

@click.group()
def main():
    pass

@main.command()
@click.argument("token", required=True, nargs=1)
def save(token):
    save_file = get_save_file(token)
    print(save_file)
    if os.path.isfile(circup.BUNDLE_CONFIG_LOCAL):
        shutil.copy(circup.BUNDLE_CONFIG_LOCAL, save_file)

@main.command()
@click.argument("token", required=True, nargs=1)
def restore(token):
    save_file = get_save_file(token)
    if os.path.isfile(save_file):
        shutil.copy(save_file, circup.BUNDLE_CONFIG_LOCAL)

@main.command()
@click.argument("token", required=True, nargs=1)
def clean(token):
    save_file = get_save_file(token)
    if os.path.isfile(save_file):
        os.unlink(save_file)

if __name__ == "__main__":
    main()
