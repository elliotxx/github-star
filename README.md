![github-star](https://socialify.git.ci/elliotxx/github-star/image?description=1&font=Raleway&issues=1&language=1&name=1&owner=1&pattern=Circuit%20Board&pulls=1&stargazers=1&theme=Auto)

# GitHub Star Statistics

🐚 A lightweight shell script to analyze and visualize the daily star statistics of GitHub repositories.

[English](./README.md) | [简体中文](./README_zh-CN.md)

## ✨ Features

- 📊 Track daily star counts for any GitHub repository
- 📈 Generate statistics and trends
- 💻 Easy-to-use command line interface
- 🎨 Colorful output for better visualization

## 🚀 Prerequisites

> ⚠️ **Important Notes:**
> - Currently only supports macOS
> - Requires GitHub CLI authentication
> - Internet connection required for API access

Required tools:
- 🔧 macOS operating system
- 🛠 GitHub CLI (`gh`)
- 🔍 `jq` command line tool
- 🐚 Bash shell environment

## 🔧 Installation

1. Install GitHub CLI:
```bash
brew install gh
```

2. Install jq:
```bash
brew install jq
```

3. Login to GitHub:
```bash
gh auth login
```

## 📖 Usage

There are several ways to use this tool:

### 1. 🌐 Direct Usage (No Download Required)

```bash
# Using curl
curl -s https://raw.githubusercontent.com/elliotxx/github-star/main/github-star.sh | bash -s -- KusionStack/karpor

# Using wget
wget -qO- https://raw.githubusercontent.com/elliotxx/github-star/main/github-star.sh | bash -s -- KusionStack/karpor

# Pipe directly to bash
bash <(curl -s https://raw.githubusercontent.com/elliotxx/github-star/main/github-star.sh) KusionStack/karpor
```

### 2. 💾 Local Installation

```bash
# Download the script
curl -O https://raw.githubusercontent.com/elliotxx/github-star/main/github-star.sh

# Make the script executable
chmod +x github-star.sh

# Run the script
./github-star.sh owner/repo

# Example usage
./github-star.sh KusionStack/karpor
```

### 3. ⚡️ Alias Setup

Add one of these aliases to your shell configuration file (`~/.bashrc`, `~/.zshrc`, etc.):

```bash
# Basic alias
alias ghstar='/path/to/github-star.sh'

# Direct from GitHub (no local file needed)
alias ghstar='curl -s https://raw.githubusercontent.com/elliotxx/github-star/main/github-star.sh | bash -s --'

# Example usage with alias
ghstar KusionStack/karpor
```

## 📊 Output Format

The script outputs data in the following format:
- 📅 Date: The date when stars were received
- ⭐️ Stars: Number of stars received on that date
- 📈 Total: Cumulative total of stars
- 🔄 Trend: Visual indicator of star growth

## ⚖️ License

MIT License
