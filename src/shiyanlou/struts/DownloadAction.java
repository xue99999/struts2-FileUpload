package shiyanlou.struts;

import java.io.FileNotFoundException;
import java.io.InputStream;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class DownloadAction extends ActionSupport {

    private static final long serialVersionUID = 1L;
    
    private String downloadPath;
    
    private String filename;
    
    public InputStream getTargetFile() throws FileNotFoundException {
    	String realPath = downloadPath + "/" + getFilename();
    	System.out.println(downloadPath);
    	System.out.println(realPath);
    	
    	return ServletActionContext.getServletContext().getResourceAsStream(realPath);
    }
    
    public String execute() {
    	return "success";
    }

	public String getDownloadPath() {
		return downloadPath;
	}

	public void setDownloadPath(String downloadPath) {
		this.downloadPath = downloadPath;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
    
}
