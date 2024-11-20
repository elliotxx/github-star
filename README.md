![github-star](https://socialify.git.ci/elliotxx/github-star/image?description=1&font=Raleway&issues=1&language=1&name=1&owner=1&pattern=Circuit%20Board&pulls=1&stargazers=1&theme=Auto)

# GitHub Star Statistics

A tool to analyze and visualize the daily star statistics of GitHub repositories.

## Features

- Track daily star counts for any GitHub repository
- Generate statistics and trends
- Easy-to-use command line interface
- Colorful output for better visualization

## Prerequisites

- GitHub CLI (`gh`)
- `jq` command line tool
- Bash shell environment

## Installation

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

## Usage

There are several ways to use this tool:

### 1. Direct Usage (Without Cloning)

```bash
# Using curl
curl -s https://raw.githubusercontent.com/elliotxx/github-star/main/github-star.sh | bash -s -- kubernetes/kubernetes

# Using wget
wget -qO- https://raw.githubusercontent.com/elliotxx/github-star/main/github-star.sh | bash -s -- golang/go

# Pipe directly to bash
bash <(curl -s https://raw.githubusercontent.com/elliotxx/github-star/main/github-star.sh) denoland/deno
```

### 2. Local Installation

```bash
# Clone the repository
git clone https://github.com/elliotxx/github-star.git
cd github-star

# Make the script executable
chmod +x github-star.sh

# Run the script
./github-star.sh owner/repo
```

### 3. Alias Setup

Add one of these aliases to your shell configuration file (`~/.bashrc`, `~/.zshrc`, etc.):

```bash
# Basic alias
alias ghstar='/path/to/github-star.sh'

# Direct from GitHub (no local file needed)
alias ghstar='curl -s https://raw.githubusercontent.com/elliotxx/github-star/main/github-star.sh | bash -s --'

# Example usage with alias
ghstar kubernetes/kubernetes
```

## Output Format

The script outputs data in the following format:
- Date: The date when stars were received
- Stars: Number of stars received on that date
- Total: Cumulative total of stars
- Trend: Visual indicator of star growth

## License

MIT License
