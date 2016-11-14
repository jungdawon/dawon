package test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class memberController {
	@Autowired
	private SqlMapClientTemplate sqlMapper;
	
	
	@RequestMapping("/main/inputForm.to")
	public String inputForm(TestData dto,HttpServletRequest request) throws Exception{
		
		sqlMapper.insert("insertM", dto);
		return "/main/inputForm.jsp";
	}
	
	//회원 가입 Pro
	@RequestMapping("/main/inputPro.to")
	public String inputPro(TestData dto,HttpServletRequest request) throws Exception{
		
		sqlMapper.insert("insertM", dto);
		return "/main/inputPro.jsp";
	}

	
}