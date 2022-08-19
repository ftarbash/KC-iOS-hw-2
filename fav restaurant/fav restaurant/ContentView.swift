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
    @State var number1 = 0
    @State var number2 = 0
    @State var number3 = 0
    @State var number4 = 0
    @State var number5 = 0
    @State var KD1 = "2.750"
    @State var KD2 = "1.350"
    @State var KD3 = "1.750"
    @State var KD4 = "2.500"
    @State var KD5 = "1.500"
    @State var type = ""
    
    var body: some View {
        ZStack{Color.indigo.opacity(0.7).ignoresSafeArea()
            VStack{
                Text("Pick")
                .foregroundColor(Color.white).font(.system(size: 70, weight: .semibold, design: .rounded))
                Text("Menu")
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                
                HSView(name: KD1, title: "Tawook Protein Pack", num: $number1)
                HSView(name: KD2, title: "Hallomi Cheese Sandwich", num: $number2)
                HSView(name: KD3, title: "Awesome Burger", num: $number3)
                HSView(name: KD4, title: "Acia Peanut Bowl", num: $number4)
                HSView(name: KD5, title: "Iced Matcha Latte", num: $number5)
                             
                Spacer()
                HStack{
                    TextField("المبلغ",text: $price).padding().frame(width: 125, height: 40).background(.white).cornerRadius(10).font(.system(size: 28))
                    
                    Text("ادخل المبلغ الذي لديك الآن")
                        .font(.title2)
                    .fontWeight(.semibold)}
                VStack{
                Text("اضغط لمعرفة الفاتورة")
                    .foregroundColor(Color.white).font(.system(size: 40, weight: .medium, design: .rounded)).frame(width: 350, height: 70).background(.gray.opacity(0.9)).brightness(0.1).cornerRadius(15).onTapGesture {
                        result = red(NUMBER1: number1, KD1: Double(KD1) ?? 0.0, NUMBER2: number2, KD2: Double(KD2) ?? 0.0, NUMBER3: number3, KD3: Double(KD3) ?? 0.0, NUMBER4: number4, KD4: Double(KD4) ?? 0.0, NUMBER5: number5, KD5: Double(KD5) ?? 0.0)
                        
                        if Double(price) ?? 0.0 >= result {
                            type = "تمت العملية بنجاح"
                            
                    }
                        else if Double(price) ?? 0.0 < result { type = "عفوا لا يوجد مبلغ كافي للعملية"}
                            
                        if (price).isEmpty {
                                type = "ادخل المبلغ الذي لديك"
                            }
                        if (price).isEmpty {
                            result = 0.0
                        }
            
                    }
                
                    Text(" المبلغ الاجمالي هو \(result)").font(.title2)
                       .fontWeight(.semibold)
               
                    Text(type)
                }
                }
                      
            }
        
        }
    
}

func red(NUMBER1:Int,KD1:Double,NUMBER2:Int,KD2:Double,NUMBER3:Int,KD3:Double,NUMBER4:Int,KD4:Double,NUMBER5:Int,KD5:Double)->Double{
    return (Double(NUMBER1)*KD1)+(Double(NUMBER2)*KD2)+(Double(NUMBER3)*KD3)+(Double(NUMBER4)*KD4)+(Double(NUMBER5)*KD5)
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    struct HSView: View {
        @State var name:String
        @State var title: String
        @Binding var num:Int
        var body: some View {
            HStack{
                Text(title).font(.system(size: 23, weight: .medium)).foregroundColor(Color.black)
                
                HStack{
                Text(name).font(.system(size: 23, weight: .medium)).foregroundColor(Color.black)
               Text("KD").font(.system(size: 23, weight: .medium)).foregroundColor(Color.black) }
                    
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
