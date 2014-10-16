# Logstash in Docker

Sets up a container based on [walm/java](https://github.com/walm/docker-java)

## Includes

  * Logstash 1.4.2

## Usage

Logstash config is read from `/conf/logstash.conf`. No default configuration
is included so volume for `/conf` needs to be mounted.

To run the container, do the following if your `logstash.conf` exists in `/opt/etc/logstash/`

    docker run -d -v /opt/etc/logstash:/conf walm/logstash

## Building

To build the image, simply invoke

    docker build github.com/walm/docker-logstash

A prebuilt container is also available in the docker index

    docker pull walm/logstash

## Author

  * Andreas Wålm (<andreas@walm.net>)

## LICENSE

Copyright (c) 2014 Andreas Wålm

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
