package com.cong.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Date;
import java.time.LocalDateTime;

/**
 * Servlet implementation class Cong
 */
public class Cong extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cong() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("test_jsp.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num1_str = request.getParameter("so1");
		String num2_str = request.getParameter("so2");
		
		if(num1_str==null||num2_str==null) {
			
		}
		
		try {
			int num1 = Integer.parseInt(num1_str);
			int num2 = Integer.parseInt(num2_str);
			
			int kq = num1+num2;
			request.setAttribute("ketqua", kq);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} catch (Exception e) {
			String msg_log =LocalDateTime.now().toLocalDate()+"\n so1:"+num1_str+" so2:"+num2_str+"\n"+e.getMessage();
			
			File fl = new File("F:\\Dai Hoc\\Nam3\\Lập trình web\\Workspace\\test-log\\log.txt");
			if(!fl.exists()) {
				fl.createNewFile();
			}
			
			FileWriter myWriter = new FileWriter(fl);
			myWriter.append(msg_log);
			myWriter.close();
		}
	}

}
