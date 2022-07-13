# Create HTML5 color roles. <>

from lib.client import Client
from discord import Intents
from os import environ as env

token = env['DISCORD_TOKEN']

intents = discord.Intents.default()

intents.message_content = True

client = Client(intents=intents)

client.run(token)
