extension Legacy {
    
    /*
     Represents the announcements-section on the home-page.
     
     ## Website
     
     The data can be displayed on the home-page on https://members.iracing.com/membersite/member/Home.do
     
     ## Backend
     
     The backend-endpoint requires a GET-request to https://members.iracing.com/membersite/member/GetForumAnnouncementPosts
     and has no parameters.
     */
    public struct ForumAnnouncementPosts {
        public let posts: [Post]
        
        public init(
            posts: [Post]
        ) {
            self.posts = posts
        }
        
        public struct Post: Codable {
            public let title: String
            public let author: String
            public let date: Int
            public let url: String
            
            public init(
                title: String,
                author: String,
                date: Int,
                url: String
            ) {
                self.title = title
                self.author = author
                self.date = date
                self.url = url
            }
            
            enum CodingKeys: String, CodingKey {
                case title = "topic_title"
                case author = "displayname"
                case date = "post_edit_time"
                case url = "url"
            }
        }
    }
}
