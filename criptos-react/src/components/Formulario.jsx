import React from 'react'
import styled from '@emotion/styled'

// Hooks
import useSelectMonedas from '../hooks/useSelectMonedas'

import { monedas } from '../data/monedas'
import { useEffect } from 'react'

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

export const Formulario = () => {
    // Nuestro hooks custom
    const [moneda, SelectMonedas] = useSelectMonedas('Elije tu Moneda', monedas)

    useEffect(() => {
        const consultAPI = async () => {
            const url =
                'https://min-api.cryptocompare.com/data/top/mktcapfull?limit=10&tsym=USD'

            const response = await fetch(url)

            const result = await response.json()

            console.log(result.Data)
        }
        consultAPI()
    }, [])

    return (
        <form>
            <SelectMonedas />

            {moneda}

            <InputSubmit type='submit' value='Cotizar' />
        </form>
    )
}
