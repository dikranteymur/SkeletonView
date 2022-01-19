//
//  ViewController.swift
//  SkeletonViewPOC
//
//  Created by Dikran Teymur on 19.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var data: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 120
        tableView.estimatedRowHeight = 120
        tableView.dataSource = self
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            for _ in 0..<30 {
                self.data.append("Some Text")
            }
            self.tableView.reloadData()
        }
    }
    
    


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as! MyTableViewCell
        if !data.isEmpty {
            cell.myLabel.text = data[indexPath.row]
            cell.myImageView.image = UIImage(systemName: "star")
        }
        
        return cell
    }
}
