package control;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUpload;
import org.apache.commons.fileupload.RequestContext;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.servlet.ServletRequestContext;

import util.Info;

import dao.CommDAO;

public class MainCtrl extends HttpServlet {

	public MainCtrl() {

		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void go(String url, HttpServletRequest request, HttpServletResponse response) {
		try {
			request.getRequestDispatcher(url).forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void gor(String url, HttpServletRequest request, HttpServletResponse response) {
		try {
			response.sendRedirect(url);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String ac = request.getParameter("ac");
		if (ac == null)
			ac = "";
		CommDAO dao = new CommDAO();
		String date = Info.getDateStr();
		String today = date.substring(0, 10);
		String tomonth = date.substring(0, 7);
		HttpSession session = request.getSession();

		// 登录
		if (ac.equals("login")) {
			String username = request.getParameter("uname");
			String password = request.getParameter("upass");
			String utype = request.getParameter("utype");
			String sql = "select * from sysuser where uname='" + username + "' and upass='" + password + "' and utype='"
					+ utype + "'";
			List<HashMap> userlist = dao.select(sql);
			if (userlist.size() != 1) {
				request.setAttribute("error", "");
				go("/index.jsp", request, response);
			} else {
				request.getSession().setAttribute("user", userlist.get(0));
				gor("/sechandmall/admin/index.jsp", request, response);
			}
		}

		if (ac.equals("uploaddoc")) {
			try {
				String filename = "";
				request.setCharacterEncoding("utf-8");
				RequestContext requestContext = new ServletRequestContext(request);
				if (FileUpload.isMultipartContent(requestContext)) {

					DiskFileItemFactory factory = new DiskFileItemFactory();
					factory.setRepository(new File(request.getRealPath("/upfile/") + "/"));
					ServletFileUpload upload = new ServletFileUpload(factory);
					upload.setSizeMax(100 * 1024 * 1024);
					List items = new ArrayList();

					items = upload.parseRequest(request);

					FileItem fileItem = (FileItem) items.get(0);
					if (fileItem.getName() != null && fileItem.getSize() != 0) {
						if (fileItem.getName() != null && fileItem.getSize() != 0) {
							File fullFile = new File(fileItem.getName());
							filename = Info.generalFileName(fullFile.getName());
							File newFile = new File(request.getRealPath("/upfile/") + "/" + filename);
							try {
								fileItem.write(newFile);
							} catch (Exception e) {
								e.printStackTrace();
							}
						} else {
						}
					}
				}

				go("/js/uploaddoc.jsp?docname=" + filename, request, response);
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		}

		// 登录
		if (ac.equals("flogin")) {
			String username = request.getParameter("uname");
			String password = request.getParameter("upass");
			String utype = request.getParameter("utype");
			String sql = "select * from sysuser where status='正常' and uname='" + username + "' and upass='" + password
					+ "' ";
			List<HashMap> userlist = dao.select(sql);
			if (userlist.size() != 1) {
				request.setAttribute("error", "");
				go("/login.jsp", request, response);
			} else {
				request.getSession().setAttribute("user", userlist.get(0));
				gor("index.jsp", request, response);
			}
		}

		// 修改密码
		if (ac.equals("uppass")) {
			String pass = request.getParameter("pass");
			String id = request.getParameter("id");
			String sql = "update sysuser set upass='" + pass + "' where id=" + id;
			dao.commOper(sql);
			request.setAttribute("suc", "");
			go("/admin/uppass.jsp", request, response);
		}

		if (ac.equals("uploadimg")) {
			try {
				String filename = "";
				request.setCharacterEncoding("utf-8");
				RequestContext requestContext = new ServletRequestContext(request);
				if (FileUpload.isMultipartContent(requestContext)) {

					DiskFileItemFactory factory = new DiskFileItemFactory();
					factory.setRepository(new File(request.getRealPath("/upfile/") + "/"));
					ServletFileUpload upload = new ServletFileUpload(factory);
					upload.setSizeMax(100 * 1024 * 1024);
					List items = new ArrayList();

					items = upload.parseRequest(request);

					FileItem fileItem = (FileItem) items.get(0);
					if (fileItem.getName() != null && fileItem.getSize() != 0) {
						if (fileItem.getName() != null && fileItem.getSize() != 0) {
							File fullFile = new File(fileItem.getName());
							filename = Info.generalFileName(fullFile.getName());
							File newFile = new File(request.getRealPath("/upfile/") + "/" + filename);
							try {
								fileItem.write(newFile);
							} catch (Exception e) {
								e.printStackTrace();
							}
						} else {
						}
					}
				}

				go("/js/uploadimg.jsp?filename=" + filename, request, response);
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		}

		// regedit.jsp请求处理开始
		if (ac.equals("regedit")) {
			String uname = request.getParameter("uname") == null ? "" : request.getParameter("uname");
			String upass = request.getParameter("upass") == null ? "" : request.getParameter("upass");
			String utype = request.getParameter("utype") == null ? "" : request.getParameter("utype");
			String tname = request.getParameter("tname") == null ? "" : request.getParameter("tname");
			String sex = request.getParameter("sex") == null ? "" : request.getParameter("sex");
			String age = request.getParameter("age") == null ? "" : request.getParameter("age");
			String tel = request.getParameter("tel") == null ? "" : request.getParameter("tel");
			String addrs = request.getParameter("addrs") == null ? "" : request.getParameter("addrs");
			String qq = request.getParameter("qq") == null ? "" : request.getParameter("qq");
			String bei = request.getParameter("bei") == null ? "" : request.getParameter("bei");
			String savetime = date;
			String filename = request.getParameter("filename") == null ? "" : request.getParameter("filename");
			String hps = "0";
			String status = "正常";
			String sql = "insert into sysuser(uname,upass,utype,tname,sex,age,tel,addrs,qq,bei,savetime,filename,hps,status "
					+ ")values('" + uname + "','" + upass + "','" + utype + "','" + tname + "','" + sex + "','" + age
					+ "','" + tel + "','" + addrs + "','" + qq + "','" + bei + "','" + savetime + "','" + filename
					+ "','" + hps + "','" + status + "')";
			dao.commOper(sql);
			session.setAttribute("suc", "suc");
			response.sendRedirect("/sechandmall/regedit.jsp");
		}
		// regedit.jsp请求处理结束

		// axminfotj.jsp请求处理开始
		if (ac.equals("axminfotj")) {
			String title = request.getParameter("title") == null ? "" : request.getParameter("title");
			String savetime = date;
			String content = request.getParameter("content") == null ? "" : request.getParameter("content");
			String uname = Info.getUser(request).get("uname").toString();
			String tname = Info.getUser(request).get("tname").toString();
			String tel = Info.getUser(request).get("tel").toString();
			String infotype = "爱心";
			String sql = "insert into minfo(title,savetime,content,uname,tname,tel,infotype " + ")values('" + title
					+ "','" + savetime + "','" + content + "','" + uname + "','" + tname + "','" + tel + "','"
					+ infotype + "')";
			dao.commOper(sql);
			session.setAttribute("suc", "suc");
			response.sendRedirect("/sechandmall/admin/axminfotj.jsp");
		}
		// axminfotj.jsp请求处理结束

		// axminfoxg.jsp请求处理开始
		if (ac.equals("axminfoxg")) {
			String id = request.getParameter("id");
			String title = request.getParameter("title") == null ? "" : request.getParameter("title");
			String content = request.getParameter("content") == null ? "" : request.getParameter("content");
			String sql = "update minfo set title='" + title + "',content='" + content + "' where id=" + id;
			dao.commOper(sql);
			session.setAttribute("suc", "suc");
			response.sendRedirect("/sechandmall/admin/axminfoxg.jsp?id=" + id + "");
		}
		// axminfoxg.jsp请求处理结束

		// qgminfotj.jsp请求处理开始
		if (ac.equals("qgminfotj")) {
			String title = request.getParameter("title") == null ? "" : request.getParameter("title");
			String savetime = date;
			String content = request.getParameter("content") == null ? "" : request.getParameter("content");
			String uname = Info.getUser(request).get("uname").toString();
			String tname = Info.getUser(request).get("tname").toString();
			String tel = Info.getUser(request).get("tel").toString();
			String infotype = "求购";
			String sql = "insert into minfo(title,savetime,content,uname,tname,tel,infotype " + ")values('" + title
					+ "','" + savetime + "','" + content + "','" + uname + "','" + tname + "','" + tel + "','"
					+ infotype + "')";
			dao.commOper(sql);
			session.setAttribute("suc", "suc");
			response.sendRedirect("/sechandmall/admin/qgminfotj.jsp");
		}
		// qgminfotj.jsp请求处理结束

		// qgminfoxg.jsp请求处理开始
		if (ac.equals("qgminfoxg")) {
			String id = request.getParameter("id");
			String title = request.getParameter("title") == null ? "" : request.getParameter("title");
			String content = request.getParameter("content") == null ? "" : request.getParameter("content");
			String sql = "update minfo set title='" + title + "',content='" + content + "' where id=" + id;
			dao.commOper(sql);
			session.setAttribute("suc", "suc");
			response.sendRedirect("/sechandmall/admin/qgminfoxg.jsp?id=" + id + "");
		}
		// qgminfoxg.jsp请求处理结束

		// --业务层代码块结束--
		dao.close();
		out.flush();
		out.close();
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
