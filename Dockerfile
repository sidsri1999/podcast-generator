FROM ubuntu:latest

# Get the latest information for latest packages available, and install the given dependencies
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

# installs PyYAML
RUN pip3 install PyYAML

# Copies feed.py and entrypoint
COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

# Runs entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]