Release 0: View HTTP Requests

Find the Thing

2. What are some common HTTP status codes?

They are all three-digit numbers, with the first number representing the class of the error codes.
200 means the response was successful. It is the most common http status code by far. 
Codes in the 400s and 500s are error codes. The most common is the 404 error. It means that the page that you are trying to request is no longer present in the URL that you entered, and it might not have ever been there.
403 means Forbidden. This is likely due to a server maintaining a whitelist of machines that can access that system, and the user's machine is not on it. 503 Service Unavailable is possibly a temporary problem where the server is not available, as it might be down for maintenance or it was just restarted and is in the middle of
initialization.

3. What is the difference between a GET request and a POST request? When might each be used?

In a GET request, the client is able to provide all of the data necessary to make the request with just the URL. If you are using the GET method in posting form data to the server, all of the data is actually encoded into the 
URL. With a POST request, additional data is submitted to the server in the message body of the HTTP request. GET method is most appropriate when submitting a form that only queries a database, as opposed to submitting sensitive information to the server. In the latter case, POST is most 
appropriate.

4. What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

A cookie is really just a text string that is stored on the hard disk of your computer. It is not a program,
as it is sometimes incorrectly referred to by non-technical media. A web server generates a cookie that is comprised of key-value pairs and it gets stored on your hard drive. They next time you access the site where you
received the cookie, the browser looks for a cookie for that site and if it finds one, it will send all of the
key-value pairs in the cookie to the web server, which will then know that you have visited the site before.

