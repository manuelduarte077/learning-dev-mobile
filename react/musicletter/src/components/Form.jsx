import React from 'react'

import {useState} from 'react'
import useLetters from '../hooks/useLetter'

const Form = () => {
  const {setAlert, letterSearch} = useLetters()

  const [search, setSearch] = useState({
    artist: '',
    song: '',
  })

  const handleSubmit = (e) => {
    e.preventDefault()

    if (Object.values(search).includes('')) {
      setAlert('Name the artist and song insert')
      return
    }

    letterSearch(search)
  }

  return (
    <form onSubmit={handleSubmit}>
      <legend>Search by Artist and Song</legend>
      <div className="form-grid">
        <div>
          <label>Artist</label>

          <input
            type="select"
            name="artist"
            placeholder="Search by artist"
            value={search.artist}
            onChange={(e) =>
              setSearch({
                ...search,
                [e.target.name]: e.target.value,
              })
            }
          />
        </div>
        <div>
          <label>Song</label>

          <input
            type="select"
            name="song"
            placeholder="Search by song"
            value={search.song}
            onChange={(e) =>
              setSearch({
                ...search,
                [e.target.name]: e.target.value,
              })
            }
          />
        </div>

        <input type="submit" value="Search" />
      </div>
    </form>
  )
}
export default Form
