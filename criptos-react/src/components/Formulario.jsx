import React, {useEffect, useState} from 'react'
import styled from '@emotion/styled'

// Hooks
import useSelectMonedas from '../hooks/useSelectMonedas'

import {monedas} from '../data/monedas'
import {Error} from './Error'

const InputSubmit = styled.input`
  background-color: #9497ff;
  border: none;
  width: 100%;
  padding: 10px;
  color: #fff;
  font-weight: 700;
  text-transform: uppercase;
  font-size: 20px;
  border-radius: 5px;
  transition: background-color 0.3s ease;
  margin-top: 30px;

  &:hover {
    background-color: #7a7dfe;
    cursor: pointer;
  }
`

export const Formulario = ({setMonedas}) => {
  const [cryptos, setCryptos] = useState([])
  const [error, setError] = useState(false)

  // Nuestro hooks custom
  const [moneda, SelectMonedas] = useSelectMonedas(
    'Choose your Currency',
    monedas
  )
  const [cryptoMoneda, SelectCryptoMoneda] = useSelectMonedas(
    'Choose your Cryptocurrency',
    cryptos
  )

  useEffect(() => {
    const consultAPI = async () => {
      const url =
        'https://min-api.cryptocompare.com/data/top/mktcapfull?limit=20&tsym=USD'

      const response = await fetch(url)
      const result = await response.json()

      const arrayCryptos = result.Data.map((crypto) => {
        // We create an object
        return {
          id: crypto.CoinInfo.Name,
          name: crypto.CoinInfo.FullName,
        }
      })
      setCryptos(arrayCryptos)
    }
    consultAPI()
  }, [])

  const handleSubmit = (e) => {
    e.preventDefault()

    if ([moneda, cryptoMoneda].includes('')) {
      setError(true)

      return
    }
    setError(false)

    setMonedas({
      moneda,
      cryptoMoneda,
    })
  }

  return (
    <>
      {error && <Error>All fields are required</Error>}
      <form onSubmit={handleSubmit}>
        <SelectMonedas />

        <SelectCryptoMoneda />

        <InputSubmit type="submit" value="Cotizar" />
      </form>
    </>
  )
}
