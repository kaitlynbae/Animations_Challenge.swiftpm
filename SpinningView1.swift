import SwiftUI

struct SpinningView1: View {
    
    @State var currentDegree = 0.0
    
    var body: some View {
        Button("Spins") {
            //MARK: MVP - Part I
            currentDegree += 1 
            currentDegree += 40
            }
        .scaleEffect(currentDegree)
        .animation(.linear(duration: 1), value: currentDegree)
        .frame(width: 100, height: 50)
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
        //MARK: MVP - Part II
        .rotationEffect(.degrees(currentDegree))
        .animation(.easeIn, value: currentDegree)
     
         
                    
        
        
        
    }
}
