
import requests

req = requests.Request('GET', 'http://httpbin.org/get')
req.prepare()


s = "This is the first sentence. \
    This is the second sentence."

    print
