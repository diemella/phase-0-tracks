# HTTP REQUESTS

## Common HTTP Status Codes:

- 200 OK
- 300 Multiple Choices
- 301 Moved Permanently
- 302 Found
- 304 Modified
- 307 Temporary Redirect
- 400 Bad Request
- 401 Unauthorized
- 403 Forbidden
- 404 Not Found
- 410 Gone
- 500 Internal Server Error
- 503 Service Unavailable
- 550 Permission Denied

**Informational (100s)**: Request received and proccessing.

**Success (200s)**: Request received and proccessed successfully.

**Redirection (300s)**: Request received but addtional step was performed to complete request.

**Client Error (400s)**: Invalid page/request.

**Server Error (500s)**: Valid request but server unable to complete request.

## GET vs. POST

GET requests data/used for safe actions (viewing something) while POST submits data/used for unsafe actions (changing something).  POST is used when dealing with sensitive data like passwords and credit card numbers.

## Cookies

An HTTP cookie is a piece of data that a server sends to the web browser, which is mainly used for managing a session, personalization, and tracking.