//
//  Created by Robert Petras
//  SwiftUI Masterclass ♥ Better Apps. Less Code.
//  https://swiftuimasterclass.com
//

import SwiftUI

struct AllDetailsView: View {
  // MARK: - PROPERTIES
  
  var comp: Comp
  let Details: [String] = ["Fequency", "Days", "Time"]

  // MARK: - BODY

  var body: some View {
    GroupBox() {
      DisclosureGroup("Details") {
        ForEach(0..<Details.count, id: \.self) { item in
          Divider()
                .padding(.vertical, 2)
          
          HStack {
            Group {
              Image(systemName: "info.circle")
              Text(Details[item])
            }
            .foregroundColor(comp.gradientColors[1])
            .font(Font.system(.body).bold())
            
            Spacer(minLength: 25)
            
            Text(comp.Details[item])
              .multilineTextAlignment(.trailing)
          }
        }
      }
    } //: BOX
  }
}

// MARK: - PREVIEW

struct AllDetailsView_Previews: PreviewProvider {
  static var previews: some View {
      AllDetailsView(comp: CompData[0])
      .preferredColorScheme(.dark)
      .previewLayout(.fixed(width: 375, height: 480))
      .padding()
  }
}
