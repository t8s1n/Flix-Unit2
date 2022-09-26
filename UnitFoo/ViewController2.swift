//
//  MoviesDetailsViewController.swift
//  UnitFoo
//
//  Created by Jesse Oseafiana on 9/23/22.
//

import UIKit
import AlamofireImage

class ViewController2: UIViewController {

    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: [String:Any]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLable.text = movie["title"] as? String
        titleLable.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        
        
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        posterView.af_setImage(withURL: posterUrl!)
        
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        backdropView.af_setImage(withURL: backdropUrl!)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
