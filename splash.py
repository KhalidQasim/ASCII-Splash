import random
import os

cows = os.listdir("/usr/share/cowsay/cows")
cows_count = len(cows)
i = random.randrange(cows_count)
os.system("fortune | cowsay -f " + cows[i] + " | lolcat -F 0.3")

