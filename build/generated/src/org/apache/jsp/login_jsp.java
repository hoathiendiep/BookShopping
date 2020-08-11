package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\" />\n");
      out.write("    <title>Sign Up</title>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Raleway\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("    <title>Login</title>\n");
      out.write("    <style>\n");
      out.write("                html, body, h1, h2, h3, h4, h5 {\n");
      out.write("            font-family: \"Raleway\", sans-serif\n");
      out.write("        }\n");
      out.write("        body {\n");
      out.write("            text-align: center;\n");
      out.write("            background-color: #20bf55;\n");
      out.write("            background-image: linear-gradient(90deg, #20bf55, #01baef);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        form {\n");
      out.write("            border: 1px solid #f1f1f1;\n");
      out.write("            display: inline-block;\n");
      out.write("            width: 390px;\n");
      out.write("            padding: 77px 55px 33px 55px;\n");
      out.write("            margin-top: 30px;\n");
      out.write("            background: #fff;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        input[type=text], input[type=password] {\n");
      out.write("            width: 100%;\n");
      out.write("            padding: 12px 20px;\n");
      out.write("            margin: 8px 0;\n");
      out.write("            display: inline-block;\n");
      out.write("            border: 1px solid #ccc;\n");
      out.write("            box-sizing: border-box;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        button {\n");
      out.write("            background-color: #75A3FF;\n");
      out.write("            color: white;\n");
      out.write("            padding: 14px 20px;\n");
      out.write("            margin: 8px 0;\n");
      out.write("            border: none;\n");
      out.write("            cursor: pointer;\n");
      out.write("            width: 100%;\n");
      out.write("            border-radius: 25px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("            button:hover {\n");
      out.write("                opacity: 0.8;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        .container {\n");
      out.write("            padding: 16px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("\n");
      out.write("        .welcom {\n");
      out.write("            display: block;\n");
      out.write("            font-size: 30px;\n");
      out.write("            color: #333333;\n");
      out.write("            line-height: 1.2;\n");
      out.write("            text-align: center;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body class=\"w3-light-grey\">\n");
      out.write("    <form action=\"login\" method=\"post\">\n");
      out.write("        <span class=\"welcom\">Welcom to Honsha</span>\n");
      out.write("        <div class=\"w3-main container\">\n");
      out.write("            <label for=\"uname\"><b>Username</b></label>\n");
      out.write("            <input name=\"username\" type=\"text\" class=\"form-control\" placeholder=\"Enter Username\" required>\n");
      out.write("\n");
      out.write("            <label for=\"psw\"><b>Password</b></label>\n");
      out.write("            <input type=\"password\" name=\"password\" class=\"form-control\" placeholder=\"Enter Password\" required>\n");
      out.write("\n");
      out.write("            <button type=\"submit\">Login</button>\n");
      out.write("            <label>\n");
      out.write("                Haven't got an Account? <a href=\"signup\">Sign Up</a>\n");
      out.write("            </label>\n");
      out.write("        </div>\n");
      out.write("    </form>\n");
      out.write("    <script>\n");
      out.write("        ");
if (request.getParameter("correct")!=null&&request.getParameter("correct").equals("no")) {
      out.write("\n");
      out.write("        alert(\"Username or Password is incorrect!\");   \n");
      out.write("            ");
}
      out.write("\n");
      out.write("    </script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
