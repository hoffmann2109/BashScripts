# Bash Scripts Collection

Welcome to my Bash Scripts Collection! This repository contains a variety of useful scripts I've gathered over the years. Each script serves a specific purpose, ranging from automating daily tasks to improving shell workflow.

## Overview

Scripts in this repository are intended to either be sourced in your `.bashrc` file for continuous use in your shell environment or executed as standalone scripts.

### Current Scripts

1. **`cd.sh`**  
   Enhances the `cd` command by automatically displaying the contents of the specified folder (`ls`).

2. **`extract.sh`**  
   A utility script for extracting various archive formats (e.g., `.tar.gz`, `.zip`, `.rar`). It simplifies handling archives by allowing you to use a single command to extract any supported format without worrying about syntax.

3. **`Timer.sh`**  
   A simple countdown timer script. It counts down from a specified number of seconds, displaying the remaining time each second, and alerts you when the time is up with a sound.

4. **`update.sh`**  
   Automates the process of updating and maintaining your system. It performs updates, upgrades, removes orphaned dependencies, and cleans the package cache. Logs are saved in `/home/user/.update.log`, and the machine can be rebooted after the updates.

   **Features:**  
   - Logs update actions with timestamps.
   - Removes unused dependencies.
   - Reboots the system after updates.

   **Usage:**
   ```bash
   chmod +x update.sh
   ./update.sh
   ```
5. **`cleanKernelEntriesFedora.sh`**
   
This script helps in cleaning up old kernel entries on Fedora systems by checking if the number of installed kernels exceeds the defined limit (KERNEL_LIMIT). If it does, it removes old kernels (except the current running one) and aligns the rescue kernel with the current kernel.

   **Features:**
   - Checks the number of installed kernels and compares it with a predefined limit.
   - Removes old kernels if the latest version is running.
   - Recreates the rescue kernel aligned with the currently running kernel.

   **Usage:**
   ``` bash
   chmod +x cleanKernelEntriesFedora.sh
   ./cleanKernelEntriesFedora.sh
   ```

This script should be run periodically to maintain a clean and efficient kernel list, ensuring no unnecessary kernel versions occupy your system.

### Getting Started

#### For Scripts to be Sourced:
To use scripts that are intended to be sourced, open the `.bashrc` file with your favorite text editor and add the necessary lines from the script.

```bash
nano ~/.bashrc
```

#### For Standalone Scripts:
Make sure the script is executable and run it directly from your terminal:

```bash
chmod +x script.sh
./script.sh
```

Replace `script.sh` with the name of the script you wish to execute (e.g., `update.sh`).

### Future Additions

This repository will continue to grow as more useful scripts are added over time.

## Structure

Each script is named with a `.sh` extension to maintain consistency and enable GitHub Shell recognition. However, please refer to the individual script descriptions to determine if they need to be sourced or executed directly.

---

Feel free to explore, clone, and make the most out of this collection of scripts!
