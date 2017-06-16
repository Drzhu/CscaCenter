package com.guide.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;

import javax.servlet.ServletContext;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.ServletContextAware;

import com.guide.util.PDFUtils;

@Controller
@RequestMapping("/test")
public class TestController implements ServletContextAware {

	private ServletContext context;

	@RequestMapping(value = "uploadimg", method = RequestMethod.GET)
	public String upload1(HttpServletRequest request, HttpServletResponse response) {
		System.err.println("test");
		return "test";
	}

	@RequestMapping(value = "uploadimg", method = RequestMethod.POST)
	@ResponseBody
	public String upload(@RequestParam("data") String data, HttpServletRequest request, HttpServletResponse response) {
		System.err.println(data);
		PDFUtils.getImgPath(data);
		return "success";
	}

	@RequestMapping(value = "down", method = RequestMethod.GET)
	public void down(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String filePath = "";
		filePath = context.getRealPath("/");
		InputStream input = new FileInputStream(filePath+"/file/ss.docx");
		// InputStream input = new FileInputStream("E:\\Eclipse
		// WorkSapce\\CscaCenter\\src\\main\\webapp\\file\\ss.docx");
		ServletOutputStream out = resp.getOutputStream();
		resp.setContentType("multipart/form-data");
		resp.setHeader("Content-Disposition", "attachment;filename="+URLEncoder.encode("雪山", "UTF-8")+".docx");
		byte[] buffer = new byte[1024];
		int i = 0;
		while ((i = input.read(buffer)) != -1) {
			out.write(buffer, 0, i);
		}
		input.close();
		out.flush();
		out.close();
	}

	@RequestMapping(value = "txt", method = RequestMethod.GET)
	public void h_main(HttpServletRequest request, HttpServletResponse resp) {
		File file = new File("D://txt//txt.txt");
		InputStream fin = null;
		ServletOutputStream out = null;
		String fileName = "s.txt";
		try {
			fin = new FileInputStream(file);
			resp.setCharacterEncoding("utf-8");
			resp.setContentType("text/plain");
			resp.addHeader("Content-Disposition", "attachment;filename=" + fileName);
			out = resp.getOutputStream();
			byte[] buffer = new byte[512]; // 缓冲区
			int bytesToRead = -1;
			// 通过循环将读入的Word文件的内容输出到浏览器中
			while ((bytesToRead = fin.read(buffer)) != -1) {
				out.write(buffer, 0, bytesToRead);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (fin != null)
				try {
					fin.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			if (out != null)
				try {
					out.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			if (file != null)
				file.delete(); // 删除临时文件
		}
	}

	@Override
	public void setServletContext(ServletContext servletContext) {
		this.context = servletContext;
	}
}
