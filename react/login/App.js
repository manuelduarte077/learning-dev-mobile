import { Text, StyleSheet, View, TextInput } from 'react-native'
import React from 'react'
import { StatusBar } from 'expo-status-bar'

const App = () => {
  return (
    <View style={styles.container}>
      <Text style={styles.title}>Hello</Text>
      <Text style={styles.subTitle}>Sign In to your account</Text>

      <TextInput style={styles.textInput} placeholder="email" />

      <TextInput style={styles.textInput} placeholder="password" />

      <StatusBar style="auto" />
    </View>
  )``
}

export default App

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f1f1f1',
    alignItems: 'center',
    justifyContent: 'center',
  },
  title: {
    fontSize: 80,
    fontWeight: 'bold',
    color: '#34434d',
  },
  subTitle: {
    fontSize: 20,
    color: 'gray',
  },
  textInput: {
    padding: 10,
    paddingStart: 30,
    width: '80%',
    height: 50,
    marginTop: 20,
    borderRadius: 30,
    backgroundColor: 'white',
  },
})
