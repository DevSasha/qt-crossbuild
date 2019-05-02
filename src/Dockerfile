FROM ubuntu:18.04

#ARG \
	#QT_VER=5.12.2 \
	#QT_mVER=5.12 \
	#QT_SRC=https://download.qt.io/archive/qt/${QT_mVER}/${QT_VER}/single/qt-everywhere-src-${QT_VER}.tar.xz \
	#QT_SRCDIR=~/qt-src-${QT_VER}
	
ENV \
	QT_VER=${QT_VER} \
	QT_mVER=${QT_mVER} \
	QT_SRC=${QT_SRC} \
	QT_SRCDIR=${QT_SRCDIR}

RUN apt-get update && \
	apt-get install -y curl xz-utils && \
	apt-get clean && \
	cd ~ && \
	curl $QT_SRC -o ~/qt-src-$QT_VER.tar.xz && \
	xz -T 0 -d qt-src-$QT_VER.tar.xz && \
	tar -xf qt-src-$QT_VER.tar && \
	rm qt-src-$QT_VER.tar
	
RUN apt-get install -y make g++ g++-mingw-w64-x86-64 python
