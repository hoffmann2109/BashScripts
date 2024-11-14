# Bash Scripts Collection

Welcome to my Bash Scripts Collection! This repository contains a variety of useful scripts I've gathered over the years. Each script serves a specific purpose, ranging from automating daily tasks to improving shell workflow.

## Overview

Scripts in this repository are intended to either be sourced in your `.bashrc` file for continuous use in your shell environment or executed as standalone scripts.

### Current Scripts

1. **`cd.sh`** - Enhances the `cd` command by automatically displaying the contents of the specified folder (ls).
  
2. **`extract.sh`** - A utility script for extracting various archive formats (e.g., `.tar.gz`, `.zip`, `.rar`). It simplifies handling archives by allowing you to use a single command to extract any supported format without worrying about syntax.

### Getting Started

To use scripts that are intended to be sourced, open the `.bashrc` file with your favourite text editor and add the lines in `cd.sh` at the bottom.

```bash
nano ~/.bashrc
```

For standalone scripts, make sure the script is executable and run it directly from your terminal:

```bash
chmod +x script.sh
./script.sh
```

### Future Additions

This repository will continue to grow as more useful scripts are added over time.

## Structure

Each script is named with a `.sh` extension to maintain consistency and enable GitHub Shell recognition. However, please refer to the individual script descriptions to determine if they need to be sourced or executed directly.

---

Feel free to explore, clone, and make the most out of this collection of scripts!
