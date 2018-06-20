# FontBook
An easy, swifty, and enum(ey) font manager for iOS

### Prerequisites

* Xcode 9+
* Swift 4+
* Access to font files to embed in project

### Installation

#### Cocoapods

```
pod 'FontBook'
```

#### Manually

Copy ```FontBook.swift``` ([link](https://github.com/bornbrie/FontBook/blob/master/FontBook/FontBook.swift)) into your Xcode project. Make sure to add it to your app's target in Xcode.

### Setup

First, copy the font files you want to use into your project. FontBook uses UIFont at its core so it accepts all standard font file formats. Be sure to select the relevent target and make sure that "Copy items if needed" option is checked.

### Usage

```
import FontBook
```

```
enum Fonts: FontBook {
    case arial = "Arial"
    case arialItalic = "Arial Italic"
    case arialBold = "Arial Bold"
    case arialBoldItalic = "Arial Bold Italic"
    
    case helveticaNeue = "HelveticaNeue"
}
```

```
let font = Fonts.arial.rawValue.of(size: 12, color: .black)
```

### Versioning

This project uses [SemVer](http://semver.org/) for versioning semantics. For all the available versions, see the [tags on this repository](https://github.com/bornbrie/WooOS/tags). 

### Authors

* **Brianna Lee** - [Owly Design](https://owly.xyz) - [EightfoldYOGA](https://www.eightfold.yoga)

See also the list of [contributors](https://github.com/bornbrie/WooOS/contributors) who participated in this project.

### License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
