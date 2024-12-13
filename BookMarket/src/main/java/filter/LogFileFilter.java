package filter;

import java.io.*;
import java.util.*;
import java.text.*;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;

public class LogFileFilter implements Filter {

	PrintWriter writer;
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		String filename = filterConfig.getInitParameter("filename");
		if(filename == null) {
			throw new ServletException("로그파일의 이름을 찾을 수 없음");
		}
		
		try {
			writer = new PrintWriter(new FileWriter(filename, true), true);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		writer.println("접속한 클라이언트 IP : " + request.getRemoteAddr());
		long start = System.currentTimeMillis();
		writer.println("접속한 URL 경로 : " + getURLPath(request));
		writer.println("요청 시작 시간 : " + getCurrentTime());
		
		chain.doFilter(request, response);
		
		long end = System.currentTimeMillis();
		writer.println("요청 종료 시간 : " + getCurrentTime());
		writer.println("요청 소요 시간 : " + (end-start) + "ms" );
		writer.println("-----------------------------------------------");
	}
	
	private String  getCurrentTime() {
		DateFormat format  = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		Calendar calendar =Calendar.getInstance();
		
		calendar.setTimeInMillis(System.currentTimeMillis());
		return format.format(calendar.getTime());
	}
	
	//ServletRequest(부모) -> HttpServletRequest(자식) : 더 많은 메소드를 사용하기 위함
	//HttpServletRequest는 ServletRequest를 상속
	private String getURLPath(ServletRequest request) {
		HttpServletRequest req;
		String currentPath = "";
		String queryString = "";
		if ( request instanceof HttpServletRequest) {
			req = (HttpServletRequest) request;
			currentPath = req.getRequestURI();
			queryString = req.getQueryString();		
			queryString = queryString == null ? "" : "?" + queryString;
		}
		return currentPath+queryString;
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		Filter.super.destroy();
		writer.close();
	}
}
