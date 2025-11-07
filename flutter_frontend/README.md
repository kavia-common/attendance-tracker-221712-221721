# flutter_frontend

Cross-platform Flutter app for a real-time attendance system. Implements:
- Ocean Professional theme
- Tab navigation: Login, Attendance, Reports
- JWT login/signup, token persisted with shared_preferences
- Attendance management and realtime updates via SSE
- Daily/Weekly reports with minimal charts

## Environment Setup

1) Copy `.env.example` to `.env` and set the backend URL:
```
cp .env.example .env
# Then edit .env if needed
API_BASE_URL=https://vscode-internal-19049-beta.beta01.cloud.kavia.ai:3010
```

2) Install dependencies:
```
flutter pub get
```

3) Run:
```
flutter run
```

If you’re running on web or emulator with HTTPS, the app tolerates dev certificates for SSE by enabling a permissive badCertificateCallback for this demo.

## Basic Usage

- Login tab:
  - Enter email/password.
  - Choose role (student/teacher/admin) when creating a new account.
  - Login or Signup. The role is shown once authenticated.

- Attendance tab:
  - Teachers:
    - Select or create a class.
    - Pick a date and create/select a session (ISO8601 fields).
    - See student list and mark Present/Late/Absent. Realtime updates reflected.
  - Students:
    - Select a class and session, tap “Mark Present/Late/Absent” to update status.
    - Optionally enroll into the selected class.
  - The tab auto-subscribes to realtime updates for the selected class/session.

- Reports tab:
  - Toggle Daily/Weekly; pick a date.
  - View counts and percentages in simple charts.

## Manual Verification (Smoke)

- With backend running at API_BASE_URL:
  - Signup a student and teacher.
  - Teacher: create a class and session.
  - Student: enroll in class and mark Present.
  - Teacher device should update in near-real-time.
  - Reports should reflect Present count.

## Notes

- API is configured via `.env` using flutter_dotenv.
- HTTP errors (CORS/HTTPS) are surfaced in UI messages where possible.
