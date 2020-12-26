//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Jeff on 24/12/2020.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        //Scrolling
        ScrollView {
            
            //Map visualization
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            //Image
            //TO DO: Redirect the image to the original one.
            
            Button(action: {
                // your action here
                print("Prompts")
                
            }) {
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
            }
            
            
            
            //Park name
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .foregroundColor(.primary)
                
                //Detailed Location
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                //Description
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
