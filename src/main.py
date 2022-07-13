#!/usr/bin/env python3

# Create HTML5 color roles. <>

from lib.client import Client
import discord
from os import environ as env

token = env['DISCORD_TOKEN']

intents = discord.Intents.default()

print(intents)
# intents.message_content = True

client = Client(intents=intents)

client.run(token)
