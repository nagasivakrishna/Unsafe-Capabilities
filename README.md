
# Unsafe Capabilities in binaries

## Overview

This is a simple Bash script that checks for potentially unsafe capabilities that could be misused for privilege escalation (privesc) on a Linux system. It identifies and lists specific capabilities that may pose security risks if assigned to executables.

## Features

- Lists potentially unsafe capabilities that can be exploited for privilege escalation.
- Scans the entire filesystem for the presence of these capabilities.
- Highlights the identified capabilities in color for better visibility.

## Unsafe Capabilities Included

The following capabilities are checked by the script in v1.0:

- `CAP_CHOWN`: Change file ownership.
- `CAP_DAC_OVERRIDE`: Bypass discretionary access control (DAC).
- `CAP_DAC_READ_SEARCH`: Bypass file read and search permission checks.
- `CAP_SETUID`: Set the user ID of a process.
- `CAP_SETGID`: Set the group ID of a process.
- `CAP_NET_RAW`: Use of raw sockets.
- `CAP_SYS_ADMIN`: A wide-ranging capability that allows various administrative tasks.
- `CAP_SYS_PTRACE`: Trace processes.
- `CAP_SYS_MODULE`: Load and unload kernel modules.
- `CAP_FOWNER`: Override file ownership checks.
- `CAP_SETFCAP`: Set file capabilities.

## Requirements

- Linux ofcourse.
- Shell for your user account :)
- Sufficient permissions to execute `getcap`.

## Usage

1. Clone the repo
2. Make the script executable:
   ```bash
   chmod +x unsafe_caps.sh
   ```
3. Run the script:
   ```bash
   ./unsafe_caps.sh
   ```
   
## Author

Created by [Siva Krishna](https://github.com/nagasivakrishna).
Feel free to fork/contribute <3

## Version

Version 1.0

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
