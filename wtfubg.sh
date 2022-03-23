# mv to Desktop
cd ~/Desktop/

# clone the repo
git clone https://github.com/metostom/video-to-ascii.git

# get in there
cd ~/Desktop/video-to-ascii/

# switch to easy install branch
git checkout install-quick

# setup venv/activate and install 
python3 -m venv ~/Desktop/video-to-ascii/wtfubg
source ~/Desktop/video-to-ascii/wtfubg/bin/activate

# install python packages
pip3 install -r requirements.txt

# install portaudio and python packaag
brew install portaudio
python3 -m pip install --global-option='build_ext' --global-option='-I/opt/homebrew/Cellar/portaudio/19.7.0/include' --global-option='-L/opt/homebrew/Cellar/portaudio/19.7.0/lib' pyaudio

# call that ish
python3 video-to-ascii.py -f newalarm.mp4 --with-audio
