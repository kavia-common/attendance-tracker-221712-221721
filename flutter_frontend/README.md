# Flutter Frontend Environment

- The app expects BACKEND_BASE_URL and REALTIME_PROTOCOL from a `.env` file at the project root.
- BACKEND_BASE_URL should point to the Flask backend base URL (e.g., http://localhost:3001).
- REALTIME_PROTOCOL is currently `sse`.

Ensure your API client reads BACKEND_BASE_URL from the environment rather than hardcoding it.
