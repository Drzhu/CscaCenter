package com.guide.util;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.apache.commons.codec.binary.Base64;


public class PDFUtils {
	public static String getImgPath(String data) {
		// 图片输出路径
		String imgFilePath = null;
		try {
			Base64 base64 = new Base64();
			// base64编码解码
			byte[] k = base64.decode(data.substring("data:image/jpeg;base64,".length()));
			InputStream is = new ByteArrayInputStream(k);
			String fileName = UUID.randomUUID().toString();
			//String pdfFilePath = ShopApplicationResource.shopResource.getString("pdftempfiles.file.root");
			String pdfFilePath = "D://test//echarts//";
			imgFilePath = pdfFilePath + fileName + ".jpg";
			double ratio = 1.0;
			BufferedImage image = ImageIO.read(is);
			// 设置图片是否缩放
			int newWidth = (int) (image.getWidth() * ratio);
			int newHeight = (int) (image.getHeight() * ratio);
			Image newimage = image.getScaledInstance(newWidth, newHeight, Image.SCALE_SMOOTH);
			BufferedImage tag = new BufferedImage(newWidth, newHeight, BufferedImage.TYPE_INT_RGB);
			Graphics g = tag.getGraphics();
			g.drawImage(newimage, 0, 0, null);
			g.dispose();
			// 使用io将图片写入文件中
			ImageIO.write(tag, "jpg", new File(imgFilePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
		return imgFilePath;
	}
}
