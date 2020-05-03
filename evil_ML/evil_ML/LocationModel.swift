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
