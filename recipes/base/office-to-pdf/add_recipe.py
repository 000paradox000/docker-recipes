import pathlib
import shutil
import sys


def main():
    # recipes/<folder_name>/hello_world
    # Folder name (i.e. centos-7 or debian-latest)
    folder_name = sys.argv[1]

    # recipes/<folder_name>/hello_world/Dockerfile, <dockerfile_image_and_tag>
    dockerfile_image_and_tag = sys.argv[2]

    # recipes/<folder_name>/hello_world/Makefile, <container_image_name>
    container_image_name = sys.argv[3]

    # recipes/<folder_name>/hello_world/README.md, <operating_system>
    operating_system = sys.argv[4]

    # Recipe slug (i.e. office-to-pdf)
    recipe_slug = sys.argv[5]

    # Recipe title (i.e. Office to PDF)
    recipe_title = sys.argv[6]

    # Dockerfile installation line (i.e. apt update && apt -y install libreoffice)
    dockerfile_installation_line = sys.argv[7]

    base_dir = pathlib.Path(__file__).parent.parent.parent
    source_dir = base_dir / "base" / recipe_slug
    target_dir = base_dir / folder_name / recipe_slug

    # Create the folder
    if target_dir.exists():
        raise ValueError(f"{target_dir} already exists.")
    shutil.copytree(source_dir, target_dir)

    # Remove unnecessary files
    paths = [
        target_dir / "add_recipe.py",
    ]
    [path.unlink() for path in paths]

    # Dockerfile
    path = target_dir / "Dockerfile"

    source_str = "<dockerfile_image_and_tag>"
    target_str = dockerfile_image_and_tag
    strings = [
        [source_str, target_str],
    ]
    replace_contents_in_a_file(path, strings)

    source_str = "<dockerfile_installation_line>"
    target_str = dockerfile_installation_line
    strings = [
        [source_str, target_str],
    ]
    replace_contents_in_a_file(path, strings)

    # Makefile
    path = target_dir / "Makefile"
    source_str = "<container_image_name>"
    target_str = container_image_name
    strings = [
        [source_str, target_str],
    ]
    replace_contents_in_a_file(path, strings)

    # README.md
    path = target_dir / "README.md"
    strings = []

    source_str = "<operating_system>"
    target_str = operating_system
    strings.append([source_str, target_str])

    source_str = "<recipe_title>"
    target_str = recipe_title
    strings.append([source_str, target_str])

    source_str = "<container_image_name>"
    target_str = container_image_name
    strings.append([source_str, target_str])

    source_str = "<folder_name>"
    target_str = folder_name
    strings.append([source_str, target_str])

    source_str = "<recipe_slug>"
    target_str = recipe_slug
    strings.append([source_str, target_str])

    replace_contents_in_a_file(path, strings)


def replace_contents_in_a_file(path: pathlib.Path, strings: [[str, str]]) -> None:
    with open(path, "r") as fh:
        contents = fh.read()

    for source_str, target_str in strings:
        contents = contents.replace(source_str, target_str)

    with open(path, "w") as fh:
        fh.write(contents)


if __name__ == "__main__":
    main()
