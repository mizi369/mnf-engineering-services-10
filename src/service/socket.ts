import { io } from 'socket.io-client';
import { BACKEND_URL } from '../constants';

console.log(`[SOCKET] Attempting connection to: ${BACKEND_URL}`);

export const socket = io(BACKEND_URL, {
  autoConnect: true,
  reconnection: true,
  transports: ['websocket', 'polling']
});

socket.on('connect', () => {
  console.log('[SOCKET] Connected to backend ✅');
});

socket.on('connect_error', (error) => {
  console.error('[SOCKET] Connection Error ❌:', error.message);
  console.log('[SOCKET] Tip: Pastikan VITE_BACKEND_URL dalam Netlify adalah link Replit anda.');
});
