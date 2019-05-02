FROM ubuntu:18.04

ENV \
	#QTSRC=https://download.qt.io/archive/qt/5.12/5.12.2/single/qt-everywhere-src-5.12.2.tar.xz
	#QTSRC=http://qtproject.freemirror.org/qtproject/archive/qt/5.12/5.12.2/single/qt-everywhere-src-5.12.2.tar.xz \
	QTSRC=http://qt.mirror.constant.com/archive/qt/5.12/5.12.2/single/qt-everywhere-src-5.12.2.tar.xz \
	#QTSRC=http://mirrors.ukfast.co.uk/sites/qt.io/archive/qt/5.12/5.12.2/single/qt-everywhere-src-5.12.2.tar.xz \
	QTSRCDIR=~/qt-src-5.12.2

RUN apt-get update && \
	apt-get install -y curl xz-utils && \
	apt-get clean && \
	cd ~ && \
	curl ${QTSRC} -o ~/qt-src-5.12.2.tar.xz && \
	#wget ${QTSRC} -nv -O ~/qt-src-5.12.2.tar.xz --progress=bar --show-progress && \
	xz -T 0 -d qt-src-5.12.2.tar.xz && \
	tar -xf qt-src-5.12.2.tar && \
	rm qt-src-5.12.2.tar
