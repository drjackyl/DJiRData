# DJiRData

DrJackyl's Swift Package for iRacing-Data provides models and logic to decode data available for [iRacing](https://www.iracing.com). Its scope is to specify raw decodable models and convenience-logic to decode respective data into such models. Retrieving and querying the data should be part of other packages.

## Supported Data

* Series race results.
* Event Result in CSV-format.
* Season standings in CSV-format.
* Data represented in a generic JSON-model.

## Examples

`DJiRDataAPI` is the entry-point to decode data, for example event results, exported as CSV-file:

```swift
do {
    let csvData = try Data(contentsOf: URL(fileURLWithPath: "path/to/exported.csv"))
    let eventResult = try DJiRDataAPI().createCSVEventResultFromData(csvData)
    print("\(eventResult.summary.series) at \(eventResult.summary.track)")
    print(eventResult.results.map { "\($0.finPos): \($0.name) (\($0.car))"}.joined(separator: "\n") )
} catch let error {
    print(error)
}
```

## DJiRData-"API"

The main API-type to make the data usable has been appended with the suffix "API" due to Swift's incapability of fully qualifying a type-name of a module, which also contains a type by the name of the module. In this case, `DJiRData` is the modules name as well as would have been the type to use for accessing its API.

Modules using DJiRData therefore could not fully qualify types inside DJiRData. Until, if ever, this issue is resolved in Swift, I chose to append "API" to the type-name, ie. `DJiRDataAPI`. I also considered prefixing the types here with `IR`, though, this would still not allow fully qualifying types and meant to introduce a naming-convention for new types.

Btw, it's the Swift Package-template, which generates a type by the name of the package.

See also:

* [Fixing modules that contain a type with the same name](https://forums.swift.org/t/fixing-modules-that-contain-a-type-with-the-same-name/)
* [Unresolvable "ambiguous for type lookup" error when using multiple modules](https://bugs.swift.org/browse/SR-898)

## Future

* All CSVs exportable from the website.
* All JSON-exports available in the iRacing UI.
* JSON-data available on the website.
