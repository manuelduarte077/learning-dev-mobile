import React from 'react'

import {useState} from 'react'

const Form = () => {
  const [search, setSearch] = useState({
    artist: '',
    song: '',
  })

  return (
    <form>
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
