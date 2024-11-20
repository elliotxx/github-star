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

```bash
./github-star.sh owner/repo
```

Example:
```bash
./github-star.sh kubernetes/kubernetes
```

## Output Format

The script outputs data in the following format:
- Date: The date when stars were received
- Stars: Number of stars received on that date
- Total: Cumulative total of stars
- Trend: Visual indicator of star growth

## License

MIT License
