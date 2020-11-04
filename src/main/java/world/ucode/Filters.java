package world.ucode;

import java.awt.*;
import java.awt.image.BufferedImage;

public class Filters {

    public static void filterRed(BufferedImage image, int pixel) {
        for (int x = 0; x < image.getWidth(); x++) {
            for (int y = 0; y < image.getHeight(); y++) {
                Color c = new Color(image.getRGB(x, y));
                Color newPixel = new Color(255, c.getGreen(), c.getBlue());
                image.setRGB(x, y, newPixel.getRGB());
            }
        }
    }
}
