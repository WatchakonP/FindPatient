//
//  PatientDetailViewController.swift
//  Project
//
//  Created by Watcha Pon on 3/26/17.
//  Copyright © 2017 Indie Co. All rights reserved.
//

import UIKit

class PatientDetailViewController: UIViewController {
    var pName = 0
    @IBOutlet weak var patientImage: UIImageView!
    @IBOutlet weak var patientNameLabel: UILabel!
    @IBOutlet weak var patientSurnameLabel: UILabel!
    @IBOutlet weak var patientLocationLabel: UILabel!
    @IBOutlet weak var patientTimeLabel: UILabel!
    @IBOutlet weak var mapImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pName += 1
        updateView(name: pName)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateView(name : Int) {
        if(name == 1){
            patientImage.image = #imageLiteral(resourceName: "david")
            patientNameLabel.text = "Anon"
            patientSurnameLabel.text = "Almond"
            patientLocationLabel.text = "Location : Room 321"
            patientTimeLabel.text = "Since Last Year"
            mapImage.image = #imageLiteral(resourceName: "map1")
        }
        else{
            patientImage.image = #imageLiteral(resourceName: "template")
            patientNameLabel.text = "Danny"
            patientSurnameLabel.text = "D"
            patientLocationLabel.text = "Location : Room 301"
            patientTimeLabel.text = "Since 30 min ago"
            mapImage.image = #imageLiteral(resourceName: "map2")
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
