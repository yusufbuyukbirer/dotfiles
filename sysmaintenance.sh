# Cleaning pacman cache
sudo paccache -r

#Clean Cache Directory
rm -rf ~/.cache/*

#System Logs Clean-up
sudo journalctl --vacuum-time=7d


