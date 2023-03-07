// Import the functions you need from the SDKs you need
import {initializeApp} from 'firebase/app'
import {getAuth} from 'firebase/auth'
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
const firebaseConfig = {
  apiKey: 'AIzaSyBD-aPDScNX2pbp-ZL21kSREiImKcWMxQk',
  authDomain: 'react-fb-auth-acab6.firebaseapp.com',
  projectId: 'react-fb-auth-acab6',
  storageBucket: 'react-fb-auth-acab6.appspot.com',
  messagingSenderId: '241695223594',
  appId: '1:241695223594:web:b9518cbb73a3e15a837853',
}

// Initialize Firebase
export const app = initializeApp(firebaseConfig)
export const auth = getAuth(app)
