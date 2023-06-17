##Description

Create a backend app with light web framework (javascript you will use express, ruby you will use sinatra, python you will use flask)

You don't need to create a database, just store the information hard coded inside your file.

In order to find all the information needed, you will have to search online. Wikipedia, Google and Fan's website will have all the information you need for this project! :)
Part I

It will have a route GET on /. This action will give randomly (in a pool of at least 20) a name of a song from Frank Sinatra.
Wikipedia Page

Example00

$>curl -i http://web-XXXXXXXXX.docode.YYYY.qwasar.io
HTTP/1.1 200 OK
Content-Type: text/html;charset=utf-8
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
Content-Length: 19

New York, New York
$>

Example01

$>curl http://web-XXXXXXXXX.docode.YYYY.qwasar.io
My Way
$>

