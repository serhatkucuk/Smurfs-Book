//
//  ViewController.swift
//  Smurfs Book
//
//  Created by Serhat Küçük on 4.01.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var smurfs = [Smurf]()
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var selectedSmurf : Smurf?
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        tableView.delegate = self
        tableView.dataSource = self
        
        let papaSmurf = Smurf(smurfName: "Papa Smurf", smurfJob: "Wizard", smurfImage: UIImage(named: "papasmurf")!)
        let smurfette = Smurf(smurfName: "Smurfette", smurfJob: "Beautician", smurfImage: UIImage(named: "smurfette")!)
        let heftySmurf = Smurf(smurfName: "Hefty Smurf", smurfJob: "Athlete", smurfImage: UIImage(named: "heftysmurf")!)
        let clumsySmurf = Smurf(smurfName: "Clumsy Smurf", smurfJob: "Jobless", smurfImage: UIImage(named: "clumsysmurf")!)
        let gargamel = Smurf(smurfName: "Gargamel", smurfJob: "Bad Wizard", smurfImage: UIImage(named: "gargamel")!)
        
        smurfs.append(papaSmurf)
        smurfs.append(smurfette)
        smurfs.append(heftySmurf)
        smurfs.append(clumsySmurf)
        smurfs.append(gargamel)
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return smurfs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = smurfs[indexPath.row].name
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedSmurf = smurfs[indexPath.row]
        
        performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC"{
        let destinationVC = segue.destination as? DetailVC
            destinationVC?.chosenSmurf = selectedSmurf
            
        }
    }

}

