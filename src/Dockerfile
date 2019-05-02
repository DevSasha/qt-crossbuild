FROM ubuntu:18.04

ARG \
	QT_VER=5.12 \
	QT_UPDATE=${QT_VER}.2 \
	QT_SRC=https://download.qt.io/archive/qt/${QT_VER}/${QT_UPDATE}/single/qt-everywhere-src-${QT_UPDATE}.tar.xz \
	QT_SRCDIR=~/qt-src-${QT_UPDATE}

RUN apt-get update && \
	apt-get install -y curl xz-utils && \
	apt-get clean && \
	cd ~ && \
	curl ${QT_SRC} -o ~/qt-src-${QT_UPDATE}.tar.xz && \
	xz -T 0 -d qt-src-${QT_UPDATE}.tar.xz && \
	tar -xf qt-src-${QT_UPDATE}.tar && \
	rm qt-src-${QT_UPDATE}.tar
	
RUN apt-get install -y make g++ g++-mingw-w64-x86-64 python
