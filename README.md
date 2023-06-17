# Description

Create a backend app with light web framework (javascript you will use express, ruby you will use sinatra, python you will use flask)

You don't need to create a database, just store the information hard coded inside your file.

In order to find all the information needed, you will have to search online. Wikipedia, Google and Fan's website will have all the information you need for this project! :)

## Part I

It will have a route GET on /. This action will give randomly (in a pool of at least 20) a name of a song from Frank Sinatra.
Wikipedia Page

Example 01
``
$>curl -i http://127.0.0.1:8000
HTTP/1.1 200 OK
Content-Type: text/html;charset=utf-8
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
Content-Length: 19

New York, New York
$>
``

Example 02

`
$>curl http://127.0.0.1:8000
My Way
$>
`

## Part II

Continue to build your backend app.js.
This time we will add multiple pages or routes:

    GET on /. This action will give randomly (in a pool of at least 20) a name of a song from Frank Sinatra.
    Wikipedia Page

    GET on /birth_date. This action will give Frank Sinatra birth date.

    GET on /birth_city. This action will give Frank Sinatra birth city.

    GET on /wives. This action will give all the name of Frank Sinatra wife.

Format:
wife1, wife2, wife3, wife4

    GET on /picture. This action will redirect to Frank Sinatra's picture.

    (https://en.wikipedia.org/wiki/Frank_Sinatra#/media/File:Frank_Sinatra2,_Pal_Joey.jpg)

Example01

`
$>curl -i http://127.0.0.1:8000
HTTP/1.1 200 OK
Content-Type: text/html;charset=utf-8
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
Content-Length: 19

New York, New York
$>
`

Example02

`
$>curl http://127.0.0.1:8000
My Way
$>
`

## Part III

Continue to build your backend app.js, in this last part we will add two more routes:

    GET on /public. This action will print "Everybody can see this page"

    GET on /protected. This action will be protected by a HTTP Basic access authentication and print "Welcome, authenticated client" if you are authorized with the login admin and password admin otherwise it will provide a 401 Not authorized.

Example01

`
$>curl -i http://127.0.0.1:8000/protected
HTTP/1.1 401 Unauthorized
Content-Type: text/html;charset=utf-8
WWW-Authenticate: Basic realm="Restricted Area"
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
Content-Length: 15

Not authorized
$>
`

Example02

`
$>curl -i http://admin:admin@127.0.0.1:8000/protected
HTTP/1.1 200 OK
Content-Type: text/html;charset=utf-8
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
Content-Length: 29

Welcome, authenticated client
$>
`

Example02

`
$>curl -i http://127.0.0.1:8000/public
HTTP/1.1 200 OK
Content-Type: text/html;charset=utf-8
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
Content-Length: 27

Everybody can see this page
$>
`
