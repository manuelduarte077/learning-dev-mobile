import {useAtuh} from '../contexts/AuthContext'

export function Home() {
  const {user} = useAtuh()

  console.log(user)

  return <div>Home</div>
}
