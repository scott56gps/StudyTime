//
//  CourseCard.swift
//  StudyTime
//
//  Created by Scott Nicholes on 8/18/22.
//

import SwiftUI

struct CourseCard: View {
    let course: Course
    
    var body: some View {
        VStack {
            Text(course.name)
                .font(.title)
            Spacer()
            VStack {
                Button(action: { print("Started") }) {
                    Text("Start")
                }
                Button(action: { print("Stopped") }) {
                    Text("Stop")
                }
            }
        }
    }
}

struct CourseCard_Previews: PreviewProvider {
    static var previews: some View {
        CourseCard(course: Course(name: "CS124"))
    }
}
