import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 244/255, green: 245/255, blue: 250/255, alpha: 1)
        let label = UILabel(frame: CGRect(x: 10, y: 10, width: view.frame.size.width-20, height: 300))
        label.text = "View how your region compares with the top 10 most affected cities during the Coronavirus outbreak (cases per 1,000)"
        label.numberOfLines = 3
        label.font = UIFont(name: "BanglaSangamMN", size: 16)
        label.textColor = .gray
        label.textAlignment = .center
        view.addSubview(label)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let mapView = MKMapView()
        
        let leftMargin:CGFloat = 10
        let topMargin:CGFloat = 200
        let mapWidth:CGFloat = view.frame.size.width-20
        let mapHeight:CGFloat = 500
        
        mapView.frame = CGRect(x: leftMargin, y: topMargin, width: mapWidth, height: mapHeight)
        
        mapView.mapType = MKMapType.standard
        mapView.isZoomEnabled = true
        mapView.isScrollEnabled = true
        
        // Or, if needed, we can position map in the center of the view
        mapView.center = view.center
        mapView.addAnnotations(locations)
        view.addSubview(mapView)
    }
    
}
