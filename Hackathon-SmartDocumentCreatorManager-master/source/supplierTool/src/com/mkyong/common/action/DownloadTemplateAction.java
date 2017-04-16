package com.mkyong.common.action;
 
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
 
public class DownloadTemplateAction extends ActionSupport{
 
	private InputStream fileInputStream;
 
	public InputStream getFileInputStream() {
		return fileInputStream;
	}
 
	public String execute() throws Exception {
		String relativeWebPath = "template\\supplierTemplate.xlsx";
        
        ServletContext context = ServletActionContext.getServletContext();
        
       String absoluteDiskPath = context.getRealPath(relativeWebPath);
       System.out.println(absoluteDiskPath);
       
	    fileInputStream = new FileInputStream(new File(absoluteDiskPath));
	    return SUCCESS;
	}
}