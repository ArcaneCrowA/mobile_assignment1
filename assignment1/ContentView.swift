//
//  ContentView.swift
//  assignment1
//
//  Created by Adilet Beishekeyev on 19.09.2025.
//

import SwiftUI

struct Post: Identifiable{
    let id = UUID()
    let username: String
    let caption: String
    let imageName: String
}

struct PostView: View {
    var post: Post

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // User info header
            HStack {
                Image(systemName: "person.circle.fill")
                    .font(.largeTitle)
                Text(post.username)
                    .fontWeight(.bold)
            }

            // Post image
            Image(post.imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(10)

            // Caption
            Text(post.caption)
                .padding(.horizontal)
        }
        .padding(.vertical)
    }
}

let samplePosts = [
    Post(username: "UserOne", caption: "Beautiful sunset!", imageName: "sunset_image"),
    Post(username: "UserTwo", caption: "My new puppy!", imageName: "puppy_image"),
    Post(username: "UserThree", caption: "Coffee break ☕️", imageName: "coffee_image")
]

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 0){
                     
                        ForEach(samplePosts){ post in
                            PostView(post: post)
                            Divider()
                        }
                        .navigationTitle("PostView")
                    
                }
            }
            }
    }
}

#Preview(traits: .fixedLayout(width: 400, height: 600)) {
    ContentView()
        
}
