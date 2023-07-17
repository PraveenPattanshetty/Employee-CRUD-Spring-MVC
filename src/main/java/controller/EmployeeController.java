package controller;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dao.EmployeeDAO;
import dto.Employee;
import service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeService service;

	@GetMapping("loademployee")
	public ModelAndView loadEmployee() {
		return service.loadEmployee();
	}

	@PostMapping("saveemployee")
	public ModelAndView SaveEmployee(@ModelAttribute Employee employee, @RequestParam String date) {
		return service.SaveEmployee(employee, date);
	}

	@GetMapping("fetchall") // for fetching
	public ModelAndView fetch() {
		return service.fetch();
	}

	@GetMapping("delete")
	public ModelAndView delete(@RequestParam int id) {
		return service.delete(id);
	}
	@GetMapping("edit")
	public ModelAndView editEmployee(@RequestParam int id) {
		return service.editEmployee(id);
	}
	
	@PostMapping("updateemployee")
	public ModelAndView UpdateEmployee(@ModelAttribute Employee employee, @RequestParam String date) {
		return service.UpdateEmployee(employee, date);
	}
	@GetMapping("findbyid")
	public ModelAndView fetchById(@RequestParam int id){
		return service.fechById(id);
	}

}
// andView.setViewName("InsertData.jsp");==ModelAndView andView = new
// ModelAndView("InsertData.jsp");

// every req will go to webcontainer---->DispatcherServlet----->