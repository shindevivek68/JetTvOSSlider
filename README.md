# JetTvOSSlider
![License MIT](https://img.shields.io/badge/license-MIT-green.svg)
![Swift 4.2](https://img.shields.io/badge/Swift-4.2-orange.svg)

JetTvOSSlider is an implementation of UISlider for tvOS.

# Description and usage

JetTvOSSlider palliates missing an implementation of UISlider for tvOS as part of UIKit.

We think that Apple might eventually include UISlider for tvOS as part of UIKit, because of that, and in order to make it easier to migrate to a possible future UIKit component, JetTvOSSlider has been implemented with the same public API as [UISlider](https://developer.apple.com/documentation/uikit/uislider) for iOS.

The interface only differs in a couple of new properties that were considered needed for a Big Screen implementation:

- stepValue: Value added or subtracted from the current value as result of Siri Remote click left or right updates.
- focusScaleFactor: Scale factor applied to the slider when receiving the focus.

```swift

import UIKit
import JetTvOSSlider

class ViewController: UIViewController {

    @IBOutlet private weak var slider: JetTvOSSlider!
    @IBOutlet private weak var valueLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        slider.addTarget(self, action: #selector(sliderValueChanges), for: .valueChanged)
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.stepValue = 10
        slider.minimumTrackTintColor = .orange
    }

    @objc
    func sliderValueChanges(slider: JetTvOSSlider) {
        valueLabel.text = "\(slider.value)"
    }
}
```

## Requirements

- tvOS 9.0+
- Xcode 9.4

## Installation

### Cocoapods

To integrate JetTvOSSlider into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :tvos, '9.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'JetTvOSSlider', :git => 'https://github.com/shindevivek68/JetTvOSSlider.git'
end
```
