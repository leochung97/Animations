import SwiftUI

// Note: Implicit animations always need to watch a particular value otherwise animations will be triggered for every small change - including rotating the device from portrait to landscape
// When you create animations, you are actually creating an instance of an Animation struct that has its own set of modifiers -> you can add .delay(int) directly to the modifier
// When you use attach an animation() as a modifier (i.e., $animationAmount.animation()) -> you don't have to specify which value we're watching for changes as it is attached to the value it should watch

struct ContentView: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap Me") {
            withAnimation(.spring(duration: 1, bounce: 0.5)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 1, y: 0, z: 0))
        
//        return VStack {
//            // Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)
//            Stepper("Scale amount", value: $animationAmount.animation(
//                .easeInOut(duration: 1)
//                .repeatCount(3, autoreverses: true)
//            ), in: 1...10)
//            
//            Spacer()
//            
//            Button("Tap Me") {
//                animationAmount += 1
//            }
//            .padding(40)
//            .background(.red)
//            .foregroundStyle(.white)
//            .clipShape(.circle)
//            .scaleEffect(animationAmount)
//        }
        
        // Button("Tap Me") {
            // animationAmount += 0.5
        // }
        // .padding(50)
        // .background(.red)
        // .foregroundStyle(.white)
        // .clipShape(.circle)
        // .scaleEffect(animationAmount)
        // .animation(.default, value: animationAmount)
        // .animation(.linear, value: animationAmount)
        // .animation(.spring(duration: 1, bounce: 0.9), value: animationAmount)
        // .overlay(
        //    Circle()
        //        .stroke(.red)
        //        .scaleEffect(animationAmount)
        //        .opacity(2 - animationAmount)
        //        .animation(
        //            .easeOut(duration: 1)
        //            .repeatForever(autoreverses: false)
        //            , value: animationAmount
        //        )
        // )
        // .onAppear {
        //    animationAmount = 2
        // }
        // .animation(
            // .easeInOut(duration: 0.5)
                // .delay(0.5)
                // .repeatCount(3, autoreverses: true)
                // .repeatForever(autoreverses: true)
            // , value: animationAmount)
        // .blur(radius: (animationAmount - 1) * 3)
    }
}

#Preview {
    ContentView()
}
