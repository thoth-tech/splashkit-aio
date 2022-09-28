#!/bin/bash

echo "---Installing SplashKit Manager...---";
bash <(curl -s https://raw.githubusercontent.com/splashkit/skm/master/install-scripts/skm-install.sh);
echo "---SplashKit Manager installed---";

	
echo "---Installing SplashKit linux dependencies...---";
./root/.splashkit/skm linux install -y;
apt-get install cmake libpng-dev libcurl4-openssl-dev libsdl2-dev libsdl2-mixer-dev libsdl2-gfx-dev libsdl2-image-dev libsdl2-net-dev libsdl2-ttf-dev libmikmod-dev libncurses5-dev libbz2-dev libflac-dev libvorbis-dev libwebp-dev libfreetype6-dev build-essential;
echo "---SplashKit linux dependencies installed---";

echo "---Installing .Net 6 LTS Core SDK using apt Package...---";
apt-get install -y dotnet6;
echo "---.Net 6 LTS Core SDK using apt Package installed---";
	
echo "---Installing Nano IDE...---";
apt-get install -y nano;
echo "---Nano IDE installed---";

echo "---Installation Complete!---"
