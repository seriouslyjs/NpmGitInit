# NpmGitInit 🚀 - Your Go-To for npm, yarn & pnpm Init Hooks!

## Description

🛠️ **NpmGitInit** is your magic wand for Node.js project setups! It serves as a nifty hook for `npm`, `yarn`, and `pnpm`, turbocharging your project initialization. It's like having a personal assistant for setting up GitHub repositories, perfect for Node.js enthusiasts.

🌐 Seamlessly integrate repository creation and configuration into your `init` command. Transform the mundane into automation! Whether you prefer `npm`, `yarn`, or `pnpm`, this script has got your back, ensuring a smooth, automated setup for your Node.js projects.

🔍 Need an `npm init hook`? Want to bypass the usual `npm init` drill? Or searching for something similar for `yarn` and `pnpm`? Here you go...

## Features

- **Automated GitHub Repository Creation**: Simplify GitHub repository setup for `npm`, `yarn`, and `pnpm`.
- **Universal Init Hook**: Automate the `init` command across `npm`, `yarn`, and `pnpm`.
- **Project Directory Initialization**: Set up your project directory along with a new repository.
- **Custom GitHub Organization Selection**: Choose a GitHub organization during initialization.
- **Enhanced Initialization Process**: Automate Git and GitHub setup for `npm init`, `yarn init`, or `pnpm init`.

## Getting Started

### Prerequisites

- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) installed and configured.
- [GitHub CLI](https://cli.github.com/manual/installation) installed and authenticated.
- [`jq`](https://stedolan.github.io/jq/download/) command-line JSON processor installed.
- [GitHub account](https://github.com/join) for repository creation and management.

### Installation

Run this command in your terminal to install:

```bash
curl -sSL https://raw.githubusercontent.com/seriouslyjs/NpmGitInit/master/install.sh | bash
```

Or feel free to look at the script yourself and see ho it works. This command downloads and executes the `install.sh` script, setting up `node-init-wrapper.sh` and the required aliases.


### Usage

Initiate a new Node.js project using:

```bash
npm init

#Or with yarn:
yarn init

#Or with pnpm:
pnpm init
```

Follow the interactive prompts to select an organization and configure your repository.

## How It Works

The `node-init-wrapper.sh` script streamlines the process of setting up a new Node.js project by automating several steps. **The script only cares if you call `init`** and returns early if not. Here's an overview of what happens behind the scenes:

### Detecting the Current Folder

- When you execute `npm init`, `yarn init`, or `pnpm init`, the script detects the name of the current working directory. This name is used to create a new GitHub repository.

### Creating a GitHub Repository

- The script prompts you to choose a GitHub organization for the new repository. It presents the list of organizations you are a part of using the GitHub CLI.
- If you don't choose an organization, it defaults to creating the repository under your personal GitHub account.
- The repository is created with the name matching your current directory and is set to private by default.

### Cloning the Repository

- After creating the GitHub repository, the script clones it into your current working directory. This sets up a Git remote named `origin` pointing to your new GitHub repository.
- This step links your local directory and the GitHub repository, ready for version control and collaboration.

### Running the Original Init Command

- The script executes the original `npm init`, `yarn init`, or `pnpm init` command. This initializes your project as a Node.js project, creating a `package.json` file.
- You'll be prompted with the usual questions by `npm`, `yarn`, or `pnpm` to configure your `package.json`.

### Staging and Committing

- Finally, the script stages the `package.json` file and makes an initial commit to your repository. It then pushes this commit to the `main` branch of your new GitHub repository.

### Transparency and Control

- By automating these steps, `node-init-wrapper.sh` saves time and reduces repetitive tasks when starting a new Node.js project.
- The script is open source, allowing you to review, modify, and extend it as you see fit. This transparency ensures full control over what happens in your development environment.

## Ideal for

- Node.js developers using `npm`, `yarn`, or `pnpm` for project management.
- Those looking to automate the link between `npm | yarn | pnpm init` and GitHub repository creation.
- Users seeking an extended functionality hook for any of these package managers.
- Developers aiming to streamline their initial project setup process in Node.js.

## Enhancing Your Experience

Beyond the basic setup, you can further customize and enhance your Node.js project initialization experience. Here are some additional steps you can take:

### Setting Npm Defaults

Using `npm set`, define default values for your `npm init` process. This saves time and ensures consistency across projects. For example:

- Set your default author name and email:

  ```bash
  npm set init-author-name "Your Name"
  npm set init-author-email "your.email@example.com"
  npm set init-author-url "http://yourwebsite.com"
  ```

- Set a default license:

  ```bash
  npm set init-license "MIT"
  ```

These defaults will be used every time you run `npm|yarn|pnpm init`, streamlining the process.


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

## Keywords

- Npm init hook, yarn init automation, pnpm setup script, GitHub repository integration, Node.js project initialization, automate npm/yarn/pnpm setup, npm/yarn/pnpm and GitHub automation tool.
