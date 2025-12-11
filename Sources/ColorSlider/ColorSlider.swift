//
//  ColorSlider.swift
//  ColorSlider
//
//  Created by Ringo Wathelet on 2025/11/11.
//
import Foundation
import SwiftUI

/**
 * Example of a color slider
 */
public struct ColorSlider: View {
    @Environment(ColorModel.self) var colorModel
    
    public init() { }
    
    public var body: some View {
        @Bindable var colorModel = colorModel
        Slider(value: $colorModel.value, in: colorModel.colorRange, step: 1)
            .frame(width: 333, height: 33)
            .background(colorModel.colorGradient) // <---
            .onChange(of: colorModel.value) {
                colorModel.updatePalette()
            }
    }
}
