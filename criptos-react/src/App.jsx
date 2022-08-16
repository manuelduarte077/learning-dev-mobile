import React, {useEffect, useState} from 'react'
import styled from '@emotion/styled'
import ImageCryptocurrencies from './assets/imagen-criptos.png'
import {Formulario} from './components/Formulario'
import Resultant from './components/Resultant.jsx'
import Spinner from "./components/Spinner.jsx";

// Create styled components

const Container = styled.div`
  max-width: 900px;
  margin: 0 auto;
  width: 90%;
  @media (min-width: 992px) {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    column-gap: 2rem;
  }
`
const Image = styled.img`
  max-width: 400px;
  width: 80%;
  margin: 100px auto 0 auto;
  display: block;
`

const Heading = styled.h1`
  font-family: 'Lato', sans-serif;
  color: #fff;
  text-align: center;
  font-weight: 700;
  margin-top: 80px;
  margin-bottom: 50px;
  font-size: 34px;

  &::after {
    content: '';
    width: 100px;
    height: 6px;
    background-color: #66a2fe;
    display: block;
    margin: 10px auto 0 auto;
  }
`

function App() {
  const [monedas, setMonedas] = useState({})
  const [resultado, setResultado] = useState({})
  const [load, setLoad] = useState(false)

  useEffect(() => {
    if (Object.keys(monedas).length > 0) {
      const cotizarCrypto = async () => {
        setLoad(true)
        setResultado({})

        const {moneda, cryptoMoneda} = monedas
        const url = `https://min-api.cryptocompare.com/data/pricemultifull?fsyms=${cryptoMoneda}&tsyms=${moneda}`

        const response = await fetch(url)
        const result = await response.json()

        setResultado(result.DISPLAY[cryptoMoneda][moneda])

        setLoad(false)
      }
      cotizarCrypto()
    }
  }, [monedas])

  return (
    <Container>
      <Image src={ImageCryptocurrencies} alt="img crypto" />

      <div>
        <Heading>Trade cryptocurrencies instantly</Heading>
        <Formulario setMonedas={setMonedas} />

        {load && <Spinner />}

        {resultado.PRICE && <Resultant resultado={resultado} />}
      </div>
    </Container>
  )
}

export default App
