# Rehearsal Scheduler

Web app for scheduling band rehearsals, sending reminders, tracking attendance, and suggesting optimal rehearsal times. Mobile responsive. Features calendar sync, chat, setlists, and notifications.

## Setup Instructions

1. Clone the repo.
2. Run npm install in both frontend and backend directories.
3. Set environment variables as per sample .env files (database URL, S3, Google API).
4. Run database migrations (see backend/migrations/).
5. Start backend then frontend servers.

See detailed architecture/plan in Google Docs: https://docs.google.com/document/d/18DCi2WIbXlK35Djteo5iaBLQzc_eLhv-dVPsCM7ezwM

## Deployment

- Deploy backend (Node.js) on Vercel/Heroku.
- Deploy frontend (React) with Vercel/Netlify.

## Security

Role-based auth. Secure storage. API keys via env.

## Integrations

- Google Calendar
- AWS S3 for audio/upload

## License
MIT