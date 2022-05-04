//
//  ContentView.swift
//  DenemeApp
//
//  Created by Orkun Toptaş on 2.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var textField: String = ""
    
    var body: some View {
        //Location - Pp
        VStack{
            HStack{
                Image(systemName: "square.grid.2x2")
                    .font(.system(size: 30))
                    .foregroundColor(.gray)
                Spacer()
                VStack{
                    Text("Current location")
                        .foregroundColor(.gray)
                    HStack{
                        Image(systemName: "location")
                            .font(.subheadline)
                            .foregroundColor(Color("Color"))
                        Text("Los Angeles")
                            .font(.subheadline)
                            .bold()
                    }
                }
                Spacer()
                Image("Unknown")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .cornerRadius(10)
            }.padding()
            
            //Search bar
            TextField("Search a doctor or health issue", text: $textField)
                .padding(8)
                .padding(.horizontal, 18)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 1)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color("Color"))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    }
                ).padding()
            
            //Schedule
            HStack{
                Text("Upcoming Schedule")
                    .font(.title3)
                    .bold()
                Spacer()
                Button {
                    
                } label: {
                    Text("See all")
                        .foregroundColor(Color("Color"))
                }
            }
            .padding(.horizontal)
            
            ZStack(alignment: .topLeading) {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 290, height: 185)
                    .foregroundColor(Color("Color").opacity(0.2))
                    .padding()
                    .padding()
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 320, height: 191)
                    .foregroundColor(Color("Color").opacity(0.5))
                    .padding()
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 355, height: 200)
                .foregroundColor(Color("Color"))
                
                HStack{
                    Spacer()
                    Image("download")
                        .resizable()
                        .frame(width: 55, height: 55)
                        .cornerRadius(15)
                        .shadow(radius: 10, x: 0, y: 7)
                    Spacer()
                    VStack(alignment: .leading){
                        Text("Dr. Alan Hathaway")
                            .foregroundColor(.white)
                            .bold()
                            .padding(.bottom,0.1)
                        Text("Cardiovascular")
                            .font(.subheadline)
                            .foregroundColor(.white.opacity(0.7))
                    }
                    Spacer()
                    Image(systemName: "video.circle.fill")
                        .font(.title)
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding(.vertical)
               
                RoundedRectangle(cornerRadius: 20)
                    .overlay(
                        HStack {
                            Image(systemName: "clock.fill")
                                .foregroundColor(.white.opacity(0.5))
                            Text("Sun, Jan 15, 09.00am - 12.00am")
                                .font(.subheadline)
                                .foregroundColor(.white)
                        }
                    )
                    .frame(width: 291, height: 80)
                    .offset(x: 33, y: 90)
                    .foregroundColor(.white.opacity(0.2))

            }
            .padding(.horizontal)
            
            // Find your doctor
            HStack{
                Text("Lets find your doctor")
                    .font(.system(size: 19))
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "slider.horizontal.3")
                    .font(.system(size: 25))
                    .foregroundColor(Color("Color"))
            }
            .padding(.horizontal)
            
            // Medical Section
            HStack{
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 165, height: 45)
                    .foregroundColor(.white)
                    .shadow(radius: 0.1, x: 0, y: 1)
                    .overlay(
                        Text("❤️  Heart surgeon")
                            .font(.subheadline)
                    )
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 165, height: 45)
                    .foregroundColor(.white)
                    .shadow(radius: 0.1, x: 0, y: 1)
                    .overlay(
                        Text("💊  Psychologist")
                            .font(.subheadline)
                    )
            }
            .padding(.vertical)
            
            
            // Doctor
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.white)
                .frame(width: 355, height: 110)
                .shadow(radius: 2)
                .overlay(
                    HStack{
                        Image("pp")
                            .resizable()
                            .frame(width: 75, height: 80)
                            .cornerRadius(15)
                            .padding()
                        VStack(alignment: .leading){
                            Text("Dr. Alan Hataway")
                                .bold()
                                .padding(.bottom,0.1)
                            Text("Cardiovascular")
                                .font(.subheadline)
                                .foregroundColor(.gray.opacity(0.7))
                                .padding(.bottom,7)
                            HStack{
                                ForEach(0 ..< 5) { item in
                                    Image(systemName: "star.fill")
                                        .font(.system(size: 12))
                                        .foregroundColor(.yellow)
                                }
                                Text("4.8 | 177 Reviews")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                )
            // Tabview
            TabView{
                
                TabPage()
                    .tag(1)
                    .tabItem {
                        Image(systemName: "house")
                            
                    }
                    
                TabPage()
                    .tag(2)
                    .tabItem {
                        Image(systemName: "doc.plaintext")
                    }
                TabPage()
                    .tag(3)
                    .tabItem {
                        Image(systemName: "calendar")
                    }
                AnimationView()
                    .tag(4)
                    .tabItem {
                        Image(systemName: "person")
                    }
                    .edgesIgnoringSafeArea(.bottom)
            }
            .accentColor(Color("Color"))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
