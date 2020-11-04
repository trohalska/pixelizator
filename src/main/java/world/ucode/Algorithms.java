package world.ucode;

import java.awt.*;
import java.awt.image.BufferedImage;

public class Algorithms {
    public static void imageToRect (BufferedImage image, int pixel) {
        int[] colorsRGB = new int[3]; // int[0] RED, int[1] GREEN,  int[2] BLUE
        int countPixel = 0;

        for (int y = 0; y < image.getHeight(); y += pixel) {
            for (int x = 0; x < image.getWidth(); x += pixel) {
                for (int ky = 0; ky < pixel && (y + ky) < image.getHeight(); ky++) {
                    for (int kx = 0; kx < pixel && (x + kx) < image.getWidth(); kx++, countPixel++) {
                        Color pRGB = new Color(image.getRGB(x + kx, y + ky));
                        colorsRGB[0] += pRGB.getRed();
                        colorsRGB[1] += pRGB.getGreen();
                        colorsRGB[2] += pRGB.getBlue();
                    }
                }
                colorsRGB[0] /= countPixel;
                colorsRGB[1] /= countPixel;
                colorsRGB[2] /= countPixel;
                Color RGB = new Color(colorsRGB[0], colorsRGB[1], colorsRGB[2]);
                for (int ky = 0; ky < pixel && (y + ky) < image.getHeight(); ky++) {
                    for (int kx = 0; kx < pixel && (x + kx) < image.getWidth(); kx++) {
                        image.setRGB(x + kx, y + ky, RGB.getRGB());
                    }
                }
                colorsRGB[0] = 0;
                colorsRGB[1] = 0;
                colorsRGB[2] = 0;
                countPixel = 0;
            }
        }
    }
}
