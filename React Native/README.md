<details>
<summary>Conditions</summary>
This document is created which helpful for me, this helpful for you its free to use
</details>

# TABLE OF CONTENTS.
|                                                                                        |                                                                                        |
| -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- |
| [Passing parameters to routes Offical doc.](#passing-parameters-to-routes-offical-doc) | [Gradle clean react native - Code Answer’s](#gradle-clean-react-native---code-answers) |
| [Navigating to a new screen​](#navigating-to-a-new-screen)                             | [Moving between screens](#moving-between-screens)                                      |
| [local.properties](#localproperties)                                                   | [Styles](#styles)                                                                      |
| [Creating a new application](#creating-a-new-application)                              | [ADB ERROR](#adb-error)                                                                |

## Passing parameters to routes [Offical doc.](https://reactnavigation.org/docs/params/)
[Go back](#readme)

<details>
<summary>home.js</summary>

```javascript 
import { useNavigation } from "@react-navigation/native";
const Home = () => {
    const navigation = useNavigation();
    const [value, setValue] = React.useState(undefined) // Default value is 'undefined'
    return(
        <TextInput
            onChangeText={ok => setValue(ok)}
            placeholder={'Enter Any value'}
            style={styles.textInput}
        />
        <Button
            onPress={() => navigation.navigate("Modal", { propsvalue: value })}
            title="Model screen"
        />        
    )
}
```
</details>
<details>
<summary>Modal.js</summary>

```javascript 
function AnotherScreeen({ route }) {
    const { itemId, otherParam } = route.params;
    return (
        <View>
            <Text>We are in the modal</Text>
            <Text>{JSON.stringify(propsvalue)}</Text>
        </View>
    );
}
```
</details>

## Gradle clean react native - Code Answer’s
[Go back](#readme)

```powershell
cd android && ./gradlew clean
```
## Navigating to a new screen​
[Go back](#readme)
```javascript
    <Button
        title="Go to Details"
        onPress={() => navigation.navigate('Details')}
    />
```
<details>
<summary>Full code</summary>

```javascript 
import * as React from 'react';
import { Button, View, Text } from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import { createNativeStackNavigator } from '@react-navigation/native-stack';

function HomeScreen({ navigation }) {
return (
    <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center' }}>
    <Text>Home Screen</Text>
    <Button
        title="Go to Details"
        onPress={() => navigation.navigate('Details')}
    />
    </View>
);
}
```
</details>

## Moving between screens
[Go back](#readme)

Navigate to a route multiple times​ Button 
```javascript 
<Button
    title="Go to Details... again"
    onPress={() => navigation.navigate('Details')} // Details is name of scrren
/>
```
Go back Button 
```javascript 
<Button 
    title="Go back" 
    onPress={() => navigation.goBack()} 
/>
```
Go to root PAge Button 
```javascript 
<Button 
    title="Go back to first screen in stack" 
    onPress={() => navigation.popToTop()} 
/>
```

## Creating a new application
[Go back](#readme)

```powershell
npx react-native init AwesomeProject
```
- [Optional] Using a specific version or template<br />
    If you want to start a new project with a specific React Native version, you can use the --version argument:<br />
    ```npx react-native init AwesomeProject --version X.XX.X```
- Step 1: Start Metro
```powershell
npx react-native start
```
- Step 2: Start your application
```powershell
npx react-native run-android
```
## ADB ERROR
[Go back](#readme)

Android application keeps stopping . Does not work react-native-navigation on Android
```
adb reverse tcp:8081 tcp:8081
```
ABD connect for BlueStacks 5
```
abd connect 127.0.0.1:5555
```
# Styles
  [Go back](#readme)

  100% Width os images or View 's
  ```
  style={{width:'100%', height: '100%', resizeMode: 'contain'}}
  ```
## local.properties
[Go back](#readme)
```
touch /android/local.properties && printf  "sdk.dir = $HOME/Android/sdk" 
```