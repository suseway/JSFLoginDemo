package com.jsfdemo.bean.UserBean;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

public class UserBean {

    private String userName;

    private String password;

    

    //Constructor
    public UserBean() {

    }

    public String getPassword() {

        return password;

    }



    public void setPassword(String password) {

        this.password = password;

    }



    public String getUserName() {

        return userName;

    }



    public void setUserName(String userName) {

        this.userName = userName;

    }
    
    public String loginUser() { 
    	
        if("pavel".equals(getUserName()) && "123456".equals(getPassword())) 
            return "success"; 
        
        FacesContext facesContext = FacesContext.getCurrentInstance(); 
        FacesMessage facesMessage = new FacesMessage( 
            "You have entered an invalid user name and/or password"); 
        facesContext.addMessage("loginForm", facesMessage); 
        
        return "failure"; 
    }
    
}
