//
//  MovieReviewViewController.swift
//  Movie Reviews
//
//  Created by DALE MUSSER on 3/4/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

class MovieReviewViewController: UIViewController {
    @IBOutlet weak var reviewImageView: UIImageView!
    @IBOutlet weak var headlineLabel: UILabel!
    @IBOutlet weak var bylineLabel: UILabel!
    @IBOutlet weak var mpaaRatingLabel: UILabel!
    @IBOutlet weak var openingDateLabel: UILabel!
    @IBOutlet weak var shortSummaryLabel: UILabel!
    
    var movieReview: MovieReview?
    
    let dateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        
        title = "Review"

        if let movieReview = movieReview {
            headlineLabel.text = movieReview.headline
            bylineLabel.text = movieReview.byline
            mpaaRatingLabel.text = "Rating: " + movieReview.mpaaRating
            openingDateLabel.text = "Opens: " + dateFormatter.string(from: movieReview.openingDate)
            shortSummaryLabel.text = movieReview.shortSummary
            if let imageUrl = URL(string: movieReview.media.srcUrlString),
                let imageData = try? Data(contentsOf: imageUrl) {
                reviewImageView.image = UIImage(data: imageData)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func readReview(_ sender: Any) {
        if let movieReview = movieReview,
            let url = URL(string: movieReview.link.urlString) {
                if UIApplication.shared.canOpenURL(url) {
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
