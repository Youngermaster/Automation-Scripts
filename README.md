# Automatization-scripts

This repo contains and will has some scripts that I use for make my development faster on my machines (Arch and Ubuntu 20.04).

To use it globally I add the container folder to `~/.bashrc`.

Example: 
```
...
# Automatization Codes

export PATH="$HOME/GitHub/Youngermaster/Automatization-scripts/:$PATH"
```

Then I can run them like this example:

```
bash common_github_commit_messages.sh
```

Or you can run this command on the project folder

```
sudo chmod +x *.sh
```

Then I can run them without the `bash` prefix like this example:

```
common_github_commit_messages.sh
```


### Script descriptions

- `wave_me.sh`: This a test that I used to learn some `bash shell` concepts.
- `github_recovery_codes.sh`: This script returns me my GitHub's recovery codes and also my GitHub's personal access tokens.
- `common_github_commit_messages.sh`: The aim to this script is to return me a common commit message, for instance: "README Updated". This scripts prompts me which commit message I want use, then I give an alias and after that I get a commit message to copy and paste.
