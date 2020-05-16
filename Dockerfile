FROM debian:buster-slim

RUN sed -i -e "s/deb.debian/ftp.hk.debian/g" /etc/apt/sources.list \
	&& apt-get update && apt-get install -y --no-install-recommends \
	fonts-noto \
	fonts-noto-cjk \
	fonts-noto-color-emoji \
	dbus-x11 \
	ibus \
	ibus-clutter \
	ibus-gtk \
	ibus-gtk3 \
	ibus-libpinyin \
	&& rm -rf /var/lib/apt/lists/*

ENV LANG zh_CN.UTF-8
ENV LC_MESSAGES en_US.UTF-8
ENV LC_ALL=C
ENV XMODIFIERS=@im=ibus
ENV QT_IM_MODULE=ibus
ENV GTK_IM_MODULE=ibus

