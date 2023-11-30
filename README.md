# Announcement Script for FiveM
This script allows players to send announcements with different styles based on their job in the server.
## Configuration
In the  `config.lua`  file, you can customize the script configuration. Here are some key details:
-  `Config.Framework` : Set the framework you are using ( `esx`  or  `qbcore` ).
-  `Config.Command` : Specify the command to send an announcement ( `/announce`  by default).
-  `Config.Jobs` : Define the configuration for each job. You can add more jobs following the provided structure.
## Usage
1. Download the script and place it in the resources folder of your FiveM server.
2. Add  `start announce`  to your  `server.cfg`  file to start the script.
3. Adjust the configuration in  `config.lua`  according to your preferences and jobs.
4. Restart your FiveM server.
### Adding More Jobs
To add more jobs, simply copy the configuration block of an existing job and modify the values as needed. Make sure to follow the same format.
Example of adding a new job "taxi":
taxi = {
    logo = "LOGO_URL", 
    backgroundColor = "rgba(0, 128, 0, 0.7)", 
    barColor = "rgb(255, 255, 0)", 
    textColor = "rgb(0, 0, 0)", 
},
Remember to restart your server after making changes to the configuration.
## Usage Example
In the game, players can send an announcement using the command  `/announce` . The script will use the player's current job configuration to display an announcement with the corresponding style.
[Creator](discord.gg/nima_picaroon)
