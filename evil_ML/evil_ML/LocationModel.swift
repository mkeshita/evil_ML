import MapKit

class Location: NSObject, MKAnnotation {
  let title: String?
  let locationName: String?
  let SVI: Int?
  let coordinate: CLLocationCoordinate2D

  init(
    title: String?,
    locationName: String?,
    SVI: Int?,
    coordinate: CLLocationCoordinate2D
  ) {
    self.title = title
    self.locationName = locationName
    self.SVI = SVI
    self.coordinate = coordinate

    super.init()
  }

  var subtitle: String? {
    return locationName
  }
}

let loc = Location(
title: "Hawaii",
locationName: "Waikiki Gateway Park",
SVI: 5,
coordinate: CLLocationCoordinate2D(latitude: 21.283921, longitude: -157.831661))

let one = Location(
title: "Marion, Ohio",
locationName: "35.97",
SVI: 5,
coordinate: CLLocationCoordinate2D(latitude: 40.589138, longitude: -83.128265))

let two = Location(
title: "New York City Area",
locationName: "21.35",
SVI: 5,
coordinate: CLLocationCoordinate2D(latitude: 40.730610, longitude: -73.935242))

let three = Location(
title: "Gallup, N.M",
locationName: "18.49",
SVI: 5,
coordinate: CLLocationCoordinate2D(latitude: 35.5208, longitude: -108.7338))

let four = Location(
title: "Grand Island, Neb",
locationName: "16.25",
SVI: 5,
coordinate: CLLocationCoordinate2D(latitude: 40.929077, longitude: -98.368149))

let five = Location(
title: "Albany, Ga",
locationName: "14.96",
SVI: 5,
coordinate: CLLocationCoordinate2D(latitude: 31.5785, longitude: -84.1557))

let six = Location(
title: "Sioux City, Iowa",
locationName: "14.38",
SVI: 5,
coordinate: CLLocationCoordinate2D(latitude: 42.4922, longitude: -96.3908))

let seven = Location(
title: "New Orleans",
locationName: "13.30",
SVI: 5,
coordinate: CLLocationCoordinate2D(latitude: 29.951065, longitude: -90.071533))

let eight = Location(
title: "Fairfield County, Conn",
locationName: "13.20",
SVI: 5,
coordinate: CLLocationCoordinate2D(latitude: 41.2300, longitude: -73.3700))

let nine = Location(
title: "Trenton-Princeton, NJ",
locationName: "13.14",
SVI: 5,
coordinate: CLLocationCoordinate2D(latitude: 40.217052, longitude: -74.742935))

let ten = Location(
title: "Pine Bluff, Ark",
locationName: "12.41",
SVI: 5,
coordinate: CLLocationCoordinate2D(latitude: 34.224400, longitude: -92.019211))

let locations = [one, two, three, four, five, six, seven, eight, nine, ten]
