# Scripts

## Update Git Repositories
1. Define the environment variable ```PROJECT_PATH``` which leads to your project folder with git repositories.
2. Download the ```update_git_repos.sh``` to anywhere you like.
3. Define any alias which points to this file.

#### Example
File ```~/.bash_profile```
```bash
export PROJECT_PATH=<PATH_TO_THE_PROJECT>
alias update=<PATH_TO_THE_SCRIPT_FILE>/update_git_repos.sh
```

Open the terminal and run command: ```update```
