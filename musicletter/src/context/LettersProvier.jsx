import {useState} from 'react'
import {useContext, createContext} from 'react'
import ky from 'ky'

const LettersContext = createContext()

const LettersProvider = ({children}) => {
  const [alert, setAlert] = useState('')
  const [letter, setLetter] = useState('')
  const [loading, setLoading] = useState(false)

  const letterSearch = async (search) => {
    setLoading(true)
    try {
      const {artist, song} = search

      const url = `https://api.lyrics.ovh/v1/${artist}/${song}`

      const response = await ky(url).json()
      setLetter(response.lyrics)
      setAlert('')
    } catch (error) {
      setAlert('Cancion no encontrada')
    }
    setLoading(true)
  }

  return (
    <LettersContext.Provider
      value={{
        alert,
        setAlert,
        letterSearch,
        letter,
        loading,
      }}
    >
      {children}
    </LettersContext.Provider>
  )
}

export {LettersProvider}

export default LettersContext
