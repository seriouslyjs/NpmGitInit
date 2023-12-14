# NpmGitInit 🚀 - Your Go-To for npm, yarn & pnpm Init Hooks!

## Description

🛠️ **NpmGitInit** is your magic wand for Node.js project setups! Serving as a nifty hook for `npm`, `yarn`, and `pnpm`, this shell script turbocharges your project initialization. It's like having a personal assistant for setting up GitHub repositories, tailored for Node.js enthusiasts.

🌐 Integrating repository creation and configuration seamlessly into your `init` command, **NpmGitInit** transforms the mundane into the extraordinary! Whether you're a fan of `npm`, `yarn`, or `pnpm`, this script has got your back, ensuring a smooth, automated setup for your next big Node.js adventure.

🔍 Seeking an `npm init hook`? Need to bypass the usual `npm init` drill? Or hunting for something similar for `yarn` and `pnpm`? Look no further, **NpmGitInit** is here to jazz up your workflow!


## Features

- **Automated GitHub Repository Creation**: Simplifies the setup of a GitHub repository as part of the init process for `npm`, `yarn`, and `pnpm`.
- **Universal Init Hook**: Intercepts the `init` command across `npm`, `yarn`, and `pnpm`, adding powerful, automated functionality.
- **Project Directory Initialization**: Seamlessly blends the init process with GitHub, setting up your project directory along with a new repository.
- **Custom GitHub Organization Selection**: Enables selection of a GitHub organization during initialization, defaulting to your personal account if none is chosen.
- **Enhanced Initialization Process**: Transforms the standard `npm init`, `yarn init`, or `pnpm init` with added automation for Git and GitHub setup.

## Getting Started

### Prerequisites

- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) installed and configured on your system.
- [GitHub CLI](https://cli.github.com/manual/installation) installed and authenticated.
- [`jq`](https://stedolan.github.io/jq/download/) command-line JSON processor installed.
- A GitHub account for repository creation and management. [Sign up here](https://github.com/join) if you don't have one.

### Installation

Execute the following command in your terminal to install:

```bash
curl -sSL https://raw.githubusercontent.com/seriouslyjs/NpmGitInit/master/install.sh | bash
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

## How It Works

The `node-init-wrapper.sh` script is designed to streamline the process of setting up a new Node.js project by automating several steps that are typically done manually. **The script only cares if you call `init`** and returns early if not. Here's an overview of what happens behind the scenes when you run the script:

### Detecting the Current Folder

- When you execute `npm init`, `yarn init`, or `pnpm init`, the script first detects the name of the current working directory. This name is used to create a new GitHub repository, assuming that your project's name will be the same as the folder's name.

### Creating a GitHub Repository

- The script then prompts you to choose a GitHub organization for the new repository. It fetches the list of organizations you are a part of using the GitHub CLI and presents them as options.
- If you don't choose an organization, it defaults to creating the repository under your personal GitHub account.
- The repository is created with the name matching your current directory and is set to private by default.

### Cloning the Repository

- After creating the GitHub repository, the script clones it into your current working directory. This sets up a Git remote named `origin` pointing to your new GitHub repository.
- This step ensures that your local directory and the GitHub repository are linked, making it ready for version control and collaboration.

### Running the Original Init Command

- The script then executes the original `npm init`, `yarn init`, or `pnpm init` command. This step initializes your project as a Node.js project, creating a `package.json` file with the necessary details.
- You'll be prompted with the usual questions by `npm`, `yarn`, or `pnpm` to configure your `package.json`.

### Staging and Committing

- Finally, the script stages the `package.json` file and makes an initial commit to your repository. It then pushes this commit to the `main` branch of your new GitHub repository.

### Transparency and Control

- By automating these steps, `node-init-wrapper.sh` saves time and reduces the repetitive tasks typically associated with starting a new Node.js project.
- The script is open source, allowing you to review, modify, and extend it as you see fit. This transparency ensures you have full control over what happens in your development environment.

## Ideal for

- Node.js developers using `npm`, `yarn`, or `pnpm` for project management.
- Those looking to automate the link between `npm init`, `yarn init`, or `pnpm init` and GitHub repository creation.
- Users seeking an extended functionality hook for any of these package managers.
- Developers aiming to streamline their initial project setup process in Node.js.

## Enhancing Your Experience

Beyond the basic setup, you can further customize and enhance your Node.js project initialization experience. Here are some additional steps you can take:

### Setting Npm Defaults

Using `npm set`, you can define default values for your `npm init` process. This can save time and ensure consistency across projects. For example:

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
