/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.24
 * Generated at: 2020-05-05 10:05:17 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.bean.AdminBEAN;
import java.util.ArrayList;

public final class DangNhapAdmin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("model.bean.AdminBEAN");
    _jspx_imports_classes.add("java.util.ArrayList");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("<link rel=\"shortcut icon\" type=\"image/png\" href=\"image/favicon.ico\">\r\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("<meta name=\"viewport\"\r\n");
      out.write("\tcontent=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("<meta name=\"description\" content=\"\">\r\n");
      out.write("<meta name=\"author\" content=\"\">\r\n");
      out.write("\r\n");
      out.write("<title>Admin-KhoSach</title>\r\n");
      out.write("\r\n");
      out.write("<!-- Custom fonts for this template-->\r\n");
      out.write("<link href=\"vendor/fontawesome-free/css/all.min.css\" rel=\"stylesheet\"\r\n");
      out.write("\ttype=\"text/css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("<!-- Page level plugin CSS-->\r\n");
      out.write("<link href=\"vendor/datatables/dataTables.bootstrap4.css\"\r\n");
      out.write("\trel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("<!-- Custom styles for this template-->\r\n");
      out.write("<link href=\"css/sb-admin.css\" rel=\"stylesheet\">\r\n");
      out.write("<!-- Custom styles for Login -->\r\n");
      out.write("\t<link rel=\"icon\" type=\"image/png\" href=\"images/icons/favicon.ico\"/>\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/bootstrap/css/bootstrap.min.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"fonts/font-awesome-4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"fonts/Linearicons-Free-v1.0.0/icon-font.min.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/animate/animate.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/css-hamburgers/hamburgers.min.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/animsition/css/animsition.min.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/select2/select2.min.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/daterangepicker/daterangepicker.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/util.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/main.css\">\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body id=\"page-top\">\r\n");
      out.write("<div class=\"limiter\">\r\n");
      out.write("\t\t<div class=\"container-login100\">\r\n");
      out.write("\t\t\t<div class=\"wrap-login100\">\r\n");
      out.write("\t\t\t");
if(session.getAttribute("txtTenDangNhap")==null||	session.getAttribute("txtTenDangNhap")==" "){ 
      out.write("\r\n");
      out.write("\t\t\t\t<form class=\"login100-form validate-form\"  action=\"DangNhapAdminSevlet\" method=\"POST\">\r\n");
      out.write("\t\t\t\t\t<span class=\"login100-form-title p-b-34\">\r\n");
      out.write("\t\t\t\t\t\tĐăng Nhập Admin KhoSach.com\r\n");
      out.write("\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<div class=\"wrap-input100 rs1-wrap-input100 validate-input m-b-20\" data-validate=\"Type user name\">\r\n");
      out.write("\t\t\t\t\t\t<input id=\"first-name\" class=\"input100\" type=\"text\"  name=\"txtTenDangNhap\" placeholder=\"User name\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100\"></span>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"wrap-input100 rs2-wrap-input100 validate-input m-b-20\" data-validate=\"Type password\">\r\n");
      out.write("\t\t\t\t\t\t<input class=\"input100\" type=\"password\" name=\"txtMatKhau\" placeholder=\"Password\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100\"></span>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<div class=\"container-login100-form-btn\">\r\n");
      out.write("\t\t\t\t\t\t<button class=\"login100-form-btn\" name=\"btnDangNhap\" value=\"Đăng Nhập\">\r\n");
      out.write("\t\t\t\t\t\t\tĐăng Nhập\r\n");
      out.write("\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t</div>");
} 
      out.write("\r\n");
      out.write("\t\t\t\t</form>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"login100-more\" style=\"background-image: url('images/bg-01.jpg');\"></div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"dropDownSelect1\"></div>\r\n");
      out.write("\t\r\n");
      out.write("<!--===============================================================================================-->\r\n");
      out.write("\t<script src=\"vendor/jquery/jquery-3.2.1.min.js\"></script>\r\n");
      out.write("<!--===============================================================================================-->\r\n");
      out.write("\t<script src=\"vendor/animsition/js/animsition.min.js\"></script>\r\n");
      out.write("<!--===============================================================================================-->\r\n");
      out.write("\t<script src=\"vendor/bootstrap/js/popper.js\"></script>\r\n");
      out.write("\t<script src=\"vendor/bootstrap/js/bootstrap.min.js\"></script>\r\n");
      out.write("<!--===============================================================================================-->\r\n");
      out.write("\t<script src=\"vendor/select2/select2.min.js\"></script>\r\n");
      out.write("\t<script>\r\n");
      out.write("\t\t$(\".selection-2\").select2({\r\n");
      out.write("\t\t\tminimumResultsForSearch: 20,\r\n");
      out.write("\t\t\tdropdownParent: $('#dropDownSelect1')\r\n");
      out.write("\t\t});\r\n");
      out.write("\t</script>\r\n");
      out.write("<!--===============================================================================================-->\r\n");
      out.write("\t<script src=\"vendor/daterangepicker/moment.min.js\"></script>\r\n");
      out.write("\t<script src=\"vendor/daterangepicker/daterangepicker.js\"></script>\r\n");
      out.write("<!--===============================================================================================-->\r\n");
      out.write("\t<script src=\"vendor/countdowntime/countdowntime.js\"></script>\r\n");
      out.write("<!--===============================================================================================-->\r\n");
      out.write("\t<script src=\"js/main.js\"></script>\r\n");
      out.write("\t\r\n");
      out.write("\t</body>\r\n");
      out.write("\t</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
