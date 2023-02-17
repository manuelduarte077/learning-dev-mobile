import { createContext, useContext } from "react";

export const authContext = createContext();

// Hooks que tiene el auhtContext
export const useAtuh = () => {
  const context = useContext(authContext);
  if (!context) {
    throw new Error("There is not auth provider");
  }
  return context;
};

export function AuthProvider({ children }) {
  const user = {
    login: true,
  };

  return (
    <authContext.Provider value={{ user }}>{children}</authContext.Provider>
  );
}
