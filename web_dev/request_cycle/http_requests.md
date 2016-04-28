# HTTP Requests Research Questions

## What are some common HTTP status codes?
Client Errors - 400, 401, 403, 404
Server Errors - 500, 503, 504

*404 - Not Found*
This is the most common. It is used when a certain page is no longer available or can't be found on the server.

*403 - Forbidden*
This is used when a client is not allowed access to the resource. This can happen if the clients certificate is no longer valid or is nonexistent.

*500 - Internal Server Error*
This reffers to a problem on the backend. Something went wrong and the server cannot generate an appropriate response.

*503 - Service Unavailable*
This basically means that the server cannot receive requests and is usually temporary.

*504 - Gateway Timeout*
This means a server has taken too long to respond to a request.

*400 - Bad Request*
Something about the request being made has gone wrong. This could be a number of things one of which is say an inturrupted connection.

## What is the difference between a GET request and a POST request? When might each be used?

GET is used to retrieve a page with specified parameters, never as a way to submit data to be processed. That is where POST comes in. POST is used as a way of sending data behind the scenes instead of in the URL like GET.

## Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

Cookies are a way of keeping track of users navegating though a site. Cookies are plain text files with data that stores information relevant to the site. A server or page can set and retrieve cookies, and update them accordingly.

