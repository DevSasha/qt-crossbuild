FROM devsasha/qt-xbuild:qt-src-5.12.2

RUN ./configure \
	-opensource \
	-confirm-license \
	-xplatform win32-g++ \
	-device-option CROSS_COMPILE=/usr/bin/x86_64-w64-mingw32- \
	-device-option PKG_CONFIG=/usr/bin/x86_64-w64-mingw32-pkg-config \
	-release \
	-prefix /usr/local/qt/5.12.2 \
	-no-iconv \
	-opengl desktop \
	-no-glib \
	-no-gstreamer \
	-accessibility \
	-no-reduce-exports \
	-no-rpath \
	-make libs \
	-nomake examples \
	-sql-sqlite \
	-no-pch \
	-skip qtactiveqt && \
	make -j5 && make install
