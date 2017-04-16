package com.mkyong.common.action;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoDatabase;
import com.opensymphony.xwork2.ActionSupport;

public class GetStarted extends ActionSupport{

	private List usertemplates = new ArrayList();
    private String yourColumn;
    
    MongoClientURI uri = null;
    MongoClient client = null;
    MongoDatabase db = null;
    
	
	public List getUsertemplates() {
		return usertemplates;
	}



	public void setUsertemplates(List usertemplates) {
		this.usertemplates = usertemplates;
	}



	public String getYourColumn() {
		return yourColumn;
	}



	public void setYourColumn(String yourColumn) {
		this.yourColumn = yourColumn;
	}



	public String executePage() throws Exception{
		
		uri  = new MongoClientURI("mongodb://user:user@ds015713.mlab.com:15713/hackathon");
	    client = new MongoClient(uri);
	    db = client.getDatabase(uri.getDatabase());
	    
	    DBCollection usercollection = client.getDB("hackathon").getCollection("template");
        
		 usertemplates = usercollection.distinct("TEMPLATE_NAME");
		 
		 
		return SUCCESS;
	}
	
	

	

}
