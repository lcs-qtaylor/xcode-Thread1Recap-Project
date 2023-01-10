import SwiftUI


struct PinnapleTextView: View {
    var body: some View {
        Text("This Is A Pineapple, I Really Like Pineapples!")
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.black)
            .multilineTextAlignment(.center)
            .padding()
    }
}

struct PinnapleTextView_Previews: PreviewProvider {
    static var previews: some View {
        PinnapleTextView()
    }
}

struct Third_FavouriteThings_view: View {
    var body: some View {
        Image("pineapple")
            .frame(height: 885.0)
            .clipShape(Rectangle())
            .overlay {
                Rectangle().stroke(.black, lineWidth: 10)
            }
            .shadow(radius: 7)
    }
    
    struct Third_FavouriteThings_view_Previews: PreviewProvider {
        static var previews: some View {
            Third_FavouriteThings_view()
        }
    }
    
}


