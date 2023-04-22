# ansible-wsl

(Opinionated) Setup WSL2 (Ubuntu 22.04) using Ansible.

The majority of packages are installed using [Homebrew](https://brew.sh/) (where possible). I chose Homebrew because packages tend to be better maintained and updated with greater frequency than traditional package repositories.

## Playbook Variables

```yaml
# Git configuration
git_username: username
git_email: email
```

Configure the Git username and email.

```yaml
copy_ssh_keys: true
windows_username: username
```

Whether or not to copy SSH keys from Windows.

## Usage

1. Clone the repository:

    ```bash
    git clone https://github.com/dbrennand/ansible-wsl.git && cd ansible-wsl
    ```

2. Modify the [vars/main.yml](vars/main.yml) file with the required variables.

3. Run [main.sh](main.sh):

    ```bash
    chmod +x main.sh && ./main.sh
    ```

Enjoy! 🚀✨

## Contributors

[dbrennand](https://github.com/dbrennand)

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) for more details.
