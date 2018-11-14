//
//  timeSlotCell.swift
//  accountSharer
//
//  Created by Will Xu  on 10/18/18.
//  Copyright © 2018 Will Xu . All rights reserved.
//

import UIKit
import Parse

class yourTimeSlotCell: UITableViewCell {
    
    @IBOutlet weak var timeEndLabel: UILabel!
    @IBOutlet weak var timeStartLabel: UILabel!
    @IBOutlet weak var scheduleLabel: UILabel!
    @IBOutlet weak var typeIcon: UIImageView!
    
    var timeSlot: TimeSlot! {
        didSet {
            self.scheduleLabel.text = timeSlot.schedule.owner.username! + "'s " + timeSlot.schedule.type
            if timeSlot.schedule.owner.username == PFUser.current()!.username {
                self.scheduleLabel.text = "Your " + timeSlot.schedule.type
            }
            self.timeStartLabel.text = timeSlot.timeStart.toString(dateFormat: "dd-MM hh:MM a")
            self.timeEndLabel.text = timeSlot.timeEnd.toString(dateFormat: "dd-MM hh:mm a")
            self.typeIcon.image = UIImage(named: timeSlot.schedule.type) ?? UIImage(named: "background")
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
