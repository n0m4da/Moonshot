//
//  imageSizes.swift
//  Moonshot
//
//  Created by Luis Rivera on 05/01/24.
//

import SwiftUI

struct imageSizes: View {
    var body: some View {
        Image(.applelogo)
            .resizable()
            .scaledToFit()
            .containerRelativeFrame(.horizontal){
                size, axis in
                size * 0.8
            }
    }
}

#Preview {
    imageSizes()
}
