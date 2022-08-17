import useLetters from '../hooks/useLetter'
import Alert from './Alert'
import Form from './Form'

export const AppLetras = () => {
  const {alert} = useLetters()

  return (
    <>
      <header>Song Lyrics Search</header>

      <Form />

      <main>{alert && <Alert>{alert}</Alert>}</main>
    </>
  )
}
