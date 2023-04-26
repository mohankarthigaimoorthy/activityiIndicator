//
//  ViewController.swift
//  activityiIndicator
//
//  Created by Mohan K on 09/12/22.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressView.progress = 0.0
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        activityIndicator.accessibilityPath?.reversing()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        do{
            sleep(3)
        }
        
        activityIndicator.isHidden = true
        activityIndicator.stopAnimating()
    }
    
    @IBAction func startButton(_ sender: Any) {
        var progress: Float = 0.0
        progressView.progress = progress
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { (timer) in
            
            progress += 0.01
            self.progressView.progress = progress
            
            if self.progressView.progress == 1.0
            {
                self.progressView.progress = 0.0
            }
        })
        
    }
    
}

