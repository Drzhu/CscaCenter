package test;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;

public class buffered {
	public static void main(String[] args) throws Exception {
		dd();
	}

	private static void dd() throws Exception {
		BufferedReader fr = new BufferedReader(new FileReader("E:\\Eclipse WorkSapce\\CscaCenter\\src\\main\\webapp\\file\\蛛网膜.docx"));
		StringBuffer sb = new StringBuffer();
		String data = "";
		while ((data = fr.readLine()) != null) {
			sb.append(data);
		}
		System.err.println(sb.toString());
	}
}
