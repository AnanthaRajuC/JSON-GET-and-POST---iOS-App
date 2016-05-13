# JSON GET and POST - iOS App
This demo iOS app downloads JSON text content and an image from their respective URL’s and renders it in the app. Additionally, this app 
collects iOS device details such as systemName, systemVersion etc., and POST’s the content in JSON format to a URI/L.
  
JSON content and the image is hosted online

![JSON Content hosted online](https://github.com/AnanthaRajuC/JSON-GET-and-POST---iOS-App/blob/master/images/JSON%20content.PNG "JSON Content hosted online")

![Image hosted online](https://github.com/AnanthaRajuC/JSON-GET-and-POST---iOS-App/blob/master/images/Image%20URL.PNG "Image hosted online")

The following device details are captured and POSTed to the URI/L:
  - systemName
  - systemVersion
  - description
  - model
  - country
  - uniqueIdentifier
  - locale
  
  ![JSON POST](https://github.com/AnanthaRajuC/JSON-GET-and-POST---iOS-App/blob/master/images/requestbin.PNG "JSON POST")
  
  To make sure that the URL of the image and the JSON content is not blocked by iOS, make sure the URL's are added to **Exception Domains** and 
  **Allow Arbitrary Downloads** is marked **YES**.
  
    ![Project Settings](https://github.com/AnanthaRajuC/JSON-GET-and-POST---iOS-App/blob/master/images/settings.PNG "Project Settings")
    
    The final output/App 
    
    ![Output/App](https://github.com/AnanthaRajuC/JSON-GET-and-POST---iOS-App/blob/master/images/iOS%20app%20Output.PNG "Output/App")

License
----

MIT License

Copyright (c) [2016] [Anantha Raju C]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
    
    
  
