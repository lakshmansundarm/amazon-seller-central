package com.seller.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.seller.beans.SellerDetails;
import com.seller.dao.SellerDao;


@Controller
public class SellerController {
	@Autowired  
	SellerDao dao;
	 @RequestMapping("/sellerForm")    
	    public String showform(Model m){    
	        m.addAttribute("command", new SellerDetails());  
	        return "sellerform";   
	    } 
	    
	    @RequestMapping(value="/save",method = RequestMethod.POST)    
	    public String save(@ModelAttribute("seller") SellerDetails s){    
	        dao.save(s);    
	        return "redirect:/viewsellerForm";//will redirect to viewemp request mapping    
	    } 
	    
	    @RequestMapping("/viewsellerForm")    
	    public String viewemp(Model m){    
	        List<SellerDetails> list=dao.getSellers();    
	        m.addAttribute("list",list);  
	        return "viewsellerform";    
	    } 
	    
	  
	    @RequestMapping(value="/editForm/{sellerid}")    
	    public String edit(@PathVariable int sellerid, Model m){ 
	    	
	    	SellerDetails sel=dao.getSellerById(sellerid);    
	        m.addAttribute("command",sel);  
	        return "editsellerform";    
	    }    
	    /* It updates model object. */    
	    @RequestMapping(value="/editsave",method = RequestMethod.POST)    
	    public String editsave(@ModelAttribute("sel") SellerDetails sel){    
	        dao.update(sel);    
	        return "redirect:/viewsellerForm";    
	    }    
	    
	    
	    @RequestMapping(value="/deleteseller/{sellerid}",method = RequestMethod.GET)    
	    public String delete(@PathVariable int sellerid){    
	        dao.delete(sellerid);    
	        return "redirect:/viewsellerForm";    
	    }    
}