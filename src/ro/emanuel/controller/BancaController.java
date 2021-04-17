package ro.emanuel.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ro.emanuel.dao.BancaDAO;
import ro.emanuel.pojo.Banca;

@Controller

public class BancaController {

	@RequestMapping(value="banca.htm",method=RequestMethod.GET)
	public ModelAndView listBanci() throws SQLException {
		ModelMap model = new ModelMap();
		
		ArrayList<Banca> banci = BancaDAO.getBanca();
		model.put("banci", banci);
	
		return new ModelAndView("banca.jsp", model);
	}
		
	@RequestMapping(value = "add-banca.htm",method=RequestMethod.POST)
    public ModelAndView adaugaBanca(@ModelAttribute("banca.htm") Banca banca) throws SQLException {
	 if(BancaDAO.getBancaById(banca.getId()) != null);
	 BancaDAO.createBanca(banca);
     return new ModelAndView("redirect:/banca.htm");
 }
	
}
