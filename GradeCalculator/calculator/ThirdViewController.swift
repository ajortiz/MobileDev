//
//  ThirdViewController.swift
//  GradeCalculate
//
//  Created by Amanda Ortiz on 2/1/17.
//  Copyright © 2017 aortiz6. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    //global vars
    var finalGrade : Int = 100
   
    @IBOutlet weak var lblFinalGrade: UILabel!
    
    //deliverables grade
    @IBOutlet weak var lblDeliverables: UILabel!
    @IBOutlet weak var deliverSlider: UISlider!
    @IBAction func deliverablesGrade(_ sender: Any) {
        lblDeliverables.text = "\(Int(deliverSlider.value))"
        update_letter_grade()
    }
    
    //exams grade
    @IBOutlet weak var lblExams: UILabel!
    @IBOutlet weak var examSlider: UISlider!
    @IBAction func examGrade(_ sender: Any) {
        lblExams.text = "\(Int(examSlider.value))"
        update_letter_grade()
    }
    
    //assignments grade
    @IBOutlet weak var lblAssign: UILabel!
    @IBOutlet weak var assignSlider: UISlider!
    @IBAction func assignGrades(_ sender: Any) {
        lblAssign.text = "\(Int(assignSlider.value))"
        update_letter_grade()
    }
    
    //attendance grade
    @IBOutlet weak var lblAttend: UILabel!
    @IBOutlet weak var attendSlider: UISlider!
    @IBAction func attendanceGrade(_ sender: Any) {
        lblAttend.text = "\(Int(attendSlider.value))"
        update_letter_grade()
    }
    
    // Calculating final letter grade label
    func update_letter_grade()
    {
        finalGrade = Int(deliverSlider.value)+Int(examSlider.value)+Int(assignSlider.value)+Int(attendSlider.value)
        
        if finalGrade >= 90 {
            lblFinalGrade.text = "A"
            
        }
        
        if finalGrade >= 80 &&  finalGrade <= 89 {
            lblFinalGrade.text = "B"
            
        }
        if finalGrade >= 70 &&  finalGrade <= 79 {
            lblFinalGrade.text = "C"
          
        }
        if finalGrade >= 60 &&  finalGrade <= 69 {
            lblFinalGrade.text = "D"
            
        }
        else if finalGrade <= 59{
            lblFinalGrade.text = "F"
           
        }
    }
}
