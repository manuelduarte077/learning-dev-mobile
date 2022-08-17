import {useState} from 'react'
import {useContext, createContext} from 'react'
import ky from 'ky'

const LettersContext = createContext()

const LettersProvider = ({children}) => {
  const [alert, setAlert] = useState('')
  const [letter, setLetter] = useState('')

  const letterSearch = async (search) => {
    try {
      const {artist, song} = search

      const url = `https://api.lyrics.ovh/v1/${artist}/${song}`

      const response = await ky(url).json()
      setLetter(response.lyrics)
    } catch (error) {
      console.log(error)
    }
  }

  return (
    <LettersContext.Provider
      value={{
        alert,
        setAlert,
        letterSearch,
      }}
    >
      {children}
    </LettersContext.Provider>
  )
}

export {LettersProvider}

export default LettersContext
