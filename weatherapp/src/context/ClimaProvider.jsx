import {useState} from 'react'
import {createContext} from 'react'

import ky from 'ky'

const ClimaContext = createContext()

const ClimaProvider = ({children}) => {
  const [busqueda, setBusqueda] = useState({
    ciudad: '',
    pais: '',
  })

  const [resultado, setResultado] = useState({})
  const [cargando, setCargando] = useState(false)
  const [noResultado, setNoResultado] = useState(false)

  const datosBusqueda = (e) => {
    setBusqueda({
      ...busqueda,
      [e.target.name]: e.target.value,
    })
  }

  const consultarClima = async (datos) => {
    setCargando(true)
    setNoResultado(false)
    try {
      const {ciudad, pais} = datos

      const appId = import.meta.env.VITE_API_KEY

      const url = `http://api.openweathermap.org/geo/1.0/direct?q=${ciudad},${pais}&limit=1&appid=${appId}`

      const data = await ky.get(url).json()

      const {lat, lon} = data[0]

      const urlClima = `https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=${appId}`

      const clima = await ky.get(urlClima).json()
      setResultado(clima)
    } catch (error) {
      setNoResultado('No Se econtraron Resultados')
    } finally {
      setCargando(false)
    }
  }

  return (
    <ClimaContext.Provider
      value={{
        busqueda,
        datosBusqueda,
        consultarClima,
        resultado,
        cargando,
        noResultado,
      }}
    >
      {children}
    </ClimaContext.Provider>
  )
}

export {ClimaProvider}

export default ClimaContext
