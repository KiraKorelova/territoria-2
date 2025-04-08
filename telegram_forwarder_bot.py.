   from telethon import TelegramClient, events
   import os
   import logging

   # Настройка логирования
   logging.basicConfig(level=logging.INFO)

   # Данные для подключения
   API_ID = os.getenv('API_ID')
   API_HASH = os.getenv('API_HASH')
   BOT_TOKEN = os.getenv('BOT_TOKEN')

   # ID канала назначения
   DESTINATION_CHANNEL = -1002384345603

   async def main():
       client = TelegramClient('bot_session', API_ID, API_HASH).start(bot_token=BOT_TOKEN)

       @client.on(events.NewMessage(pattern='/start'))
       async def start_command(event):
           await event.reply("Привет! Я бот для перенаправления сообщений.")

       @client.on(events.NewMessage)
       async def forward_messages(event):
           if event.message.text != '/start':
               await client.forward_messages(DESTINATION_CHANNEL, event.message)

       await client.run_until_disconnected()

   if __name__ == '__main__':
       import asyncio
       asyncio.run(main())
