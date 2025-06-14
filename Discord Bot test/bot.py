import discord
from discord import app_commands
import os

class MyClient(discord.Client):
    def __init__(self):
        super().__init__(intents=discord.Intents.default())
        self.tree = app_commands.CommandTree(self)

    async def on_ready(self):
        print(f'Logged in als {self.user} (ID: {self.user.id})')
        await self.tree.sync()

client = MyClient()

@client.tree.command(name="huh", description="Responds with 'what?'")
async def huh_command(interaction: discord.Interaction):
    await interaction.response.send_message("what?")

if __name__ == "__main__":
    token = os.getenv("DISCORD_TOKEN")
    if not token:
        print("FOUT: Discord token niet gevonden in DISCORD_TOKEN environment variable.")
        exit(1)
    client.run(token)
