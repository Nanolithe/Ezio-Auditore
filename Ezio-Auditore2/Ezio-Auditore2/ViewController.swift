//
//  ViewController.swift
//  Ezio-Auditore2
//
//  Created by Kevin Nguyen on 2/9/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func didTapButton(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
           let tappedView = sender as? UIView,
        let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                print("Hi there")
            } else if tappedView.tag == 1 {
                print("Howdy")
            } else if tappedView.tag == 2 {
                print("Hello")
            } else {
                print("nothing.")
            }
        }
    }
    
}

