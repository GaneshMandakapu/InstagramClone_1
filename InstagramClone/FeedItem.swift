import SwiftUI

struct FeedItem: View {
  
  let captionButtons = [
    Asset.heart.name,
    Asset.comment.name,
    Asset.share.name,
    Asset.bookmark.name
  ]
  
  var body: some View {
    VStack {
      HStack {
        Image(Asset.friend.name)
        Button(action: {}) {
          Text("f6ary")
            .bold()
        }.foregroundColor(.black)
        Spacer()
        Button(action: {}) {
          Image(Asset.more.name)
        }
      }.padding(.horizontal, 4) // header
      
      Image(Asset.feedImage.name)
        .resizable()
        .aspectRatio(contentMode: .fit) // image
      
      VStack(alignment: .leading) {
        HStack(spacing: 12) {
          ForEach(captionButtons, id: \.self) { button in
            Button(action: {}) {
              Image(button)
            }
            if button == Asset.share.name {
              Spacer()
            }
          }
        } // top
        
        Button(action: {}) {
          Text("100 likes")
            .font(.system(size: 14))
            .bold()
        }.foregroundColor(.black) // likes
        
        HStack(spacing: 4) {
          Button(action: {}) {
            Text("f6ary")
              .bold()
          }.foregroundColor(.black)
          Text("Hello world!")
        } // user, caption
        
        HStack {
          Image(Asset.friend.name)
          TextField("Add comment...", text: .constant(""))
          Button(action: {}) {
            Image(Asset.plus.name)
          }
        } // commment
        Text("10 minutes ago")
          .font(.caption)
          .foregroundColor(Color(.systemGray3)) // time
      }.padding(.horizontal, 4)
    }
  }
}

struct FeedItem_Previews: PreviewProvider {
  static var previews: some View {
    FeedItem()
  }
}
