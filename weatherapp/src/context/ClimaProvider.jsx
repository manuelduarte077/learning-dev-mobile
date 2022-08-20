import {useState} from 'react'
import {createContext} from 'react'

import ky from 'ky'

const ClimaContext = createContext()

const ClimaProvider = ({children}) => {
  const [busqueda, setBusqueda] = useState({
    ciudad: '',
    pais: '',
  })

  const datosBusqueda = (e) => {
    setBusqueda({
      ...busqueda,
      [e.target.name]: e.target.value,
    })
  }

  const consultarClima = async (datos) => {
    try {
      const {ciudad, pais} = datos

      const appId = import.meta.env.VITE_API_KEY

      const url = `http://api.openweathermap.org/geo/1.0/direct?q=${ciudad},${pais}&limit=1&appid=${appId}`

      const data = await ky.get(url).json()

      const {lat, lon} = data[0]

      const urlClima = `https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=${appId}`

      const clima = await ky.get(urlClima).json()
      console.log(clima)
    } catch (error) {
      console.log(error)
    }
  }

  return (
    <ClimaContext.Provider value={{busqueda, datosBusqueda, consultarClima}}>
      {children}
    </ClimaContext.Provider>
  )
}

export {ClimaProvider}

export default ClimaContext
