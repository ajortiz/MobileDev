//
//  FirstViewController.swift
//  GradeCalculate
//
//  Created by Amanda Ortiz on 2/1/17.
//  Copyright © 2017 aortiz6. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    //global vars
    var finalGrade : Int = 100
    
    @IBOutlet weak var lblFinalGrade: UILabel!
    
    // project grade
    @IBOutlet weak var lblProjectGrade: UILabel!
    @IBOutlet weak var projectSlider: UISlider!
    @IBAction func sldProjects(_ sender: Any) {
        lblProjectGrade.text = "\(Int(projectSlider.value))"
        update_letter_grade()
    }
    
    //HW Grade
    @IBOutlet weak var lblHwGrade: UILabel!
    @IBOutlet weak var hwSlider: UISlider!
    @IBAction func sldHw(_ sender: Any) {
        lblHwGrade.text = "\(Int(hwSlider.value))"
        update_letter_grade()
    }
    
    //Attendance Grade
    @IBOutlet weak var lblAttendance: UILabel!
    @IBOutlet weak var attendSlider: UISlider!
    @IBAction func attendanceSld(_ sender: Any) {
        lblAttendance.text = "\(Int(attendSlider.value))"
        update_letter_grade()
    }
    
    //Midterm grade
    @IBOutlet weak var lblMidGrade: UILabel!
    @IBOutlet weak var midSlider: UISlider!
    @IBAction func sldMidterm(_ sender: Any) {
        lblMidGrade.text = "\(Int(midSlider.value))"
        update_letter_grade()
    }
    
    //Final Project grade
    @IBOutlet weak var lblFinalProjectGrade: UILabel!
    @IBOutlet weak var finalProjSlider: UISlider!
    @IBAction func sldFinalProject(_ sender: Any) {
        lblFinalProjectGrade.text = "\(Int(finalProjSlider.value))"
        // let finalProjGrade = Int(finalProjSlider.value)
        
        update_letter_grade()
        
    }
    
    // Calculating final letter grade label
    func update_letter_grade()
    {
        finalGrade = Int(finalProjSlider.value)+Int(midSlider.value)+Int(attendSlider.value)+Int(hwSlider.value)+Int(projectSlider.value)
        
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

