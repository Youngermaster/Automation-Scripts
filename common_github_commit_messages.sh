#!/usr/bin/env bash

BLUE='\033[0;34m' # Blue color
RED='\033[0;31m' # RED color
NC='\033[0m' # No Color
README='readme'
echo -e "${BLUE}GitHub common messages Running...${NC}"
read -p "Which common message? " message
if [ "$message" == "readme" ]; then
    echo -e "📜 README.md Updated"
elif [ "$message" == "little" ]; then
    echo -e "🔥 little changes added"
elif [ "$message" == "new" ]; then
    echo -e "⚡ new feature added"
else
    echo -e "${RED}$message not found ${NC}👋"
fi
