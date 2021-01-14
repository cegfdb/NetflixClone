//
//  CustomTabSwitch.swift
//  iOS
//
//  Created by Javier Galera Garrido on 14/01/2021.
//

import SwiftUI

struct CustomTabSwitch: View {
    var tabs: [CustomTab] = [.episodes, .trailers, .more]
    
    var body: some View {
        VStack{
            ScrollView(.horizontal, showsIndicators: false){
                
                HStack {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            Rectangle()
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 6)
                        
                        
                            Button(action: {
                                //
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                            })
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

enum CustomTab: String, Hashable {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitch_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            CustomTabSwitch()
            
        }
    }
}
