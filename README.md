# NpmGitInit

## Description

NpmGitInit is a powerful shell script designed to streamline the process of initializing Node.js projects. It integrates the creation and configuration of GitHub repositories directly into your project setup workflow. Perfect for developers looking to automate their initial setup tasks for Node.js projects, this script simplifies the process to a single command execution.

## Features

- **Automated GitHub Repository Creation**: Creates a GitHub repository for your Node.js project with ease.
- **Project Directory Initialization**: Sets up your project directory with essential Node.js configurations.
- **Choice of GitHub Organization**: Allows selection of a GitHub organization for your repository, defaulting to your personal account.
- **Compatibility with npm, yarn, and pnpm**: Seamlessly integrates with popular Node.js package managers.
- **Open Source Contribution**: Open to community contributions and improvements.

## Getting Started

### Prerequisites

- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) installed and configured on your system.
- [GitHub CLI](https://cli.github.com/manual/installation) installed and authenticated.
- [`jq`](https://stedolan.github.io/jq/download/) command-line JSON processor installed.
- A GitHub account for repository creation and management. [Sign up here](https://github.com/join) if you don't have one.

### Installation

Execute the following command in your terminal to install:

```bash
curl -sSL https://raw.githubusercontent.com/seriouslyjs/NpmGitInit/main/install.sh | bash
```

This command will download and execute the `install.sh` script, which in turn will set up `node-init-wrapper.sh` and the required aliases.

### Usage

Initiate a new Node.js project using:

```bash
npm init
```

Or with yarn:

```bash
yarn init
```

Or with pnpm:

```bash
pnpm init
```

Then follow the interactive prompts to select an organization and configure your repository.

## Contributing

We welcome contributions from the community. To contribute:

1. Fork the project.
2. Create a new feature branch (`git checkout -b feature/YourAmazingFeature`).
3. Commit your changes (`git commit -m 'Add some YourAmazingFeature'`).
4. Push to the branch (`git push origin feature/YourAmazingFeature`).
5. Open a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/seriouslyjs/NpmGitInit/blob/main/LICENSE) file for details.

## Contact

Jason Nathan - [@jason_nathan](https://twitter.com/jason_nathan)

Project Link: [https://github.com/seriouslyjs/NpmGitInit](https://github.com/seriouslyjs/NpmGitInit)

