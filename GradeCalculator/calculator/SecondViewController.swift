//
//  SecondViewController.swift
//  GradeCalculate
//
//  Created by Amanda Ortiz on 2/1/17.
//  Copyright © 2017 aortiz6. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    //global variable
    var finalGrade : Int = 100
    @IBOutlet weak var gradeImage: UIImageView!
    @IBOutlet weak var lblFinalGrade: UILabel!
    
    //Exam I && II
    @IBOutlet weak var lblExamGrade: UILabel!
    @IBOutlet weak var examSlider: UISlider!
    @IBAction func examGrades(_ sender: Any) {
        lblExamGrade.text = "\(Int(examSlider.value))"
        update_letter_grade()
    }
    
    
    //Final Exam
    @IBOutlet weak var lblFinalExam: UILabel!
    @IBOutlet weak var finalSlider: UISlider!
    @IBAction func finalExamGrade(_ sender: Any) {
        lblFinalExam.text = "\(Int(finalSlider.value))"
        update_letter_grade()
    }
    
    //HW & Quizzes
    @IBOutlet weak var lblHwGrade: UILabel!
    @IBOutlet weak var hwSlider: UISlider!
    @IBAction func hwGrade(_ sender: Any) {
        lblHwGrade.text = "\(Int(hwSlider.value))"
        update_letter_grade()
    }
    
    //Attendance
    @IBOutlet weak var lblAttendance: UILabel!
    @IBOutlet weak var attendSlider: UISlider!
    @IBAction func attendanceGrade(_ sender: Any) {
        lblAttendance.text = "\(Int(attendSlider.value))"
        update_letter_grade()
    }
    
    
    //Final Project
    @IBOutlet weak var lblFinalProject: UILabel!
    @IBOutlet weak var finalProjSlider: UISlider!
    @IBAction func finalProjectGrade(_ sender: Any) {
        lblFinalProject.text = "\(Int(finalProjSlider.value))"
        update_letter_grade()
    }
    
    //Updating final letter grade label
    func update_letter_grade()
    {
        finalGrade = Int(examSlider.value)+Int(finalSlider.value)+Int(hwSlider.value)+Int(attendSlider.value)+Int(finalProjSlider.value)
        
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
