# DJiRData

DrJackyl's Swift Package for iRacing-Data provides models and logic to decode data available for [iRacing](https://www.iracing.com). Its scope is to specify raw decodable models and convenience-logic to decode respective data into such models. Retrieving and querying the data should be part of other packages.

## Supported Data

* Event Result in CSV-format.

## Examples

`DJiRData` is the entry-point to decode data, for example event results, exported as CSV-file:

```swift
do {
    let csvData = try Data(contentsOf: URL(fileURLWithPath: "path/to/exported.csv"))
    let eventResult = try DJiRData().createCSVEventResultFromData(csvData)
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
