//
//  ContentView.swift
//  UIKitCamera
//
//  Created by いっちゃん on 2023/08/20.
//

import SwiftUI

struct ContentView: View {
    @State var image = UIImage()
    @State var showingCamera = false
    
    var body: some View {
        VStack{
            Image(uiImage: self.image)
                .resizable()
                .frame(width: 300,height: 150)
            
            Button(action: {
                showingCamera = true
            }) {
                Text("カメラを起動する")
            }
            .sheet(isPresented: $showingCamera, content:{
                CameraView(image: $image,showingCamera: $showingCamera)
            })
        }
        
        
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
