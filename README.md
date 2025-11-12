
# SwiftUI ColorSlider


 ![im01](screenshots/image01.png)  ![im02](screenshots/image02.png)


**ColorSlider** is a simple SwiftUI view and data model, that displays a color slider.
It is used to dynamically select a color from a range of colors or grayscales.

The main elements are **ColorSlider.swift** and **ColorModel.swift**.

The key to using this *ColorSlider* in your code is to create a **ColorModel** such as:

    @State var colorModel = ColorModel()

It is passed to the *ColorSlider* using *.environment(colorModel)*.

See also the *ColorSliderDemo* repo for a demo use.

As the slider knob is changed, the current color selected can be obtain from the **ColorModel** using:
    
    colorModel.color
    
The following can be set to customise the **ColorModel** and thus the **ColorSlider**:

- nColors, the number of colors to display in the slider, default 100.
- saturation, the desired saturation value, default 1.
- brightness, the desired brightness value, default 1.
- grayScale, to change the palette grayscale or color, default false = color
- bandSize, to set the thichness of the color bands in the slider, default 1.

**ColorSlider** is displayed as a slider gradient of colors (or gray scales), from white to black.

To have a gray scale slider, initialise the **ColorModel** as:

     colorModel.grayScale = true
     colorModel.updatePalette()
    
## Example of vertical sliders

For a vertical slider just add:

    .rotationEffect(.degrees(90))

The color slider on the left is with the default settings.

The color slider on the right has parameters: **nColors=10**, and a color **bandSize=10**


![im01](screenshots/v1.png)  ![im01](screenshots/v2.png)


