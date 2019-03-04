import random
import os

# Get installed cows
cows = os.listdir("/usr/share/cowsay/cows")

# Count installed cows
cows_count = len(cows)

# Pick a cow number randomly
i = random.randrange(cows_count)

# Output the colorful quoting cow!
os.system("fortune | cowsay -f " + cows[i] + " | lolcat -F 0.3")
