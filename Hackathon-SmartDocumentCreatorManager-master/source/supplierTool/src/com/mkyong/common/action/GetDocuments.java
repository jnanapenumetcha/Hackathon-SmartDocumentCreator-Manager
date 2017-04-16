package com.mkyong.common.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import com.dropbox.core.DbxAppInfo;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.DbxWebAuthNoRedirect;
import com.dropbox.core.v1.DbxClientV1;
import com.dropbox.core.v1.DbxEntry;
import com.dropbox.core.v2.sharing.SharedLinkMetadata;
import com.opensymphony.xwork2.ActionSupport;

public class GetDocuments extends ActionSupport{
	
	private List userdocuments = new ArrayList();
	final String APP_KEY = "vux35cdxdm3dm60";
    final String APP_SECRET = "ng3s0b2d8vw620b";
	

	public List getUserdocuments() {
		return userdocuments;
	}



	public void setUserdocuments(List userdocuments) {
		this.userdocuments = userdocuments;
	}



	public String execute() throws Exception{
		
		try {
			
			DbxAppInfo appInfo = new DbxAppInfo(APP_KEY, APP_SECRET);

	        @SuppressWarnings("deprecation")
			DbxRequestConfig config = new DbxRequestConfig("JavaTutorial/1.0",
	            Locale.getDefault().toString());
	        @SuppressWarnings("deprecation")
			DbxWebAuthNoRedirect webAuth = new DbxWebAuthNoRedirect(config, appInfo);

	        // Have the user sign in and authorize your app.
	        String authorizeUrl = webAuth.start();
	        String accessToken = "asnLs1XsirAAAAAAAAAACB6XFUgTIQFVU43TUQXe_pXDCyV2OzLdQs4vy7BJ5byq";

	        DbxClientV1 client = new DbxClientV1(config, accessToken);
	        
	        
	        DbxEntry.WithChildren listing = client.getMetadataWithChildren("/");
	        System.out.println("Files in the root path:");
	        for (DbxEntry child : listing.children) {
	            System.out.println("	" + child.name + ": " + child.toString());
	            userdocuments.add(child.name);
	        }
	        
	        
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
}
