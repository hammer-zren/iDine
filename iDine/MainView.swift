//
//  MainView.swift
//  iDine
//
//  Created by ZHONGTAO REN on 5/11/21.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var order: Order
    
    private var badgePosition: CGFloat = 2
    
    private var tabsCount: CGFloat = 2
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottomLeading) {
                TabView {
                    ContentView()
                        .tabItem {
                            Label("Menu", systemImage: "list.dash")
                        }
                    OrderView()
                        .tabItem {
                            Label("Order", systemImage: "cart")
                        }
                }
                
                // Badge View
                ZStack {
                    Circle()
                        .foregroundColor(.red)

                    Text("\(self.order.items.count)")
                        .foregroundColor(.white)
                        .font(Font.system(size: 12))
                }
                .frame(width: 15, height: 15)
                .offset(x: ((2 * self.badgePosition) - 0.95) * (geometry.size.width / (2 * self.tabsCount)) - 7, y: -30)
                .opacity(self.order.items.count == 0 ? 0 : 1.0)
            }
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(Order())
    }
}
