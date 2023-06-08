import http.server
import socketserver

# Set the port number you want to use
PORT = 8000

# Define the request handler class
class MyRequestHandler(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        # Specify the response status code
        self.send_response(200)
        
        # Set the response headers
        self.send_header('Content-type', 'text/html')
        self.end_headers()
        
        # Send the response body
        self.wfile.write(b"Hello, world!")
        
# Create an HTTP server instance
with socketserver.TCPServer(("", PORT), MyRequestHandler) as httpd:
    print("Server started on port", PORT)
    
    # Start the server and keep it running until interrupted
    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        pass
    
    httpd.server_close()
    print("Server stopped.")
