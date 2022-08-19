//
//  CourseCard.swift
//  StudyTime
//
//  Created by Scott Nicholes on 8/18/22.
//

import SwiftUI

struct CourseCard: View {
    let course: Course
    @State var events: [String] = []
    
    var body: some View {
        VStack {
            Text(course.name)
                .font(.title)
            if events.isEmpty {
               Spacer()
            } else {
               TimeEventsView(events: events)
            }
            VStack {
                Button(action: { print("Started"); events.append("Started") }) {
                    Text("Start")
                }
                Button(action: { print("Stopped"); events.append("Stopped") }) {
                    Text("Stop")
                }
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct CourseCard_Previews: PreviewProvider {
    static var previews: some View {
        CourseCard(course: Course(name: "CS124"))
    }
}
