import React from 'react'
import useLetters from '../hooks/useLetter'

const Letter = () => {
  const {letter, loading} = useLetters()

  return loading ? 'Loading...' : <div className="letra">{letter}</div>
}

export default Letter
