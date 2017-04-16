package com.mkyong.common.action;



import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.extractor.WordExtractor;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.ConditionalFormattingRule;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.PatternFormatting;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.SheetConditionalFormatting;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.opensymphony.xwork2.ActionSupport;
import com.dropbox.core.DbxAppInfo;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.DbxWebAuthNoRedirect;
import com.dropbox.core.v1.DbxClientV1;
import com.dropbox.core.v1.DbxEntry;
import com.dropbox.core.v1.DbxWriteMode;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;

public class FileUploadAction extends ActionSupport implements ServletRequestAware, SessionAware{

	HttpServletRequest request;
	private SessionMap<String,Object> sessionMap;  
	private File fileUpload;
	private String fileUploadContentType;
	private String fileUploadFileName;
	private String message;
	private boolean fileUploaded;
	private List usertemplates = new ArrayList();
	
	final String APP_KEY = "vux35cdxdm3dm60";
    final String APP_SECRET = "ng3s0b2d8vw620b";

	public List getUsertemplates() {
		return usertemplates;
	}



	public void setUsertemplates(List usertemplates) {
		this.usertemplates = usertemplates;
	}

	MongoClientURI uri = null;
    MongoClient client = null;
    MongoDatabase db = null;
    String data = null;
    
    private List documents = new ArrayList();
    
    public List getDocuments() {
        return documents;
    }
    
    private List userdocuments = new ArrayList();
    private String yourColumn;
    
    
	public List getUserdocuments() {
		return userdocuments;
	}



	public void setUserdocuments(List userdocuments) {
		this.userdocuments = userdocuments;
	}



	public String getYourColumn() {
		return yourColumn;
	}



	public void setYourColumn(String yourColumn) {
		this.yourColumn = yourColumn;
	}



	public void setDocuments(List documents) {
		this.documents = documents;
	}



	public String getFileUploadContentType() {
		return fileUploadContentType;
	}

	public void setFileUploadContentType(String fileUploadContentType) {
		this.fileUploadContentType = fileUploadContentType;
	}

	public String getFileUploadFileName() {
		return fileUploadFileName;
	}

	public void setFileUploadFileName(String fileUploadFileName) {
		this.fileUploadFileName = fileUploadFileName;
	}

	public File getFileUpload() {
		return fileUpload;
	}

	public void setFileUpload(File fileUpload) {
		this.fileUpload = fileUpload;
	}
	
	

