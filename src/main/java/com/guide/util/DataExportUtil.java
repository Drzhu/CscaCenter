package com.guide.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;

import com.guide.pojo.SubmitHospital;
import com.guide.pojo.ZlpgValue;
import com.guide.pojo.ZlpgVariable;

/**
 * 
* <p>Title: DataExportUtil</p>
* <p>Description: </p>
* <p>Company: </p> 
* @author WANGZHEN
* @date 2016年12月20日
 */
public class DataExportUtil {
	public DataExportUtil() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * 
	 * @param list
	 * @param length
	 * @param f
	 * @param request
	 * @return
	 * @author WANGZHEN
	 * @throws IOException
	 */
	   public static File downloadExcel(List<SubmitHospital> list,int length, String f,HttpServletRequest request) throws IOException {
	        String  file = request.getRealPath("/files") + "/" + f +".xls";    
	        File srcfile = new File(file);  
	        // 生成excel  
	        for (int j = 0, n = list.size() / length + 1; j < n; j++) {  
	            Workbook book = new SXSSFWorkbook(5000);  
	            Sheet sheet = book.createSheet("未填写的医院信息");
	            sheet.setColumnWidth(0, 100 * 30);
 	            sheet.setColumnWidth(1, 100 * 100);
 	            sheet.setColumnWidth(2, 100 * 30);
 	            sheet.setColumnWidth(3, 100 * 60);
 	            sheet.setColumnWidth(4, 100 * 80);
	            double d = 0;// 用来统计  
	            FileOutputStream o = null;  
	            try {  
	                o = new FileOutputStream(file);  
	                Row row = sheet.createRow(0);  
	                row.createCell(0).setCellValue("城市");  
 	                row.createCell(1).setCellValue("医院"); 
 	                row.createCell(2).setCellValue("医院等级"); 
 	                row.createCell(3).setCellValue("卒中中心负责人"); 
 	                row.createCell(4).setCellValue("联系电话"); 
	                for (int i = 1, min = (list.size() - j * length + 1) > (length + 1) ? (length + 1)  
	                        : (list.size() - j * length + 1); i < min; i++) {  
                		row = sheet.createRow(i);  
	            		 row.createCell(0).setCellValue(list.get(i-1).getCity() != null ? list.get(i-1).getCity().toString() : "");
	            		 row.createCell(1).setCellValue(list.get(i-1).getHName() != null ? list.get(i-1).getHName().toString() : "");
	            		 row.createCell(2).setCellValue(list.get(i-1).getHlevel() != null ? list.get(i-1).getHlevel().toString() : "");
	            		 row.createCell(3).setCellValue(list.get(i-1).getJudgeMan() != null ? list.get(i-1).getJudgeMan().toString() : "");
	            		 row.createCell(4).setCellValue(list.get(i-1).getJMTel() != null ? list.get(i-1).getJMTel().toString() : "");
	                }  
	            } catch (Exception e) {  
	                e.printStackTrace();  
	            }  
	            try {  
	                book.write(o);  
	            } catch (Exception ex) {  
	                ex.printStackTrace();  
	            } finally {  
	                o.flush();  
	                o.close();  
	            }  
	        }  
	        return srcfile;
}
	   /**
	    * 
	    * @param list
	    * @param colList
	    * @param length
	    * @param f
	    * @param request
	    * @return
	    * @throws IOException
	    */
	   public static File toExcel(List<ZlpgValue> list,List<ZlpgVariable> colList, int length, String f,HttpServletRequest request) throws IOException {
		   //String  file = request.getRealPath("\\files") + "\\" + f + ".xls";
		   String  file = request.getRealPath("/files") + "/" + f + ".xls";
		   File srcfile = new File(file);  
		   ZlpgValue zv = new ZlpgValue();
		   SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		   // 生成excel  
	        for (int j = 0, n = list.size() / length + 1; j < n; j++) {  
	            Workbook book = new SXSSFWorkbook(5000);  
	            Sheet sheet = book.createSheet("已填写的评估信息");
	            sheet.setColumnWidth(0, 100 * 30);
	            sheet.setColumnWidth(1, 100 * 90);
	            sheet.setColumnWidth(2, 100 * 30);
	            sheet.setColumnWidth(3, 100 * 60);
	            sheet.setColumnWidth(4, 100 * 60);
 	           	for (int i = 0; i < colList.size(); i++) {
	            	sheet.setColumnWidth(i+5, 100 * 40);
				}
	            FileOutputStream o = null;  
	            try {  
	                o = new FileOutputStream(file);  
	                Row row = sheet.createRow(0);  
	                row.createCell(0).setCellValue("城市"); 
	                row.createCell(1).setCellValue("医院"); 
	                row.createCell(2).setCellValue("级别"); 
 	                row.createCell(3).setCellValue("卒中中心负责人");  
 	                row.createCell(4).setCellValue("电话");  
 	               for (int i = 0; i < colList.size(); i++) {
	            	   row.createCell(i+5).setCellValue(colList.get(i).getPcode().toString());  
	               }
	                for (int i = 1, min = (list.size() - j * length + 1) > (length + 1) ? (length + 1)  
	                        : (list.size() - j * length + 1); i < min; i++) {  
	                	row = sheet.createRow(i); 
	                	row.createCell(0).setCellValue(list.get(length * (j) + i - 1).getCity()!=null?list.get(length * (j) + i - 1).getCity().toString():"");
	                	row.createCell(1).setCellValue(list.get(length * (j) + i - 1).getHname()!=null?list.get(length * (j) + i - 1).getHname().toString():"");
	                	row.createCell(2).setCellValue(list.get(length * (j) + i - 1).getHlevel()!=null?list.get(length * (j) + i - 1).getHlevel().toString():"");
	                	row.createCell(3).setCellValue(list.get(length * (j) + i - 1).getJudgeMan()!=null?list.get(length * (j) + i - 1).getJudgeMan().toString():"");
	                	row.createCell(4).setCellValue(list.get(length * (j) + i - 1).getJMTel()!=null?list.get(length * (j) + i - 1).getJMTel().toString():"");
	                	ZlpgValue zlpgValue =list.get(length * (j) + i - 1);
	                	 int m = 0; 
	                	for (int k = 0; k < colList.size(); k++) {
	                		String str = colList.get(k).getPcode().toString();
	                		String first = str.substring(0, 1).toUpperCase();
	                		String rest = str.substring(1, str.length());//.replaceAll("_", "").toLowerCase();
	                		String newStr = "get"+first+rest;
	                		 String value = "";
	                		 Method [] method = ZlpgValue.class.getDeclaredMethods();
	 	                	for(Method me : method){
	 	                	    if(me.getName().equalsIgnoreCase(newStr)){
	 	                	        Method mt1 = zlpgValue.getClass().getMethod(me.getName());
	 	                	        value = mt1.invoke(zlpgValue)!=null?mt1.invoke(zlpgValue).toString()=="true"?"1":"0":"";
	 	                	        row.createCell(m+5).setCellValue(value);
	 	                	       m++;
	 	                	    }
	 	                	}
						}
	                }  
	            } catch (Exception e) {  
	                e.printStackTrace();  
	            }  
	            try {  
	                book.write(o);  
	            } catch (Exception ex) {  
	                ex.printStackTrace();  
	            } finally {  
	                o.flush();  
	                o.close();  
	            }  
	        }  
	       return srcfile;
	   }
	  
