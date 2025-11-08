This is a quick guide for adding a Canon PIXMA TR4550 printer to an Arch linux system.

It's not the best, but I hope its understandable. 

You can also do it manually instead of using the script, if you dont feel it's safe. I will also try to explain it as well as possible. Feel free to correct me :)

In the terminal >_

Firstly we will Update and Upgrade our System and than we will install the necassary packages.
```
sudo pacman -Syu
sudo pacman -S cups cups-pdf ghostscript gsfonts system-config-printer
```
After installing, we are going to enable the CUPS service and start automatically on boot. And than we are checking if everthing is up and running.
```
sudo systemctl enable --now cups.service
sudo systemctl enable --now cups.socket cups.path
systemctl status cups.service
```
If everything work than we can proceed to the browser.✅
If there are Problems feel free to ask me or if you have a solution, please post it here. I will add it to the Document later on.


In the browser 🌐, we will navigate to "http://localhost:631".

For the login:
Username: Laptop User
Password: User Password

Press on the Administrative Tab:

<img width="1588" height="524" alt="image" src="https://github.com/user-attachments/assets/1682dcf5-0771-412e-b3fa-2527b385232a" />

Add Printer
<img width="1377" height="561" alt="image" src="https://github.com/user-attachments/assets/1cb63465-748a-4373-bf53-087016ff1aef" />

In my case i found my printer unter my Discovered Network Printers
<img width="977" height="559" alt="image" src="https://github.com/user-attachments/assets/9c34c83d-7470-4368-a7a5-287744e5dbbe" />

I leave these options as they are

<img width="597" height="482" alt="image" src="https://github.com/user-attachments/assets/87bd235a-225d-4606-910e-15f463c00c90" />

And under the Model, you should see the needed driver
<img width="757" height="671" alt="image" src="https://github.com/user-attachments/assets/eb57380f-c60d-4fad-9949-76ae20a8f8c5" />


This did it for me and I also hope it works for you.
