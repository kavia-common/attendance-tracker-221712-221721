# Flutter Frontend Environment

- The app can render its first frame without any env vars.
- Provide BACKEND_BASE_URL and REALTIME_PROTOCOL in a `.env` file at project root for full functionality.
  - BACKEND_BASE_URL: Flask backend base URL (e.g., http://10.0.2.2:3001 for Android emulator, or the preview URL like https://vscode-internal-10014-beta.beta01.cloud.kavia.ai:3001).
  - REALTIME_PROTOCOL: set to `sse` to enable realtime.
- If BACKEND_BASE_URL is missing, the UI loads with network/realtime disabled; you can still navigate.

Quick start:
1) Copy `.env.example` to `.env` and set:
   BACKEND_BASE_URL=http://10.0.2.2:3001
   REALTIME_PROTOCOL=sse
2) Ensure the backend is reachable at port 3001.
3) Android: Cleartext is allowed in `AndroidManifest.xml` and `res/xml/network_security_config.xml` for localhost, 10.0.2.2, 127.0.0.1.
4) iOS: ATS is configured in `Info.plist` to allow localhost and preview hosts.

Login contract:
- Frontend posts `POST /auth/login` with body: `{ "email": "...", "password": "..." }`.
- Frontend accepts either:
  a) Flat user JSON with fields {id, name, role, token}, or
  b) Envelope `{ "user": {id, name, role}, "token": "..." }`
- A demo seeded user should be used to sign in (e.g., teacher or student email from the backend seed data).

Troubleshooting:
- If you see "Connection failed", verify `.env` has correct BACKEND_BASE_URL and the device/emulator can reach the host.
- For Android emulator, do NOT use localhost; use 10.0.2.2 to reach the host machine.
- Check backend logs for `POST /auth/login` to confirm requests arrive.

Ensure the API client reads BACKEND_BASE_URL from environment; do not hardcode URLs.
