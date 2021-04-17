package ro.emanuel.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ro.emanuel.dao.ClientDAO;
import ro.emanuel.pojo.Client;

@Controller
public class ClientController  {

	@RequestMapping(value="client.htm",method=RequestMethod.GET)
	public ModelAndView listClienti() throws SQLException {
		ModelMap model = new ModelMap();
		ArrayList<Client> clienti = ClientDAO.getClienti();
		model.put("clienti", clienti);
	
		return new ModelAndView("client.jsp", model);
	}
	
	 @RequestMapping(value = "add-client.htm",method=RequestMethod.POST)
	    public ModelAndView adaugaClient(@ModelAttribute("add-client.htm") Client client) throws SQLException {
		 if(ClientDAO.getClientiById(client.getId()) != null);
		 ClientDAO.createClient(client);
         return new ModelAndView("redirect:/client.htm");
	 }
	 
}
