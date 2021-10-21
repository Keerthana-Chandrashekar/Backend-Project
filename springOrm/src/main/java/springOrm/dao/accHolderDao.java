package springOrm.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springOrm.model.accHolder;


@Transactional
@Repository
public class accHolderDao {
HibernateTemplate template;  
    
	public void setTemplate(HibernateTemplate template) {    
	    this.template = template;    
	} 

	public void save( accHolder a){        
	     template.save(a);    
	}    
	public void update(accHolder a){    
	   template.update(a);    
	}    
	public void delete(accHolder a){    
	    template.delete(a);    
	}    


	public accHolder getHolderById(int id){    
		accHolder a = (accHolder)this.template.get(accHolder.class, id);
		return a;    
	}    
	
	
	public List<accHolder> getHolder(){    
		 List<accHolder> list=new ArrayList<accHolder>();  
		    list=template.loadAll(accHolder.class);  
		    return list;    
	}  
}
