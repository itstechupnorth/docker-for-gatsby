#
#    MIT License
#
#    Copyright (c) 2018 Robert Burrell Donkin (https://github.com/itstechupnorth/)
#
#    Permission is hereby granted, free of charge, to any person obtaining a copy
#    of this software and associated documentation files (the "Software"), to deal
#    in the Software without restriction, including without limitation the rights
#    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#    copies of the Software, and to permit persons to whom the Software is
#    furnished to do so, subject to the following conditions:
#
#    The above copyright notice and this permission notice shall be included in all
#    copies or substantial portions of the Software.
#
#    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#    SOFTWARE.
#

FROM alpine:3.7

# Set application home
WORKDIR /usr/app

# Minimize layers
RUN \
# Aim is developer so install Bash
  apk add --no-cache bash && \ 
# git used by gateby in particular to create new projects 
  apk add --no-cache git && \
# Gatsby installed by npm
  apk add --no-cache nodejs-npm && \ 
# install gatsby
  npm install --global gatsby-cli && \
# Create mapped gatsby user
  addgroup gatsby -g 9001 && \
  adduser -h /home/gatsby -G gatsby -u 9005 gatsby -D -s /bin/bash && \
# Own application home by user
  chown gatsby:gatsby /usr/app
# Ensure group is writable
COPY gatsby_profile /home/gatsby/.bashrc
# Set application user
USER gatsby

