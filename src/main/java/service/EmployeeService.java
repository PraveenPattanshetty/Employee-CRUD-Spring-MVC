package service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.EmployeeDAO;
import dto.Employee;

//@Component
@Service // same same
public class EmployeeService {

	@Autowired
	Employee employee;

	@Autowired
	EmployeeDAO dao;

	@GetMapping("loademployee")
	public ModelAndView loadEmployee() {
		ModelAndView andView = new ModelAndView("InsertData");
		andView.addObject("employee", employee);
		return andView;
	}

	@PostMapping("saveemployee")
	public ModelAndView SaveEmployee(Employee employee, String date) {

		employee.setDoj(Date.valueOf(date));
		dao.save(employee);
		ModelAndView andView = new ModelAndView("Home");
		andView.addObject("msg", "Data Added Sucessfully");
		return andView;
	}

	public ModelAndView fetch() {
		ModelAndView andView = new ModelAndView();
		List<Employee> list = dao.fetch();
		if (list.isEmpty()) {
			andView.addObject("msg", "Data Not Available");
			andView.setViewName("Home");
		} else {
			andView.setViewName("Result");
			andView.addObject("list", list);
		}
		return andView;
	}

	public ModelAndView delete(int id) {
		ModelAndView andView = new ModelAndView();
		dao.delete(id);
		List<Employee> list = dao.fetch();
		if (list.isEmpty()) {
			andView.addObject("msg", "No Data Available");
			andView.setViewName("Home.jsp");
		} else {
			andView.addObject("msg", "Data deleted succesfully");
			andView.addObject("list", list);
		}
		return andView;
	}

	public ModelAndView editEmployee(int id) {
		ModelAndView andView = new ModelAndView("Edit");
		andView.addObject("emp", dao.find(id));
		return andView;
	}

	public ModelAndView UpdateEmployee(Employee employee, String date) {
		employee.setDoj(Date.valueOf(date));
		dao.update(employee);

		ModelAndView andView = new ModelAndView("Result");
		andView.addObject("list", dao.fetch());
		andView.addObject("msg", "Data Updated Successfully");
		return andView;
	}

	public ModelAndView fechById(int id) {
		ModelAndView view=new ModelAndView("FetchById");
		view.addObject("emp",dao.find(id));
		return view;
	}
}
