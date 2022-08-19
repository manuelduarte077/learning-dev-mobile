import React from 'react'

const Formulario = () => {
  return (
    <div className="contenedor">
      <form>
        <div className="campo">
          <label htmlFor="ciudad">Ciudad</label>
          <input type="text" id="ciudad" name="cuidad" />
        </div>
        <div className="pais">
          <label htmlFor="ciudad">Pais</label>
          <select name="pais" id="pais">
            <option value="">Seleccione un país</option>
            <option value="US">Estados Unidos</option>
            <option value="MX">Mexico</option>
            <option value="NIC">Nicaragua</option>
            <option value="AR">Argentina</option>
            <option value="BR">Brazil</option>
          </select>
        </div>
        <input type="submit" value="Consultar Clima" />
      </form>
    </div>
  )
}

export default Formulario
