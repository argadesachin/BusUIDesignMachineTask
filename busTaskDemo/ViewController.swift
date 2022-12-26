//
//  ViewController.swift
//  busTaskDemo
//
//  Created by Mac on 26/01/34.
//

import UIKit

class ViewController: UIViewController {
      var arr1 = [Int]()
//MARK - IBOutlet of table view and uiview
    @IBOutlet weak var busTableView: UITableView!
    @IBOutlet weak var view2: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
     
        for i in 1...15{
            arr1.append(i)
        }
        
        registerNib()
        initDataSourceAndDelegate()
        view2.clipsToBounds = true
        view2.layer.cornerRadius = 20
        view2.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
    }
//MARK - register nib file
    func  registerNib(){
        let nibName = UINib(nibName: "busTableViewCell", bundle: nil)
        self.busTableView.register(nibName, forCellReuseIdentifier: "busTableViewCell")
      }
    
 // MARK - Data Source And Delegate
    func initDataSourceAndDelegate(){
        busTableView.dataSource = self
        busTableView.delegate  = self
    }
}
// MARK - conform to the TableViewDataSource
extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let Cell = self.busTableView.dequeueReusableCell(withIdentifier: "busTableViewCell", for: indexPath) as! busTableViewCell
        
        Cell.label1.text = "13 Uppre Indiranagar"
        Cell.view1.layer.cornerRadius = 20
        Cell.backgroundColor = .tertiarySystemFill
        Cell.alpha = 0.00001
        Cell.progressBar1 = UIProgressView(progressViewStyle: .default)
        Cell.seeDirectionBtn.layer.cornerRadius = 5
        Cell.proceedBtn.layer.cornerRadius = 5
        return Cell
    }
    
   func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete)
        {
            tableView.beginUpdates()
            arr1.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
        }
    }
}


extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        130
    }
}

