# SwiftUI-Preview-Modifier

A custom modifier made to help make previews easier to set up.

A blog post about swiftUI previews can be found [here](https://www.designibl.com/post/swiftui-previews-thoughts-tips)

## How To Use

Copy the file PreviewCreator.swift into your switUI Project.

This modifier works like any custom modifier in SwiftUI so must be called using .modifier()

The simplest form is:

```swift
struct SomeComponent_Previews: PreviewProvider {
    static var previews: some View {
        SomeComponent()
        .modifier(PreviewCreator())
    }
}
```

This will result in both a light and dark mode preview being created.

To customise further you can add the following.

| Variable       | Default          | What it does when true |
| ------------- |:-------------:| -----:|
| standardPreview | true | Creates a preview using the device selected in Xcode's top bar |
| darkMode | true | Creates a dark mode preview copy for each device chosen |
| accessibilityXXXLText | false | Creates preview copies that has XXXL text size turned on |
| iPhoneSE | false | Creates preview copies on iPhoneSE |
| iPhoneMax | false | Creates preview copies on iPhone 11 Pro Max |
| iPad | false | Creates preview copies on iPad Pro (9.7-inch) |

So a fully defined modifier would look like:

```swift
struct SomeComponent_Previews: PreviewProvider {
    static var previews: some View {
        SomeComponent()
        .modifier(PreviewCreator(
            darkMode: true,
            accessibilityXXXLText: false,
            iPhoneSE: false,
            iPhoneMax: false,
            iPad: false
        ))
    }
}
```

This has been built to my personal preference of having multiple Previews however could easily be modified to only have one or two.

I have kept the code as simple as possible so that you can change and add to it, to fit your projects requirements.

## License

This is provided under the MIT License so feel free to do whatever you want with it.

Accreditation is always appreciated 🧑🏻‍💻

Created by Mark Hardwick @ Designibl

## Notes

I would love to see how you all get on with this so please let me know and feel free to branch!

If you would like to support me you can do so [here](https://ko-fi.com/designibl)
