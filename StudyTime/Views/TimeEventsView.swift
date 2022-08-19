//
//  TimeEventsView.swift
//  StudyTime
//
//  Created by Scott Nicholes on 8/18/22.
//

import SwiftUI

struct TimeEventsView: View {
    let events: [String]
    
    var body: some View {
        VStack {
            ForEach(events, id: \.self) { event in
                Text(event)
            }
            Spacer()
        }
    }
}

struct TimeEventsView_Previews: PreviewProvider {
    static var previews: some View {
        TimeEventsView(events: ["START: 03:00", "END: 04:00"])
    }
}
