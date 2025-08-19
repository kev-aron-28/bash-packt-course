What is curl?

curl is a command-line tool to send HTTP requests (GET, POST, etc.) to servers.

It’s used to fetch data, test APIs, or download files from the internet.


GET request (fetch a webpage or API data):

curl https://example.com

GET request with pretty output:

curl -s https://example.com | less


POST request (send data):

curl -X POST https://example.com/api \
     -H "Content-Type: application/json" \
     -d '{"name":"Kevin"}'

Download a file:

curl -O https://example.com/file.zip



Include headers in output:

curl -i https://example.com


1. Basic request flags
Flag	What it does
-X	Specify HTTP method (GET, POST, PUT, DELETE, etc.)
-I	Fetch only the HTTP headers (HEAD request)
-i	Include HTTP headers in the output
-L	Follow redirects automatically
2. Sending data
Flag	What it does
-d	Send data in POST/PUT request (-d "key=value")
--data-binary	Send raw binary data
--form / -F	Send multipart/form-data (file uploads)
-H	Add a custom HTTP header (-H "Content-Type: application/json")
3. Authentication & security
Flag	What it does
-u	Basic auth (-u user:password)
--user	Same as -u
-k	Ignore SSL certificate errors
--cert	Client certificate for HTTPS
4. Output control
Flag	What it does
-o <file>	Save output to a file
-O	Save using remote filename
-s	Silent mode (no progress or error messages)
-v	Verbose output (debugging)
-w	Format and display specific info (like HTTP code)
5. Advanced / network
Flag	What it does
--limit-rate	Limit download/upload speed
--max-time	Max time allowed for the request
--retry <n>	Retry failed requests n times
--compressed	Request compressed content from server


## Ssh

We
