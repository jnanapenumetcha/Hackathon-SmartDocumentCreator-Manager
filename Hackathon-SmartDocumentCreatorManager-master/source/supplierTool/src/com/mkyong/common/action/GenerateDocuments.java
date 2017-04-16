package com.mkyong.common.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.poi.xwpf.usermodel.XWPFRun;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.dropbox.core.DbxAppInfo;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.DbxWebAuthNoRedirect;
import com.dropbox.core.v1.DbxClientV1;
import com.dropbox.core.v1.DbxEntry;
import com.dropbox.core.v1.DbxWriteMode;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoDatabase;
import com.opensymphony.xwork2.ActionSupport;

public class GenerateDocuments extends ActionSupport implements SessionAware,ServletRequestAware{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -5802287592464155349L;
	
	HttpServletRequest request;
	MongoClientURI uri = null;
    MongoClient client = null;
    MongoDatabase db = null;
    final String APP_KEY = "vux35cdxdm3dm60";
    final String APP_SECRET = "ng3s0b2d8vw620b";
    private SessionMap<String,Object> sessionMap; 
	
	public String execute() throws Exception{
		
		String templateName = (String) sessionMap.get("templateName");
		
		//File uploadedFile = (File) sessionMap.get("fileUpload");
		
    	//String filepath = "S:\\hackathon\\AdmissionDocument.docx";
		//String outpath="";
		
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
        
       
        
        String absoluteDiskPath = "S:\\hackathon";
        
        FileOutputStream outputStream = new FileOutputStream(absoluteDiskPath+"\\"+templateName);
        try {
            DbxEntry.File downloadedFile = clientfile.getFile("/"+templateName, null,
                outputStream);
            System.out.println("Metadata: " + downloadedFile.toString());
        } finally {
            outputStream.close();
        }
        
        File file0 = new File(absoluteDiskPath+"\\"+templateName);
        
        FileInputStream inputStream = new FileInputStream(file0);
        
		uri  = new MongoClientURI("mongodb://user:user@ds015713.mlab.com:15713/hackathon");
	    client = new MongoClient(uri);
	    db = client.getDatabase(uri.getDatabase());
	    
	    //read data from mongoDB
	    DBCollection templatecollection = client.getDB("hackathon").getCollection("template");	    
	    DBCursor templatecursor = templatecollection.find();
		
	    DBCollection usercollection = client.getDB("hackathon").getCollection("userdetails");	    
	    DBCursor usercursor = usercollection.find();
	    
        FileOutputStream out = null; //new FileOutputStream(new File(outpath));
        
       XWPFDocument doc = new XWPFDocument(inputStream);
       DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
       Date today = Calendar.getInstance().getTime(); 
        
        List<DBObject> templatecursorObj = new ArrayList<DBObject>();
        while(templatecursor.hasNext()){
        	DBObject obj = templatecursor.next();
        	templatecursorObj.add(obj);
        }
        
        List<DBObject> usercursorObj = new ArrayList<DBObject>();
        while(usercursor.hasNext()){
        	DBObject obj1 = usercursor.next();
        	usercursorObj.add(obj1);
        }
        
        for(int i = 0; i<usercursorObj.size(); i++){
        	DBObject userobj = usercursorObj.get(i);
        	Set<String> keys = userobj.keySet();
        
        for (XWPFParagraph p : doc.getParagraphs()) {
            List<XWPFRun> runs = p.getRuns();
            if (runs != null) {
                for (XWPFRun r : runs) {
                    String text = r.getText(0);
                    	
	                    for(DBObject ob:templatecursorObj){
	                    	String key = (String) ob.get("key");
	                    	
	                    	if(keys.contains(key))
	                    	{
	                    		if(text!=null && text.contains(key))
	                    		{
	                    			if("currentdate".equalsIgnoreCase(text)){
	                    				text = text.replace(text, df.format(today));
	                    			}else{
	                    				text = text.replace(key, userobj.get(key).toString());
	                    			}
	                    			r.setText(text, 0);
	                    		}
	                    	}
	                    	
	                    }
                }
            }
        }
        String outpath = absoluteDiskPath+"\\"+(String)userobj.get("firstname")+ (String)userobj.get("lastname")+"_"+templateName;
        out = new FileOutputStream(new File(outpath));
        
        
        doc.write(out);
        
        
        
        File file1 = new File(outpath);
        
        FileInputStream inputStream1 = new FileInputStream(file1);
        
        DbxEntry.File uploadedFile = clientfile.uploadFile("/"+(String)userobj.get("firstname")+ (String)userobj.get("lastname")+"_"+templateName, DbxWriteMode.add(), file1.length(), inputStream1);
            System.out.println("Uploaded: " + uploadedFile.toString());
		
		
        }
		return SUCCESS;
		
	}

	@Override
	public void setSession(Map<String, Object> map) {
		sessionMap=(SessionMap)map; 
		
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		
	}

}
