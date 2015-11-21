//
//  ClassroomListViewController.swift
//  LittleScholarsTracker
//
//  Created by Tat Sean Pang on 21/11/2015.
//  Copyright © 2015 Tat Sean Pang. All rights reserved.
//

import UIKit

class ClassroomListViewController: UIViewController {
    
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ClassroomListViewController: UITableViewDataSource
{
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("classroomTableViewCell", forIndexPath: indexPath)
        
        switch indexPath.row
        {
        case 0:
            cell.imageView?.image = UIImage(named: "Teacher")
            cell.textLabel?.text = "Kindess"
        case 1:
            cell.imageView?.image = UIImage(named: "Classroom")
            cell.textLabel?.text = "Faith"
        default:
            cell.imageView?.image = UIImage(named: "Student")
            cell.textLabel?.text = "Honest"
        }
       
        // Configure the cell...
        return cell
    }
    
    //override func number
}

//extension ClassroomListViewController: UITableViewDelegate
//{
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        <#code#>
//    }
//}
