# DJiRData

DrJackyl's Swift Package for iRacing-Data provides models and logic to decode data available for [iRacing](https://www.iracing.com). Its scope is to specify raw decodable models and convenience-logic to decode respective data into such models. Retrieving and querying the data should be part of other packages.

## Supported Data

* Series race results.
* Event Result in CSV-format.
* Season standings in CSV-format.
* Spectator-sessions and drivers in spectator-sessions.
* Data represented in a generic JSON-model.

## Examples

`IRData` is the entry-point to decode data, for example event results, exported as CSV-file:

```swift
do {
    let csvData = try Data(contentsOf: URL(fileURLWithPath: "path/to/exported.csv"))
    let eventResult = try IRData().createCSVEventResultFromData(csvData)
    print("\(eventResult.summary.series) at \(eventResult.summary.track)")
    print(eventResult.results.map { "\($0.finPos): \($0.name) (\($0.car))"}.joined(separator: "\n") )
} catch let error {
    print(error)
}
```

## Future

* All CSVs exportable from the website.
* All JSON-exports available in the iRacing UI.
* JSON-data available on the website.

## Breaking Changes

### v0.1 to v0.2

In an effort to improve the type-names of API-types, mostly the main entry-points, the prefix "DJ" and, if defined, the suffix "API" is removed. While not having the "DJ"-prefix anyways seems a good idea to me, not naming it DJiRData comes from Swift's inability to fully qualify a type, which has the same name as the module, despite the Swift Package-template creating one by exactly that name. 

* The main entry-point of the API has been renamed from DJiRDataAPI to IRData.