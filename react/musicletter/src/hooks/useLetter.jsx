import {useContext} from 'react'
import LettersContext from '../context/LettersProvier'

const useLetters = () => {
  return useContext(LettersContext)
}

export default useLetters
