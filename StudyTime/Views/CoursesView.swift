//
//  CoursesView.swift
//  StudyTime
//
//  Created by Scott Nicholes on 8/18/22.
//

import SwiftUI

struct CoursesView: View {
    var body: some View {
        CourseCard(course: Course(name: "CS124"))
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
