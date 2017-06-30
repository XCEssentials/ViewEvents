[![GitHub tag](https://img.shields.io/github/tag/XCEssentials/ViewEvents.svg)](https://github.com/XCEssentials/ViewEvents/releases)
[![CocoaPods](https://img.shields.io/cocoapods/v/XCEViewEvents.svg)](https://cocoapods.org/?q=XCEViewEvents)
[![CocoaPods](https://img.shields.io/cocoapods/p/XCEViewEvents.svg)](https://cocoapods.org/?q=XCEViewEvents)
[![license](https://img.shields.io/github/license/XCEssentials/ViewEvents.svg)](https://opensource.org/licenses/MIT)

# Introduction

Helpers for managing handlers of UIControl-based events and gesture recognizers.



# How to install

The recommended way is to install using [CocoaPods](https://cocoapods.org/?q=XCEViewEvents):

```ruby
pod 'XCEViewEvents', '~> 1.1'
```



# How it works

This library provides set of helper functions via extensions for `UIControl` and `UIView` classes. These functions are just syntax sugar on top of standard UIKit API.



# How to use

For example, here is how to add handler to `UIButton` instance `button` for `onTouchUpInside` ("tap") event (assume we have an appropriate function called `buttonTapHandler` on `self`):

```swift
button.onTouchUpInside(
  #selector(buttonTapHandler),
  at: self
)
```

Here is how to to add gesture recognizer to a view (assume we have an appropriate function called `gestureHandler` on `self`):

```swift
button.onTapGesture(#selector(gestureHandler), at: self){ gesture in
  // configure gesture here
}
```

