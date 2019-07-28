FROM ubuntu:18.04

ARG QT_mVER='5.12'
ARG QT_VER='5.12.0'
	
ENV \
	QT_mVER=${QT_mVER} \
	QT_VER=${QT_VER} \
	QT_SRC=http://mirrors.ukfast.co.uk/sites/qt.io/archive/qt/${QT_mVER}/${QT_VER}/single/qt-everywhere-src-${QT_VER}.tar.xz \
	#QT_SRC=http://download.qt.io/archive/qt/${QT_mVER}/${QT_VER}/single/qt-everywhere-src-${QT_VER}.tar.xz \
	QT_SRCDIR='~/qt-src-${QT_VER}'

#ADD downloadqt.sh ~/downloadqt.sh
RUN apt-get install -y make g++ g++-mingw-w64-x86-64 python
RUN apt-get update && \
	apt-get install -y wget xz-utils  && \
	apt-get clean && \
	cd ~ && \
	echo $QT_SRC && \
	wget -P ~ -q $QT_SRC -O qt-src-${QT_VER}.tar.xz && \
	xz -T 0 -d ~/qt-src-${QT_VER}.tar.xz && \
	tar -xf qt-src-${QT_VER}.tar && \
	rm qt-src-${QT_VER}.tar
	

#CMD ['/bin/bash']
