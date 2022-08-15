import React from 'react'
import styled from '@emotion/styled'

// Hooks
import useSelectMonedas from '../hooks/useSelectMonedas'

import { monedas } from '../data/monedas'

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

    return (
        <form>
            <SelectMonedas />

            {moneda}

            <InputSubmit type='submit' value='Cotizar' />
        </form>
    )
}
