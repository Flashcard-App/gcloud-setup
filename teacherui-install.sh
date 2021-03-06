# Written by Marc Bacvanski
# DO NOT RUN THIS FILE BY ITSELF!!!
# It's called by install.sh - run that one instead.

echo "--------------------- Installing Node.js and NPM. ----------------------"

sudo apt-get install -y nodejs npm

echo "----------------- Finished installing Node.js and NPM. -----------------"

npm install -g n
sudo n stable

echo "---------------------- Updating Node.js complete. ----------------------"

mkdir ~/Servers
cd ~/Servers/

echo "--------------------- Created directory ~/Servers. ---------------------"

git clone https://github.com/Flashcard-App/Flashcard-App-TeacherUI.git

echo "----------- Cloned into ~/Servers/Flashcard-App-TeacherUI/. ------------"

cd ~/Servers/Flashcard-App-TeacherUI/

echo "-------------------- Installing Node.js libraries. ---------------------"

npm install

echo "---------------- Finished installing Node.js libraries. ----------------"
echo "------------------------ Finishing installation. -----------------------"

sudo chmod +x server.js

echo "------------ All done! Run nodejs server.js to get started! ------------"
