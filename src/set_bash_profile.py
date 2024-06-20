import os
import sys


def open_file(file_path):
    file_path = os.path.expanduser(file_path)
    with open(file_path, "r") as file:
        return file.read()


def write_file(file_path, content):
    file_path = os.path.expanduser(file_path)
    with open(file_path, "w") as file:
        file.write(content)
    print(f"File written: {file_path}")


def find_shortcut_lines(file_path, file_content=None):
    file_content = open_file(file_path)
    lines = file_content.split("\n")
    shortcut_start = None
    shortcut_end = None
    for index, line in enumerate(lines):
        if "### SHORTCUTS START ###" in line:
            shortcut_start = index
        if "### SHORTCUTS END ###" in line:
            shortcut_end = index
    return shortcut_start, shortcut_end


def extract_shortcuts(file_path):
    file_content = open_file(file_path)
    shortcut_start, shortcut_end = find_shortcut_lines(file_path)
    lines = file_content.split("\n")
    shortcuts = lines[shortcut_start + 1 : shortcut_end]
    return shortcuts


def replace_shortcuts(real_bash_profile, shortcut_bash_profile):
    shortcut_start, shortcut_end = find_shortcut_lines(real_bash_profile)
    replacement_lines = open_file(shortcut_bash_profile).split("\n")
    lines = open_file(real_bash_profile).split("\n")

    if shortcut_start is None or shortcut_end is None:
        print("Could not find shortcuts")
        sys.exit(1)

    lines_head = lines[:shortcut_start]
    lines_tail = lines[shortcut_end + 1 :] if shortcut_end < len(lines) else [""]

    lines = lines_head + replacement_lines + lines_tail

    new_file_content = "\n".join(lines)

    return new_file_content


if __name__ == "__main__":
    real_bash_profile = "~/.bash_profile"
    shortcut_bash_profile = "files/system/.bash_profile"
    bash_profile = replace_shortcuts(real_bash_profile, shortcut_bash_profile)
    write_file(real_bash_profile, bash_profile)
