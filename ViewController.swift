//
//  ViewController.swift
//  TableViewProject
//
//  Created by Ali Yasin DOĞAN on 29.06.2024.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var flowersNameList=[String]()
    var flowersImageNameList=[String]()
    var selectedName=""
    var selectedImageName=""
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate=self
        tableView.dataSource=self
               
        flowersNameList.append("GÜL")
        flowersNameList.append("LALE")
        flowersNameList.append("PAPATYA")
        flowersNameList.append("MENEKŞE")
        flowersNameList.append("ORKİDE")
        
       
        flowersImageNameList.append("gul")
        flowersImageNameList.append("lale")
        flowersImageNameList.append("papatya")
        flowersImageNameList.append("menekse")
        flowersImageNameList.append("orkide")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flowersNameList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell()
        cell.textLabel?.text=flowersNameList[indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete
        {
            flowersNameList.remove(at: indexPath.row)
            flowersImageNameList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedName=flowersNameList[indexPath.row]
        selectedImageName=flowersImageNameList[indexPath.row]
        performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="toDetailVC"{
            let destinationVC=segue.destination as! DetailsViewController
            destinationVC.selectedFlowersName=selectedName
            destinationVC.selectedFlowersImageName=selectedImageName
        }
    }
}

