import {useState} from 'react'
import {useNavigate} from 'react-router-dom'

import {useAtuh} from '../contexts/AuthContext'

export function Register() {
  const [user, setUser] = useState({
    email: '',
    password: '',
  })

  /// Vamos usar el useAtuh para poder usar el signup
  const {signup} = useAtuh()

  /// Vamos a usar el useNavigate para poder navegar a la ruta de login
  const navigate = useNavigate()

  /// Guardar los errores para msotrarlos en el formulario
  const [error, setError] = useState()

  /// Azualiza el estado del formulario
  const handleChange = ({target: {name, value}}) => {
    setUser({
      ...user,
      [name]: value,
    })
  }

  /// Ver el resultado del formulario
  const handleSubmit = async (e) => {
    e.preventDefault()
    setError('')
    try {
      await signup(user.email, user.password)
      navigate('/')
    } catch (error) {
      setError(error.message)
    }
  }

  return (
    // Formulario de registro
    <div className="">
      <h1>Register</h1>
      {error && <p>{error}</p>} {/* Mostrar el error */}
      <form onSubmit={handleSubmit}>
        <label htmlFor="email">Email</label>
        <input
          type="email"
          name="email"
          id="email"
          placeholder="youremail@comapny.org"
          onChange={handleChange}
        />

        <label htmlFor="password">Password</label>
        <input
          type="password"
          name="password"
          id="password"
          placeholder="********"
          onChange={handleChange}
        />

        <button type="submit">Register</button>
      </form>
    </div>
  )
}