	public String execute() throws Exception{
		
		FileInputStream file = null;
		
		try {
			
			uri  = new MongoClientURI("mongodb://user:user@ds015713.mlab.com:15713/hackathon");
		    client = new MongoClient(uri);
		    db = client.getDatabase(uri.getDatabase());
		    
			if(fileUpload!=null){
				
			
			
			file = new FileInputStream(fileUpload);
			
			if(FilenameUtils.getExtension(fileUploadFileName).equalsIgnoreCase("doc") ||
					FilenameUtils.getExtension(fileUploadFileName).equalsIgnoreCase("docx")){
				
				
                		
				
						XWPFDocument document = new XWPFDocument(file);
						List<XWPFParagraph> paragraphs = document.getParagraphs();

						
					    
					    
					    //read data from mongoDB
					    DBCollection collection = client.getDB("hackathon").getCollection("template");
					    
					    ArrayList<DBObject> list = new ArrayList<DBObject>();
					    
					  

		                for (XWPFParagraph para : paragraphs) {
		                	if(para.getText().contains("[")){
		                		int count = 1;
		                		
		                		
		                			if(para.getText().toString().split("\\[").length>1){
		                				while(para.getText().toString().split("\\[").length>count){
		                					BasicDBObject data = new BasicDBObject();
		                					
		                					data.append("key" , para.getText().toString().split("\\[")[count].split("\\]")[0]);
		                					data.append("DB" , "");
		                					
		                					data.append("TEMPLATE_NAME" , fileUploadFileName);

		                					list.add(data);
			                				count++;
			                				
		                				}
		                				
		                				
		                			}
		                			
		                		
		               
		                	}
		                }
		                
		                collection.insert(list);
		                
		                //Save to drive
		                
		                DbxAppInfo appInfo = new DbxAppInfo(APP_KEY, APP_SECRET);
		                
		                @SuppressWarnings("deprecation")
		        		DbxRequestConfig config = new DbxRequestConfig("JavaTutorial/1.0",
		                    Locale.getDefault().toString());
		                @SuppressWarnings("deprecation")
		        		DbxWebAuthNoRedirect webAuth = new DbxWebAuthNoRedirect(config, appInfo);

		                // Have the user sign in and authorize your app.
		                String authorizeUrl = webAuth.start();
		                String accessToken = "asnLs1XsirAAAAAAAAAACB6XFUgTIQFVU43TUQXe_pXDCyV2OzLdQs4vy7BJ5byq";

		                DbxClientV1 clientfile = new DbxClientV1(config, accessToken);
		                
		                FileInputStream inputStream = new FileInputStream(fileUpload);
		                
		                
		                DbxEntry.File uploadedFile = clientfile.uploadFile("/"+fileUploadFileName, DbxWriteMode.add(), fileUpload.length(), inputStream);
		                    System.out.println("Uploaded: " + uploadedFile.toString());
            			
            			
            			
            			
            			setMessage("File Uploaded Successfully! Proceed to next step.");
            			setFileUploaded(true);
            			sessionMap.put("templateName",fileUploadFileName);
                	       
			
		}else{
			setMessage("Please upload the correct .doc/,docx template");
			setFileUploaded(false);
		}
			}else{
				System.out.println(yourColumn);
				setMessage("Template Loaded Successfully! Proceed to next step.");
				sessionMap.put("templateName",yourColumn);  
			}
			
			DBCollection usercollection = client.getDB("hackathon").getCollection("template");
	        
			 usertemplates = usercollection.distinct("TEMPLATE_NAME");
			 
			 DBCollection collection = client.getDB("hackathon").getCollection("template");
			 BasicDBObject query = new BasicDBObject();
			 if(fileUpload!=null)
				 query.put("TEMPLATE_NAME", fileUploadFileName);
			 else
				 query.put("TEMPLATE_NAME", yourColumn);
			 DBCursor cursor = collection.find(query);
			 List<DBObject> dbcursor = new ArrayList<DBObject>();
			 while(cursor.hasNext())
			 {
				 dbcursor.add(cursor.next());
			 }
			 
			 for(DBObject cr:dbcursor){
				 FileDocument doc = new FileDocument();
				 doc.setTableId(cr.get("tableId")!=null?cr.get("tableId").toString():"");
				 doc.setKey(cr.get("key")!=null?cr.get("key").toString():"");
				 doc.setDb(cr.get("DB")!=null?cr.get("DB").toString():"");
				 documents.add(doc);
			 }
			
	       
			 DBCollection usercollection1 = client.getDB("hackathon").getCollection("userdetails");
	        
			 DBObject obj = usercollection1.findOne();
			 
			 userdocuments.addAll(obj.keySet());
			// sessionMap.put("fileUpload", fileUpload);
			 
		} catch (Exception e) {
			//e.printStackTrace();
			setMessage("Please upload the correct template provided");
			setFileUploaded(false);
			return SUCCESS;
		}finally{
			if(file!=null)
			file.close();
		}
		
		 
		 
		return SUCCESS;
		
	}
	
	public String display() {
		return NONE;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getMessage() {
		return message;
	}

	public void setFileUploaded(boolean fileUploaded) {
		this.fileUploaded = fileUploaded;
	}

	public boolean isFileUploaded() {
		return fileUploaded;
	}



	@Override
	public void setSession(Map<String, Object> map) {
		sessionMap=(SessionMap)map;  
		
	}


	
}