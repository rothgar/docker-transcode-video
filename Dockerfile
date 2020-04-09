# docker run -i -t --rm -v $PWD:/srv transcode-video bash
FROM ruby

RUN apt update && apt install -y ffmpeg handbrake-cli mkvtoolnix

RUN gem install video_transcoding

CMD /bin/bash
