# Flutter Frontend Environment

- The app can render its first frame without any env vars.
- Optional: BACKEND_BASE_URL and REALTIME_PROTOCOL can be provided in a `.env` file at project root.
  - BACKEND_BASE_URL: Flask backend base URL (e.g., http://localhost:3001).
  - REALTIME_PROTOCOL: set to `sse` to enable realtime.
- If BACKEND_BASE_URL is missing, the UI loads with network/realtime disabled; you can still navigate.

Ensure the API client reads BACKEND_BASE_URL from environment; do not hardcode URLs.
