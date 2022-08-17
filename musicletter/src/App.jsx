import {AppLetras} from './components/AppLetras'
import {LettersProvider} from './context/LettersProvier'

function App() {
  return (
    <LettersProvider>
      <AppLetras />
    </LettersProvider>
  )
}

export default App