   /**
    * @author WANGZHEN
    * @param response
    * @param fileName
    * @date 2016年12月20日 14:34:59
    */
    public static void setResponseHeader(HttpServletResponse response,String fileName) {  
        try {  
            response.setContentType("application/octet-stream;charset=UTF-8"); 
            response.setHeader("Content-Disposition", "attachment;filename="  
                    + java.net.URLEncoder.encode(fileName, "UTF-8")  
                    + ".zip");  
            response.addHeader("Pargam", "no-cache");  
            response.addHeader("Cache-Control", "no-cache");  
        } catch (Exception ex) {  
            ex.printStackTrace();  
        }  
    } 
    
    /**
    * @author WANGZHEN
    * @param response
    * @param fileName
    * @date 2016年12月20日 14:34:59
    */
    public static void setResponseHeaderExcel(HttpServletResponse response,String fileName) {  
        try {  
            response.setContentType("application/octet-stream;charset=UTF-8"); 
            response.setHeader("Content-Disposition", "attachment;filename="  
                    + java.net.URLEncoder.encode(fileName, "UTF-8")  
                    + ".xlsx");  
            response.addHeader("Pargam", "no-cache");  
            response.addHeader("Cache-Control", "no-cache");  
        } catch (Exception ex) {  
            ex.printStackTrace();  
        }  
    } 
    
	/**
	 * 
	 * @author WANGZHEN
	 * <p>dataExcel</p>
	 * @return void
	 * data 2016年12月20日 15:47:57
	 */
    public static void dataExcel(File zip,String fileName,HttpServletResponse response) throws IOException{
    	OutputStream out = null;  
        try {  
            setResponseHeader(response,fileName); 
            out = response.getOutputStream();  
            FileInputStream inStream = new FileInputStream(zip);  
            byte[] buf = new byte[]{(byte)0xEF, (byte)0xBB, (byte)0xBF}; //utf-8 bom  
            int readLength;  
            while (((readLength = inStream.read(buf)) != -1)) {  
                out.write(buf, 0, readLength);  
            }  
            inStream.close();  
        } catch (IOException e1) {  
            e1.printStackTrace();  
        } finally {  
            try {  
        		out.flush();  
                out.close(); 
                return ;
            } catch (IOException e) {  
                e.printStackTrace();  
            }  
        } 
    }
    public static void dataExcelExcel(File file,String fileName,HttpServletResponse response) throws IOException{
    	OutputStream out = null;  
        try {  
        	setResponseHeaderExcel(response,fileName); 
            out = response.getOutputStream();  
            FileInputStream inStream = new FileInputStream(file);  
            byte[] buf = new byte[]{(byte)0xEF, (byte)0xBB, (byte)0xBF}; //utf-8 bom  
            int readLength;  
            while (((readLength = inStream.read(buf)) != -1)) {  
                out.write(buf, 0, readLength);  
            }  
            inStream.close();  
        } catch (IOException e1) {  
            e1.printStackTrace();  
        } finally {  
            try {  
        		out.flush();  
                out.close(); 
                file.delete();
                return ;
            } catch (IOException e) {  
                e.printStackTrace();  
            }  
        } 
    }
}
