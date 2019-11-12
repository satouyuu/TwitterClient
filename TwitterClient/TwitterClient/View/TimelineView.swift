
import SwiftUI

struct TimelineView: View {
    var viewModel = TimelineViewModel()
    
    var body: some View {
        TimelineList(tweets: viewModel.tweets)
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
        Text(tweet.text)
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView()
    }
}
