//
//  Created by Robert Petras
//  SwiftUI Masterclass ♥ Better Apps. Less Code.
//  https://swiftuimasterclass.com
//

import SwiftUI

struct RowView: View {
  // MARK: - PROPERTIES
  
  var comp: Comp

  // MARK: - BODY

  var body: some View {
    HStack {
      Image(comp.image)
        .renderingMode(.original)
        .resizable()
        .scaledToFit()
        .frame(width: 80, height: 80, alignment: .center)
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
        .background(
          LinearGradient(gradient: Gradient(colors: comp.gradientColors), startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(8)
      
      VStack(alignment: .leading, spacing: 5) {
        Text(comp.title)
          .font(.title2)
          .fontWeight(.bold)
        Text(comp.headline)
          .font(.caption)
          .foregroundColor(Color.secondary)
      }
    } //: HSTACK
  }
}

// MARK: - PREVIEW

struct RowView_Previews: PreviewProvider {
  static var previews: some View {
      RowView(comp: compData[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
