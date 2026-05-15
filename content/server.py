from http.server import SimpleHTTPRequestHandler, HTTPServer
import urllib.request

class Handler(SimpleHTTPRequestHandler):
    def do_GET(self):
        if self.path == "/TransitPro.woff2":
            url = "https://www.bvg.de/fonts/TransitPro.woff2"
            self.proxy_font(url)

        elif self.path == "/TransitPro-Bold.woff2":
            url = "https://www.bvg.de/fonts/TransitPro-Bold.woff2"
            self.proxy_font(url)

        elif self.path == "/TransitPro-Italic.woff2":
            url = "https://www.bvg.de/fonts/TransitPro-Italic.woff2"
            self.proxy_font(url)

        elif self.path == "/TransitPro-BoldItalic.woff2":
            url = "https://www.bvg.de/fonts/TransitPro-BoldItalic.woff2"
            self.proxy_font(url)

        else:
            super().do_GET()

    def proxy_font(self, url):
        try:
            with urllib.request.urlopen(url) as response:
                self.send_response(200)
                self.send_header("Content-type", "font/woff2")
                self.send_header("Access-Control-Allow-Origin", "*")
                self.end_headers()
                self.wfile.write(response.read())
        except Exception as e:
            self.send_error(500, str(e))

server = HTTPServer(("127.0.0.1", 5001), Handler)
print("Lokaler Server läuft auf URL: http://127.0.0.1:5001")
print("")
print("Um lokalen Server zu schließen, bitte dieses Fenster schließen.")
print("")
print("--------------------------------------------------------------------------------")
print("")
server.serve_forever()