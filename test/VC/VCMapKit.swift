
import UIKit
import MapKit

class VCMapKit: UIViewController {

    
    @IBOutlet var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setMapPosition()
        setMarker()
    }


    func setMapPosition(){
        
        let cordinate = CLLocationCoordinate2D(latitude: 20.9901609, longitude: 75.5404036)
        let region = MKCoordinateRegion( center: cordinate, latitudinalMeters: CLLocationDistance(exactly: 5000)!, longitudinalMeters: CLLocationDistance(exactly: 5000)!)

        self.mapView.setRegion(region, animated: true)
                
    }
    
    
    func setMarker() {
        
        let maker = MKPointAnnotation()
        maker.title = "SNAJAY"
        maker.subtitle = "Myhome"
        
        maker.coordinate = CLLocationCoordinate2D(latitude: 20.9901609, longitude: 75.5404036)
        mapView.addAnnotation(maker)
        
    }
}
