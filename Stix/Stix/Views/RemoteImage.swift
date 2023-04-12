//
//  RemoteImage.swift
//  Stix
//
//  Created by Michael Lee on 4/12/23.
//

import SwiftUI

struct RemoteImage: View {
    
    @State var url: URL? = nil
    @State private var image: Image? = nil
    
    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()
        }
        .onAppear() {
            loadImage()
        }
    }
}

extension RemoteImage {
    
    func loadImage() {
        print("*** Loading Image...")
        guard let url = url else {
            print("*** Error loading image: incorrect URL"); return }
        Task {
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                if let uiImage = UIImage(data: data) {
                    print("*** Image Loaded")
                    await MainActor.run {
                        self.image = Image(uiImage: uiImage)
                    }
                } else {
                    print("*** Error loading Image: No Such Image")
                    await MainActor.run {
                        self.image = Image(systemName: "")
                    }
                }
            } catch {
                print("*** Error loading Image: \(error)")
                await MainActor.run {
                    self.image = Image(systemName: "")
                }
            }
           
        }

    }
}

struct RemoteImage_Previews: PreviewProvider {
    static var previews: some View {
        RemoteImage(url: URL(string: "https://s3.us-west-2.amazonaws.com/com.soshlapp.assets/images/Bo.png")!)
    }
}
