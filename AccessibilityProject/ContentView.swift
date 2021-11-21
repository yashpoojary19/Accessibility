//
//  ContentView.swift
//  AccessibilityProject
//
//  Created by Yash Poojary on 21/11/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rating = 5
    
    var body: some View {
        Stepper("Rate our services: \(rating)/5", value: $rating, in: 1...5)
            .accessibilityValue(Text("\(rating)"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// struct ContentView: View {
//    var body: some View {
//        VStack {
//            Text("Your score is")
//            Text("1000")
//        }
//        .accessibilityElement(children: .ignore)
//        .accessibilityLabel(Text("Your score is"))
//
//
//    }
//}

// struct ContentView: View {
//
//    let pictures = [
//        "ales-krivec-15949",
//        "galina-n-189483@2x",
//        "kevin-horstmann-141705",
//        "nicolas-tissot-335096"
//    ]
//
//    let labels = [
//        "Tulips",
//        "Mangoes",
//        "Sunflowers",
//        "Fireworks"
//    ]
//
//    @State private var selectedImage = Int.random(in: 0...3)
//
//
//    var body: some View {
//        Image(pictures[selectedImage])
//            .resizable()
//            .scaledToFit()
//            .accessibilityLabel(labels[selectedImage])
//            .accessibilityAddTraits(.isButton)
//            .accessibilityAddTraits(.isImage)
//            .onTapGesture {
//                selectedImage = Int.random(in: 0...3)
//            }
//
//    }
//}
