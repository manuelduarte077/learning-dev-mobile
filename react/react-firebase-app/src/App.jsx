import { Routes, Route } from "react-router-dom";

import { Home } from "./components/Home";
import { Register } from "./components/Register";
import { Login } from "./components/Login";

import { AuthProvider } from "./contexts/AuthContext";

export default function App() {
  return (
    <div className="bg-slate-300 h-screen text-black flex">
      <AuthProvider>
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/register" element={<Register />} />
          <Route path="/login" element={<Login />} />
        </Routes>
      </AuthProvider>
    </div>
  );
}
