import React from 'react'
import { Text } from 'react-native'
import { SafeAreaView } from 'react-native-safe-area-context'

const DetailsScreen = () => {
  return (
    <SafeAreaView
      style={{ flex: 1, justifyContent: 'center', alignItems: 'center' }}>
      <Text>DetailsScreen</Text>
    </SafeAreaView>
  )
}

export default DetailsScreen
