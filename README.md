# UserDefaults

This package includes a property wrapper to access UserDefaults and a function to access Bundle data

### Usage:

#### UserDefaults

``` swift
   @UserDefault("Autoload", defaultValue: true)
   var autoload: Bool
```

####  bundledData()

``` swift
let version = bundledData(key: "CFBundleShortVersionString")
```
