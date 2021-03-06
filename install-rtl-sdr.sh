#!/bin/sh
#configure software needed for RTL-SDR use
sudo apt-get install gqrx-sdr rtl-sdr librtlsdr-dev
sudo wget -O /etc/udev/rules.d/20-rtlsdr.rules http://raw.githubusercontent.com/osmocom/rtl-sdr/master/rtl-sdr.rules

#need to blacklist default module providing TV tuner supprot, to allow module providing SDR functionality to work
cat blacklist-dvb_usb_rtl28xxu.txt | sudo tee -a /etc/modprobe.d/blacklist-rtl.conf
echo 'blacklisting default vb_usb_rtl28xxu module to allow SDR use'
