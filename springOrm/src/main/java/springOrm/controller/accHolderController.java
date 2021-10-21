package springOrm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springOrm.dao.accHolderDao;
import springOrm.model.accHolder;

@Controller
public class accHolderController {
	@Autowired  
	accHolderDao dao;
	
	@RequestMapping("/index")
	public String index()  
	{
		return "index";	
	}
	
    @RequestMapping("/addHolder")    
    public String showform(Model m){    
        m.addAttribute("command", new accHolder());  
        return "addHolder";   
    }   
    
    @RequestMapping(value="/save",method = RequestMethod.POST)    
    public String save(@ModelAttribute("a") accHolder a){    
        dao.save(a);    
        return "redirect:/holderList";   
    }    
    
    @RequestMapping("/holderList")    
    public String holderList(Model m){    
        List<accHolder> list=dao.getHolder();    
        m.addAttribute("list",list);  
        return "holderList";    
    }   
    
    @RequestMapping(value="/editHolder/{id}")    
    public String edit(@PathVariable int id, Model m){    
    	accHolder a=dao.getHolderById(id);    
        m.addAttribute("command",a);  
        return "editHolder";    
    }    

    @RequestMapping(value="/editsave",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("e") accHolder a){    
        dao.update(a);    
        return "redirect:/holderList";    
    }    
 
    @RequestMapping(value="/deleteholder/{id}",method = RequestMethod.GET)    
    public String delete(@ModelAttribute("e") accHolder a){    
        dao.delete(a);    
        return "redirect:/holderList";    
    }     

}
