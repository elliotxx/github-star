![github-star](https://socialify.git.ci/elliotxx/github-star/image?description=1&font=Raleway&issues=1&language=1&name=1&owner=1&pattern=Circuit%20Board&pulls=1&stargazers=1&theme=Auto)

# ⭐️ GitHub Star 统计工具

🐚 一个轻量级的 Shell 脚本，用于分析和可视化 GitHub 仓库的每日 Star 统计数据

[English](./README.md) | [简体中文](./README_zh-CN.md)

## ✨ 特性

- 📊 追踪任意 GitHub 仓库的每日 Star 数量
- 📈 生成统计数据和趋势
- 💻 简单易用的命令行界面
- 🎨 彩色输出以更好地展示数据

## 🚀 使用前提

> ⚠️ **重要提示：**
> - 目前仅支持 macOS 系统
> - 需要 GitHub CLI 认证
> - 需要网络连接以访问 API

必需工具：
- 🔧 macOS 操作系统
- 🛠 GitHub CLI (`gh`)
- 🔍 `jq` 命令行工具
- 🐚 Bash shell 环境

## 🔧 安装

1. 安装 GitHub CLI：
```bash
brew install gh
```

2. 安装 jq：
```bash
brew install jq
```

3. 登录 GitHub：
```bash
gh auth login
```

## 📖 使用方法

有以下几种使用方式：

### 1. 🌐 直接使用（无需下载）

```bash
# 使用 curl
curl -s https://raw.githubusercontent.com/elliotxx/github-star/main/github-star.sh | bash -s -- kubernetes/kubernetes

# 使用 wget
wget -qO- https://raw.githubusercontent.com/elliotxx/github-star/main/github-star.sh | bash -s -- golang/go

# 直接通过 bash 执行
bash <(curl -s https://raw.githubusercontent.com/elliotxx/github-star/main/github-star.sh) denoland/deno
```

### 2. 💾 本地安装

```bash
# 下载脚本
curl -O https://raw.githubusercontent.com/elliotxx/github-star/main/github-star.sh

# 添加执行权限
chmod +x github-star.sh

# 运行脚本
./github-star.sh owner/repo

# 使用示例
./github-star.sh kubernetes/kubernetes
```

### 3. ⚡️ 别名设置

将以下别名添加到你的 shell 配置文件（`~/.bashrc`、`~/.zshrc` 等）：

```bash
# 基础别名
alias ghstar='/path/to/github-star.sh'

# 直接从 GitHub 运行（无需本地文件）
alias ghstar='curl -s https://raw.githubusercontent.com/elliotxx/github-star/main/github-star.sh | bash -s --'

# 别名使用示例
ghstar kubernetes/kubernetes
```

## 📊 输出格式

脚本输出包含以下信息：
- 📅 日期：获得 Star 的日期
- ⭐️ Stars：当天获得的 Star 数量
- 📈 总计：累计 Star 总数
- 🔄 趋势：Star 增长趋势的可视化指示

## ⚖️ 许可证

MIT 许可证
