//
//  PatientListViewController.swift
//  Project
//
//  Created by Watcha Pon on 3/26/17.
//  Copyright © 2017 Indie Co. All rights reserved.
//

import UIKit

class PatientListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!

    let list = ["Anon Anon","Anon Almond","Anon Allas","Bear Grill","Cat Catty","Catty Katt","Danny D."]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "patientCell")
        cell.textLabel?.text = list[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//        let passName = list[indexPath.row]
//        self.performSegue(withIdentifier: "detailSegue", sender: passName)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let destination = storyboard.instantiateViewController(withIdentifier: "PatientDetailViewController") as! PatientDetailViewController
        navigationController?.pushViewController(destination, animated: true)
    }
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "detailSegue"{
//            if let nextVC = segue.destination as? PatientDetailViewController {
//                nextVC.pName = sender as! String
//            }
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
