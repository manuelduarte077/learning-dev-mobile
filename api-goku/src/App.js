import React, { useEffect, useState, abort } from 'react'

async function getCharacters() {
    const uri = 'https://dragon-ball-super-api.herokuapp.com/api'

    const res = await fetch(uri, { signal: abort })
    const data = await res.json()

    console.log(data)
}

function App() {
    const [character, getCharacters] = useState(getCharacters())

    useEffect(() => {
        const abortController = new AbortController()

        getCharacters().then

        return () => {
            abortController.abort()
        }
    }, [])

    return (
        <div>
            <p>APP{character}</p>
        </div>
    )
}

export default App
