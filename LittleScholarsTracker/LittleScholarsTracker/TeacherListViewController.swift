//
//  TeacherListViewController.swift
//  LittleScholarsTracker
//
//  Created by Tat Sean Pang on 21/11/2015.
//  Copyright © 2015 Tat Sean Pang. All rights reserved.
//

import UIKit

class TeacherListViewController: UIViewController {
    
    var teachers = [Teacher]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadTeachers()
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
    
    func loadTeachers()
    {
        let teacherImage1 = UIImage(named: "teacher-1")
        let teacher1 = Teacher(fullName: "Alice", mobileNumber: "012-3456754")
        teacher1.photo = teacherImage1
        
        let teacherImage2 = UIImage(named: "teacher-2")
        let teacher2 = Teacher(fullName: "Kelvin", mobileNumber:"012-6573899")
        teacher2.photo = teacherImage2
        
        let teacherImage3 = UIImage(named: "teacher-3")
        let teacher3 = Teacher(fullName: "Siong", mobileNumber:"012-6778890")
        teacher3.photo = teacherImage3
        
        teachers += [teacher1, teacher2, teacher3]
    }

}

extension TeacherListViewController: UITableViewDataSource
{
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return teachers.count   
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("teacherTableViewCell", forIndexPath: indexPath) as! TeacherTableViewCell
        
        let teacher = teachers[indexPath.row]
        
        // Configure the cell...
        
        cell.nameLabel.text = teacher.fullName
        cell.mobileNumberLabel.text = teacher.mobileNumber
        cell.teacherPhotoImageView.image = teacher.photo
        
        print (teacher.mobileNumber)

        return cell
    }
    
    //override func number
}
