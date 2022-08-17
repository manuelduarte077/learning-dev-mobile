import useLetters from '../hooks/useLetter'
import Alert from './Alert'
import Form from './Form'
import Letter from './Letter'

export const AppLetras = () => {
  const {alert, letter, loading} = useLetters()

  return (
    <>
      <header>Song Lyrics Search</header>

      <Form />

      <main>
        {alert ? (
          <Alert>{alert}</Alert>
        ) : letter ? (
          <Letter />
        ) : loading ? (
          'Loading...'
        ) : (
          <p className="text-center">Find lyrics from your favorite artists</p>
        )}
      </main>
    </>
  )
}
