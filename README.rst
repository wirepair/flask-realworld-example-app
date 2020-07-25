.. image:: image.png

Quickstart 
----------

- Build it: `docker build -t rwa .`
- Run with postgres: `docker run -p80:80 rwa rwa:latest`
- Run with sqlite: `docker run -eFLASK_DEBUG=1 -p80:80 rwa rwa:latest`

NOTE:
THIS IS INTENTIONALLY VULNERABLE FOR TESTING ONLY USE AT OWN RISK YADA YADA YADA...