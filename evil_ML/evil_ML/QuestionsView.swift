//
//  QuestionsView.swift
//  evil_ML
//
//  Created by Meera Rachamallu on 4/13/20.
//  Copyright © 2020 Meera Rachamallu. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

func Question1View() -> UIView {
    let questions = UIView()
    let question = UITextView()
    question.insertText("What is your astrological sign?")
    
    questions.addSubview(question)
    return questions
}
