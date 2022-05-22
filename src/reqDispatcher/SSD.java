package reqDispatcher;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.PointEntity;
import entity.VideoEntity;
import jdbc.AllService;
import jdbc.SSDService;

/**
 * Servlet implementation class UploadVeo
 */
@WebServlet("/SSD")
public class SSD extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String vname = request.getParameter("vname");
//		System.out.println(vname);
		
		PointEntity ssd = AllService.FindSSD(vname);
		
		request.setAttribute("ssd", ssd);
		
		VideoEntity video = AllService.FindVeo(vname);
		
		request.setAttribute("video", video);
		
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/jsp/ssd.jsp");
		
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
