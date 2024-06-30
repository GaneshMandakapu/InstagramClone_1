import SwiftUI

struct Story: View {

    let imageName: String
    
    var body: some View {
        Button(action: {}) {
            Image(imageName)
                .resizable()
                .frame(width: 64, height: 64)
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 2))
        }
    }
}

struct Story_Previews: PreviewProvider {
    static var previews: some View {
        Story(imageName: Asset.avatar2.name)
    }
}
