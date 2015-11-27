package new1.project;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.Query.FilterPredicate;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.CompositeFilterOperator;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.Filter;

@Controller
public class UserController {
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String getAddUserPage(ModelMap model) {

		return "login1";

	}
	
	@RequestMapping(value="/registration",method = { RequestMethod.GET, RequestMethod.POST })
	public String getPage(ModelMap model) {

		return "registration";

	}
	@RequestMapping(value="/store", method = { RequestMethod.GET, RequestMethod.POST })
	public String registration(HttpServletRequest request, ModelMap model) {

		String username = request.getParameter("username");
		String password = request.getParameter("password1");
		String fname = request.getParameter("name");

	     Key userKey = KeyFactory.createKey("User",username);
	        
                Entity user = new Entity("User", userKey);
                user.setProperty("username", username);
                user.setProperty("password", password);
                user.setProperty("nmae1", fname);
                
                DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
                datastore.put(user);
                HttpSession session = request.getSession();
                
            	session.setAttribute( "namefull", fname );
            	session.getAttribute("namefull");
                return "login1";
        
	}
	@RequestMapping(value="/storeMob", method = { RequestMethod.GET, RequestMethod.POST })
	public String loginSuccess(HttpServletRequest request, ModelMap model) {

		String mobile = request.getParameter("num12");
		

	     Key userKey1 = KeyFactory.createKey("User",mobile);
	        
                Entity user1 = new Entity("User", userKey1);
                user1.setProperty("MobNum", mobile);
               
                
                DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
                datastore.put(user1);
                HttpSession session = request.getSession();
               
            	session.setAttribute( "Mob", mobile );
            	session.getAttribute("Mob");
                
                return "offers";
        
	}
	@RequestMapping(value="/list",method = { RequestMethod.GET, RequestMethod.POST })
	public String listUser(ModelMap model) {
		 DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		 Query query = 
                 new Query("User").addSort("date", Query.SortDirection.DESCENDING);
       List<Entity> users = 
                 datastore.prepare(query).asList(FetchOptions.Builder.withLimit(10));
	    
	        model.addAttribute("userList",  users);
	    
		return "list";

	}
	
	@RequestMapping(value="/validate",method = { RequestMethod.GET, RequestMethod.POST })
	public String getValidate(HttpServletRequest request, ModelMap model)
	{	
		String username = request.getParameter("use");
		String password = request.getParameter("pas");
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		Filter usernamef =
				  new FilterPredicate("username",
				                      FilterOperator.EQUAL,username);

				Filter passwordf =
				  new FilterPredicate("password",
				                      FilterOperator.EQUAL,
				                      password);
				Filter combined =
						  CompositeFilterOperator.and(usernamef, passwordf);

		Query query = new Query("User").setFilter(combined);
		
		PreparedQuery pq = datastore.prepare(query);
		Entity user = pq.asSingleEntity();
		
		if(user==null)
		{
		return "errorpag";
		}
		else
		{
			return "loginSuccess";
		}
	}
	@RequestMapping(value="/offer", method = { RequestMethod.GET, RequestMethod.POST })
	public String getOfferPage (ModelMap model) {

		return "offers";

	}
	
	@RequestMapping(value="/resultpage", method = { RequestMethod.GET, RequestMethod.POST })
	public String getResultPage (ModelMap model) {

		return "result";

	}
	@RequestMapping(value="/contact", method = { RequestMethod.GET, RequestMethod.POST })
	public String getContactPage (ModelMap model) {

		return "contact";

	}
	@RequestMapping(value="/success", method = { RequestMethod.GET, RequestMethod.POST })
	public String getSuccessPage (ModelMap model) {

		return "loginSuccess";

	}
	@RequestMapping(value="/payment", method = { RequestMethod.GET, RequestMethod.POST })
	public String getPaymentPage (ModelMap model) {

		return "payment";

	}
	


	
}
