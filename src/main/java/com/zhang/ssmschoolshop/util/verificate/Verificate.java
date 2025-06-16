package com.zhang.ssmschoolshop.util.verificate;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

public class Verificate {

// Character set that can appear in the verification code image, can be modified as needed
private char mapTable[] = { 'a', 'b', 'c', 'd', 'e', ​​'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q',
'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };

/**
* Function: Generate color verification code image. Parameter width is the width of the generated image, parameter height is the height of the generated image, and parameter is the output stream of the page
*/
public String getCertPic(int width, int height,OutputStream os) {
if (width <= 0)
width = 60;
if (height <= 0)
height = 20;
BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
// Get graphics context
Graphics g = image.getGraphics();
// Set background color
g.setColor(new Color(0x9FDCB1));
g.fillRect(0, 0, width, height);
// Draw the border
g.setColor(new Color(0x9FDCB1));
g.drawRect(0, 0, width - 1, height - 1);
// Get the randomly generated authentication code
String strEnsure = "";
// 4 represents a 4-digit authentication code. If you want to generate more digits of authentication code, increase the value
for (int i = 0; i < 4; ++i) {
strEnsure += mapTable[(int) (mapTable.length * Math.random())];
}
// Display the authentication code in the image. If you want to generate more digits of authentication code, add a drawString statement
g.setColor(new Color(0x172D44));
g.setFont(new Font("Atlantic Inline", Font.PLAIN, 18));
String str = strEnsure.substring(0, 1);
g.drawString(str, 8, 17);
str = strEnsure.substring(1, 2);
g.drawString(str, 20, 15);
str = strEnsure.substring(2, 3);
g.drawString(str, 35, 18);
str = strEnsure.substring(3, 4);
g.drawString(str, 45, 15);
// Randomly generate 10 interference points
Random rand = new Random();
for (int i = 0; i < 10; i++) {
int x = rand.nextInt(width);
int y = rand.nextInt(height);
g.drawOval(x, y, 1, 1);
}
// Release the graphics context
g.dispose();
try {
// Output the image to the page
ImageIO.write(image, "JPEG", os);
} catch (IOException e) {
return "";
}
return strEnsure;
}
}
