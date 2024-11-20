#!/bin/bash

# 检查参数
if [ $# -ne 1 ]; then
  echo "Usage: $0 owner/repo"
  echo "Example: $0 kubernetes/kubernetes"
  exit 1
fi

REPO=$1

# 检查是否安装了 gh 命令
if ! command -v gh &>/dev/null; then
  echo "GitHub CLI (gh) is not installed. Please install it first."
  echo "Visit: https://cli.github.com/"
  echo "Install with: brew install gh"
  exit 1
fi

# 检查是否已登录
if ! gh auth status &>/dev/null; then
  echo "Please login to GitHub first using: gh auth login"
  exit 1
fi

echo "Fetching stargazers data for $REPO..."

# 使用临时变量存储分隔符
SEP="__SEPARATOR__"

# 获取并格式化输出
(
  echo "Date${SEP}Stars${SEP}Total${SEP}Trend"
  gh api --paginate "/repos/$REPO/stargazers" \
    --header "Accept: application/vnd.github.v3.star+json" |
    jq -r '.[].starred_at' |
    awk -F'T' '{print $1}' |
    sort -n |
    uniq -c |
    awk -v sep="${SEP}" 'BEGIN {
            total = 0
            # ANSI 颜色代码
            gray = "\033[90m"    # 灰色
            green = "\033[32m"   # 绿色
            yellow = "\033[33m"  # 黄色
            red = "\033[31m"     # 红色
            reset = "\033[0m"
         }
         {
            total += $1
            stars = $1
            # 根据 star 数量决定显示的标记
            if (stars == 0) mark = gray "·" reset
            else if (stars == 1) mark = gray "+" reset
            else if (stars <= 3) mark = green "++" reset
            else if (stars <= 5) mark = green "+++" reset
            else if (stars <= 8) mark = green "++++" reset
            else if (stars <= 12) mark = yellow "🔥" reset
            else if (stars <= 20) mark = yellow "🔥+" reset
            else if (stars <= 35) mark = yellow "🔥++" reset
            else if (stars <= 50) mark = red "🚀" reset
            else if (stars <= 80) mark = red "🚀+" reset
            else if (stars <= 120) mark = red "🚀++" reset
            else mark = red "🚀🔥" reset

            printf "%s%s%s%s%d%s%s\n", $2, sep, $1, sep, total, sep, mark
         }'
) | awk -F"${SEP}" '{printf "%-12s%-7s%-7s%s\n", $1, $2, $3, $4}'

echo
echo -e "Trend Legend:"
echo -e "\033[90m·\033[0m: 0 stars     \033[90m+\033[0m: 1 star"
echo -e "\033[32m++\033[0m: 2-3 stars   \033[32m+++\033[0m: 4-5 stars   \033[32m++++\033[0m: 6-8 stars"
echo -e "\033[33m🔥\033[0m: 9-12 stars   \033[33m🔥+\033[0m: 13-20 stars   \033[33m🔥++\033[0m: 21-35 stars"
echo -e "\033[31m🚀\033[0m: 36-50 stars   \033[31m🚀+\033[0m: 51-80 stars   \033[31m🚀++\033[0m: 81-120 stars"
echo -e "\033[31m🚀🔥\033[0m: >120 stars"