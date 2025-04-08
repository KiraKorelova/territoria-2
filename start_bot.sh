#!/bin/bash
cd /Users/kirakorelova/telegram_bot
tmux new-session -d -s telegram_bot 'source venv/bin/activate && python3 telegram_forwarder_bot.py'
echo "Бот запущен в tmux сессии"
node index.js
npm install node-telegram-bot-api dotenv