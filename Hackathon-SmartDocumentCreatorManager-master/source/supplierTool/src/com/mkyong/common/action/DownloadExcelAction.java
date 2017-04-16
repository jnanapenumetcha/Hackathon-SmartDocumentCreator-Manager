package com.mkyong.common.action;
 
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.opensymphony.xwork2.ActionSupport;
 
public class DownloadExcelAction extends ActionSupport implements ServletRequestAware,ServletResponseAware{
	
	HttpServletRequest request;
	HttpServletResponse response;
	
	byte[] output=null;
 
	private InputStream fileInputStream;
	
	private boolean fileUploaded;
	private String message;
	
	
	
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public boolean isFileUploaded() {
		return fileUploaded;
	}

	public void setFileUploaded(boolean fileUploaded) {
		this.fileUploaded = fileUploaded;
	}

	public InputStream getFileInputStream() {
		return fileInputStream;
	}
 
	public String execute() throws Exception {
		
		Document doc = null;
		setFileUploaded(false);
		try {
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			Date date = new Date();
			
			System.getProperties().put("proxySet", "true");
			System.getProperties().put("proxyHost", "host");
			System.getProperties().put("proxyPort", "port"); 
			
			/*Properties p = System.getProperties();
			p.put("http.proxyHost","");
			p.put("http.proxyPort","80");
			System.setProperties(p);*/
			// need http protocol
			
			String relativeWebPath = "supplierExcel";
            
            ServletContext context = ServletActionContext.getServletContext();
            
           String absoluteDiskPath = context.getRealPath(relativeWebPath);
           
           String fileName = "uploadedFile" + request.getSession().getId() + ".xlsx";
           
           String path = absoluteDiskPath + "//"+fileName;
           
           File uploadFile = new File(path);
			
			FileInputStream file = new FileInputStream(uploadFile);
            
			//Get the workbook instance for XLS file
			XSSFWorkbook workbook = new XSSFWorkbook (file);
			
			XSSFSheet sheet = workbook.getSheetAt(0);
			
			Iterator<Row> rowIterator = sheet.iterator();
			
			
			int rowCount = 0;
			Map<String,Map<String,String>> cellMap = new LinkedHashMap<String,Map<String,String>>();
			//Get the workbook instance for XLS file
			XSSFWorkbook workbook1 = new XSSFWorkbook();
			
			XSSFSheet sheet1 = workbook1.createSheet();
			
			
			 int rownum = 0;
	            Row row0 = sheet1.createRow(rownum++);
	        	Cell cell0 = row0.createCell(0);
	        	cell0.setCellValue("Suppliers");
	        	
	        	Cell cell12 = row0.createCell(1);
	        	cell12.setCellValue("Ultimate Parent name");
			
			List<String> omitedList = new ArrayList<String>();
			List<String> headerList = new ArrayList<String>();
			
			
            while (rowIterator.hasNext())
            {
            	
            	if(rowCount>0){
            	Map<String,String> tableMap = new LinkedHashMap<String,String>();
            	String url = "https://en.wikipedia.org/wiki/"; 
                Row row = rowIterator.next();
                //For each row, iterate through all the columns
                Iterator<Cell> cellIterator = row.cellIterator();
                                 
                    Cell cell = cellIterator.next();
                    //Check the cell type and format accordingly
                    switch (cell.getCellType())
                    {
                        
                        case Cell.CELL_TYPE_STRING:                       	
                        		url = url+cell.getStringCellValue();                        
                            break;
                    }
                if(url.equalsIgnoreCase("https://en.wikipedia.org/wiki/")){
                	continue;
                }
                
                try {
                	doc = Jsoup.connect(url).timeout(0).get();
				
                
                if(doc!=null){
           	 
    			// get page title
    			String title = doc.title();
    			
    						
    			

    			Elements links = doc.select("th");
    			
    			if(!links.first().text().equalsIgnoreCase("Type")){
    				omitedList.add(cell.getStringCellValue());
    				continue;
    			}
    			boolean check = true;
    			int cellnum = 2;
    			int test = 0;
    			List<String> key = new ArrayList<String>();
    			for (Element link : links) {
    				if(check){		
    					test++;
    					if(link.text().equalsIgnoreCase("website") || link.text().contains("website"))
    						check = false;
    					key.add(link.text());
    				}
    					
    			}
    			for(int i=0;i<key.size();i++){
    				int headerCount = headerList.size()+2;
    				if(!headerList.contains(key.get(i))){
                     	 Cell cellheader = row0.createCell(headerCount++);
                     	cellheader.setCellValue(key.get(i));
                          headerList.add(key.get(i));
                      
   				}
    			}
    			
    			
    			Row row1 = sheet1.createRow(rownum++);
            	Cell cell1 = row1.createCell(0);
                cell1.setCellValue(cell.getStringCellValue());
                
                try {
                	String caption = doc.select("caption").first().text();
                	Cell cellCaption = row1.createCell(1);
                	cellCaption.setCellValue(caption);
                	
                	
                	boolean check2 = true;
        			List<String> value = new ArrayList<String>();
        			Elements links2 = doc.select("td");
        			for (Element link1 : links2) {
        				if(check2){	
        					value.add(link1.text());
        				}
        				if(link1.text().contains("www") || link1.text().contains(".com")){	
        					check2 = false;
        				}
        				
        			}
        			
        			try {
        				if(key.size()!=value.size()){
            				int difference = value.size() - key.size();
            				for(int i=0 ; i<difference;i++)
            					value.remove(0);
        				}
            				int cellnum2 = 2;
            				for(int i = 0;i<key.size();i++){
                				//tableMap.put(key.get(i), value.get(i));

           	                     boolean cellCheck = true;
            	                     int headerCount = 1;
            	                     for(String str : headerList){
            	                    	 headerCount = ++headerCount;
            	                    	 if(str.equalsIgnoreCase(key.get(i))){
            	                    		 cell = row1.createCell(headerCount);
            	                             cell.setCellValue(value.get(i));
            	                    		 cellCheck = false;                  		 
            	                    	 }                       
            	                     }
            	                     if(cellCheck){
            	                    	 cell = row1.createCell(cellnum2++);
            	                         cell.setCellValue("");
            	                         cellCheck = true;
            	                     }                   	 
            	                     cellnum2++;
            	                         
                			}
            			
    				} catch (Exception e) {
    					omitedList.add(cell.getStringCellValue());
    					continue;
    				}
        			
        			cellMap.put(cell.getStringCellValue(), tableMap);
        			
				} catch (Exception e) {
					omitedList.add(cell.getStringCellValue());
					continue;
				}
                   			
            	
            	}
            	} catch (Exception e) {
					omitedList.add(cell.getStringCellValue());
					continue;
				}
            	}else{
            		rowIterator.next();
            	}
            	rowCount++;
            	
            }
            file.close();		
            
            Row row01 = sheet1.createRow(rownum++);
            Row row02 = sheet1.createRow(rownum++);
            Row row03 = sheet1.createRow(rownum++);
            Row row04 = sheet1.createRow(rownum++);
            
            Cell cell04 = row04.createCell(0);
            cell04.setCellValue("Data not found for below Suppliers");

            
            for(String str: omitedList){
            Row row05 = sheet1.createRow(rownum++);
            Cell cell05 = row05.createCell(0);
            cell05.setCellValue(str);
            }
            
            
            
         // Auto size the column widths
            for(int columnIndex = 0; columnIndex < 150; columnIndex++) {
            	sheet1.autoSizeColumn(columnIndex);
            }
            
            String relativeWebPath1 = "supplierExcel\\uploadedFile"+ request.getSession().getId() + ".xlsx";;
            
            
           String absoluteDiskPath1 = context.getRealPath(relativeWebPath1);
          
           File fileToCreate = new File(absoluteDiskPath1);
           
           if(fileToCreate.exists())
        	   fileToCreate.delete();
           
                //Write the workbook in file system
                FileOutputStream out = new FileOutputStream(absoluteDiskPath1);
                workbook1.write(out);
                //out.flush();
                out.close();
                
                
                
           
        
                fileInputStream = new FileInputStream(fileToCreate);
                           
			
            DateFormat dateFormat1 = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date1 = new Date();
            System.out.println(dateFormat.format(date1));
            
            ByteArrayOutputStream baos = new ByteArrayOutputStream();

			byte[] buffer = null;
			int bytesRead;
			buffer = new byte[fileInputStream.toString().getBytes().length];
			bytesRead = fileInputStream.read(buffer);
			while (bytesRead >= 0) {
				if (bytesRead > 0) {
					baos.write(buffer, 0, bytesRead);
					bytesRead = fileInputStream.read(buffer);
				}
			}
			// writing to the browser
			output = baos.toByteArray();
			
					
			
			response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet; charset=UTF-8");
			response.setHeader("Content-Disposition", "attachment; filename=SupplierInfomation.xlsx");
			if(output!=null){
				response.setContentLength(output.length);
				response.getOutputStream().write(output);
				response.getOutputStream().flush();
			}	
			response.getOutputStream().close();
            
	 
		} catch (Exception e) {
			e.printStackTrace();
			setMessage("Failed in Downloading File.");
			return "error";
		}

	    return null;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
		
	}
}