# mv to Desktop
cd ~/Desktop/

# clone the repo
git clone https://github.com/metostom/wtfubg.git

# get in there
cd ~/Desktop/wtfubg/

# setup venv/activate and install 
python3 -m venv ~/Desktop/wtfubg/wtfubgenv
source ~/Desktop/wtfubg/wtfubgenv/bin/activate

#ffmpeg
brew install ffmpeg

# install python packages
pip3 install -r requirements.txt

# install portaudio and python packaag
brew install portaudio
pip3 install pyaudio

# call that ish
python3 video-to-ascii.py -f newalarm.mp4 --with-audio
