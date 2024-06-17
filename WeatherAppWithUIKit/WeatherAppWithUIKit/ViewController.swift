//
//  ViewController.swift
//  WeatherAppWithUIKit
//
//  Created by 조다은 on 6/17/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hourTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        40
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hourCell", for: indexPath)
      return cell
    }
    
}
