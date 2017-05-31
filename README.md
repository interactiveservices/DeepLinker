# DeepLinker

[![CI Status](http://img.shields.io/travis/alexshubin22@gmail.com/DeepLinker.svg?style=flat)](https://travis-ci.org/alexshubin22@gmail.com/DeepLinker)
[![Version](https://img.shields.io/cocoapods/v/DeepLinker.svg?style=flat)](http://cocoapods.org/pods/DeepLinker)
[![License](https://img.shields.io/cocoapods/l/DeepLinker.svg?style=flat)](http://cocoapods.org/pods/DeepLinker)
[![Platform](https://img.shields.io/cocoapods/p/DeepLinker.svg?style=flat)](http://cocoapods.org/pods/DeepLinker)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

DeepLinker is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "DeepLinker"
```
## Usage

DeepLinker provides convenient API access to integrate with popular apps.

Don't waste your time to googling all these things! Just use `DeepLinker` 😺

#### Phone calls
```swift
DeepLinker.Phone.performCall(phoneNumber: "+7-923-233-3243")
```
#### Skype calls
```swift
DeepLinker.Skype.performAction(.call, contact: contactTextField.text!)
```
#### Maps(yandex, google, apple)
```swift
DeepLinker.Maps.YandexMaps.open(latitude: 55.885452,
                                longitude: 37.670545)
```
#### Open links in SafariViewController
```swift
DeepLinker.WebLink.presentSafariViewController(for: self, with: SomeUrl)
```

## Author

Alex Shubin, Interactive Services, alexshubin22@gmail.com, a.shubin@be-interactive.ru

## License

DeepLinker is available under the MIT license. See the LICENSE file for more info.
