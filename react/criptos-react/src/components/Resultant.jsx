import styled from '@emotion/styled'

const Resultado = styled.div`
  color: #fff;
  font-family: 'Lato', sans-serif;
  display: flex;
  align-items: center;
  gap: 1rem;
  margin-top: 30px;
`

const Image = styled.img`
  display: block;
  width: 120px;
`

const Texto = styled.p`
  font-size: 18px;

  span {
    font-weight: 700;
  }
`

const Price = styled.p`
  font-size: 24px;

  span {
    font-weight: 700;
  }
`

const Resultant = ({resultado}) => {
  const {PRICE, HIGHDAY, LOWDAY, CHANGEPCT24HOUR, IMAGEURL, LASTUPDATE} =
    resultado

  return (
    <Resultado>
      <Image src={`https://cryptocompare.com/${IMAGEURL}`} />
      <div>
        <Price>
          El precio es de: <span>{PRICE}</span>
        </Price>
        <Texto>
          El precio más alto del Día: <span>{HIGHDAY}</span>
        </Texto>
        <Texto>
          El precio más bajo del Día: <span>{LOWDAY}</span>
        </Texto>
        <Texto>
          Variación últimas 24 horas: <span>{CHANGEPCT24HOUR}</span>
        </Texto>
        <Texto>
          Última actualización <span>{LASTUPDATE}</span>
        </Texto>
      </div>
    </Resultado>
  )
}

export default Resultant
