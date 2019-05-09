# MSAUserDefaults

[![CI Status](https://img.shields.io/travis/aslanmehmetsalih/MSAUserDefaults.svg?style=flat)](https://travis-ci.org/aslanmehmetsalih/MSAUserDefaults)
[![Version](https://img.shields.io/cocoapods/v/MSAUserDefaults.svg?style=flat)](https://cocoapods.org/pods/MSAUserDefaults)
[![License](https://img.shields.io/cocoapods/l/MSAUserDefaults.svg?style=flat)](https://cocoapods.org/pods/MSAUserDefaults)
[![Platform](https://img.shields.io/cocoapods/p/MSAUserDefaults.svg?style=flat)](https://cocoapods.org/pods/MSAUserDefaults)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- iOS 8.0+

## Installation

MSAUserDefaults is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MSAUserDefaults'
```

## Usage


Create your keys:
```swift
import MSAUserDefaults

extension DefaultsKey {
    static let boolKey = Key<Bool>(key: "boolKey")
    static let stringKey = Key<String>(key: "stringKey")
    static let intKey = Key<Int>(key: "intKey")
    static let arrayKey = Key<[String]>(key: "arrayKey")
}
```

Saves a 'value' using 'key':
```swift
DefaultsKey.boolKey.value = true
```

Get a 'value' using 'key':
```swift
let boolKey = DefaultsKey.boolKey.value
```

Removes a value using 'key':
```swift
DefaultsKey.boolKey.remove()
```

Check a value:
```swift
let has = DefaultsKey.boolKey.has
```

Removes all values from user defaults:
```swift
Defaults.removeAll()
```


Set your UserDefaults(optional):
```swift
Defaults = UserDefaults(suiteName: "yourSuitName")!
```


## License

MSAUserDefaults is available under the MIT license. See the LICENSE file for more info.
