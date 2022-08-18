//
//  ContentView.swift
//  fav restaurant
//
//  Created by Fatma Alarbash on 15/08/2022.
//

import SwiftUI
struct ContentView: View {
    @State var num = 0
    @State var result = 0.0
    @State var price = ""
    
    var body: some View {
        ZStack{Color.indigo.opacity(0.7).ignoresSafeArea()
            VStack{
                Text("Pick")
                .foregroundColor(Color.white).font(.system(size: 70, weight: .semibold, design: .rounded))
                Text("Menu")
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                
                HSView(name: "2.750 KD", title: "Tawook Protein Pack")
                HSView(name: "1.350 KD", title: "Hallomi Cheese Sandwich")
                HSView(name: "1.750 KD", title: "Awesome Burger")
                HSView(name: "2.500 KD", title: "Acia Peanut Bowl")
                HSView(name: "1.500 KD", title: "Iced Matcha Latte")
                             
                Spacer()
                HStack{
                    TextField("المبلغ",text: $price).padding().frame(width: 125, height: 40).background(.white).cornerRadius(10).font(.system(size: 28))
                    
                    Text("ادخل المبلغ الذي لديك الآن")
                        .font(.title2)
                    .fontWeight(.semibold)}
                VStack{
                Text("اضغط لمعرفة الفاتورة")
                    .foregroundColor(Color.white).font(.system(size: 40, weight: .medium, design: .rounded)).frame(width: 350, height: 70).background(.gray.opacity(0.9)).brightness(0.1).cornerRadius(15).onTapGesture {
                    }
                
                    Text(" المبلغ الاجمالي هو \(result)").font(.title2)
                       .fontWeight(.semibold)
                
                    
                }
                }
                      
            }
        
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    struct HSView: View {
        @State var num = 0
        @State var name:String
        @State var title: String
        var body: some View {
            HStack{
                Text(title).font(.system(size: 23, weight: .medium)).foregroundColor(Color.black)
                
                Text(name).font(.system(size: 23, weight: .medium)).foregroundColor(Color.black)
                Stepper("Tawook Protein Pack", value: $num, in: 0...100).labelsHidden()
                Text("\(num)")
                
        }.frame(width: 380, height: 85).background(.white.opacity(0.6)).cornerRadius(15)
        }
    }


//struct textview: View {
//    @Binding var name:String
//    @Binding var num:Int
//    var body: some View {
//        Text(name).font(.system(size: 23, weight: .medium)).foregroundColor(Color.black)
//        Stepper("Tawook Protein Pack", value: $num, in: 0...100).labelsHidden()
//        Text("\(num)")
//
//    }
//}
