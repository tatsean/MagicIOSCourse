//
//  ClassroomTableViewCell.swift
//  LittleScholarsTracker
//
//  Created by Tat Sean Pang on 21/11/2015.
//  Copyright © 2015 Tat Sean Pang. All rights reserved.
//

import UIKit

class TeacherTableViewCell: UITableViewCell {


    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var mobileNumberLabel: UILabel!

    @IBOutlet weak var teacherPhotoImageView: UIImageView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
