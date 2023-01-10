//
//  Third FavouriteThings view.swift
//  FavouriteThings
//
//  Created by Quin Taylor on 2022-10-28.
//

    
    import SwiftUI
    

    struct Third_FavouriteThings_view: View {
        var body: some View {
            HStack{
                Image("pineapple")
                    .frame(height: 885.0)
                    .clipShape(Rectangle())
                    .overlay {
                        Rectangle().stroke(.black, lineWidth: 10)
                    }
                    .shadow(radius: 7)
            }
        }
    }
    
    struct Third_FavouriteThings_view_Previews: PreviewProvider {
        static var previews: some View {
            Third_FavouriteThings_view()
        }
    }

