#kill all processes that are found with <search string>
ps aux | grep -ie <search string> | awk '{print $2}' | xargs kill -9 

#add variables to path globally for bash:
echo 'export PATH=$PATH:~/.meteor' >> ~/.bashrc