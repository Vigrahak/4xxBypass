# 4xxBypass
This script appears to contain various techniques aimed at bypassing 401 and 403 HTTP status codes. Specifically, it includes methods for HTTP headers fuzzing, HTTP methods/verbs fuzzing, and hop-by-hop headers fuzzing.


# Installation
 * git clone https://github.com/Vigrahak/4xxBypass
 * cd 4xxBypass
 * sudo bash ./install.sh

# Guide
Usage:    4xxbypass.sh <Domain/Path>
-h  help
-u  useragent
                                                                                                                                                                          
Example: 
 * 4xxbypass.sh example.com
 * 4xxbypass.sh http://example.com
 * 4xxbypass.sh https://example.com

Note:  If you see multiple [200 Ok]/bypasses as output, you must check the Content-Length. If the Content-Length is the same for multiple [200 Ok]/bypasses, it means a false positive. The reason can be a "301/302" redirect or a "../" payload.
In the event that a request returns a status code of 0 and a response size of 0, it is recommended to attempt to modify the User-Agent header in order to circumvent potential blocking or filtering mechanisms. This approach can help to ensure successful request completion and data retrieval. By dynamically adjusting the User-Agent, developers can increase the likelihood of receiving a valid response and minimize the occurrence of empty or failed requests.
                                                                                                                                              
         
