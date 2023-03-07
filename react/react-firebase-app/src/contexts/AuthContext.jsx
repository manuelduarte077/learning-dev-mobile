import {createUserWithEmailAndPassword} from 'firebase/auth'
import {createContext, useContext} from 'react'

import {auth} from '../firebase.config'

export const authContext = createContext()

// Hooks que tiene el auhtContext
export const useAtuh = () => {
  const context = useContext(authContext)
  if (!context) {
    throw new Error('There is not auth provider')
  }
  return context
}

export function AuthProvider({children}) {
  const signup = (email, password) =>
    createUserWithEmailAndPassword(auth, email, password)

  return (
    <authContext.Provider value={{signup}}>{children}</authContext.Provider>
  )
}
