/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, {Component} from 'react';
import {StyleSheet, Text, TextInput, View, Button} from 'react-native';

import RNNativeToastLibrary from 'react-native-native-toast-library';

type Props = {};
export default class App extends Component<Props> {

  constructor(props) {
    super(props);
    this.state = {text: ''};
  }
  render() {
    return (
      <View style={styles.container}>
        <Text>Please enter text</Text>
        <TextInput
          style={{margin:10}}
          multiline={true}
          placeholder="Type text to display in toast"
          onChangeText={(text) => this.setState({text})}
        />
        <Button
          onPress={() => {RNNativeToastLibrary.show(this.state.text)}}
          title="Show Toast"
          color="#841584"
          accessibilityLabel="Learn more about this purple button"
/>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
});
