//
//  FacultyClassroomViewController.swift
//  WorkSafe
//
//  Created by Carter West on 2/21/19.
//  Copyright © 2019 Kaven Eder. All rights reserved.
//

import UIKit

class FacultyClassroomViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    tableView.reloadData()
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "facultyClassroom")
        let classroom = 
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "tableViewCellToClassView", sender: self)
    }
    

   

}
