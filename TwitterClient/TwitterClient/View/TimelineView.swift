
import SwiftUI

struct TimelineView: View {
    var viewModel = TimelineViewModel()
    
    var body: some View {
        VStack{
            Text("Timeline")
                .foregroundColor(.blue)
                .padding()
            
            TimelineList(tweets: viewModel.tweets)
        }
    }
}

struct TimelineList: View {
    var tweets: [Tweet]
    
    var body: some View {
        List(tweets){ tweet in
            TimelineListRow(tweet: tweet)
        }
    }
}

struct TimelineListRow: View {
    var tweet: Tweet
    
    var body: some View {
        HStack{
            Image("userImage", bundle: .main)
                .resizable()
                .frame(width: 50.0, height: 50.0, alignment: .leading)
            
            
            VStack(alignment: .leading) {
                HStack {
                    Text(tweet.displayName)
                    
                    Text(tweet.userId)
                        .foregroundColor(.gray)
                }
                
                Text(tweet.text)
                    .padding(.top, 5)
            }
            
        }
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView()
    }
}
