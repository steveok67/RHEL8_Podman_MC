#====================================================================
# Title:    RHEL 8 Podman Demo with Minecraft
# Author:   sjk
# Date:     February 2020
# Revision: 0.2
#====================================================================

Step 0: Download the Minecraft App, and create an account for $25

Step 1: Create a RHEL 8 VM, and install podman
$ sudo dnf install podman

Step 2: Pull/Run Minecraft with a Spigot server
$ source ./0_minecraft_start_container.sh

Step 3: Add the plugin, and Red Hat schematic file
$ source ./1_minecraft_automation_script.sh <Minecraft_User_Name>

Step 4: Launch the Minecraft App

Step 5: Add the resource pack:
 - click on the options button
 - click on the resource packs button
 - click on open resource pack folder
 - this will open a folder.  Unzip RedHat_Pack.zip into that folder.
 - The RedHat Pack will now appear.  
 - click on the done button

Step 6: 
 - Click on the Multi-Player button
 - Click on the Add Server button
 - Enter the IP address and port:  e.g 10.88.0.1:25565
 - Click on the done button

Step 7:
 - Select the "Minecraft Server" instance labeled:
   "A Spigot Minecraft Server powered by Docker"
 - Click on the Join Server button

Step 8: Load the Red Hat Tower schematic
 - type // to enter the console inside the Minecraft app
 - Load the Schematic:  //schem load RedHat

Step 9: paste in the Red Hat Tower
 - //paste
 - Give it a few seconds to load, then navigate in a circle with the
   arrow keys to locate the tower.

Step 10: Locate the brown button in front of the tower.
 - press control-and press the button with a mouse click.
 - this will add employees with red hats inside the Tower building.

Step 11: Press W to walk forward into the Glass entrance.
 - press s to walk backwards.

Clean-up:
 - disconnect minecraft (escape, then press the disconnect button)
 - remove the container: $ ./2_rm_container.sh

#====================================================================
# Title: END OF FILE
#====================================================================
