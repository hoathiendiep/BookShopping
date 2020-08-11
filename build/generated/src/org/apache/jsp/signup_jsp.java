package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_choose;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_otherwise;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_when_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_choose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_otherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_when_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_choose.release();
    _jspx_tagPool_c_otherwise.release();
    _jspx_tagPool_c_when_test.release();
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\" />\n");
      out.write("    <title>Sign Up</title>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Raleway\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("    <style>\n");
      out.write("        html, body, h1, h2, h3, h4, h5 {\n");
      out.write("            font-family: \"Raleway\", sans-serif\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        body {\n");
      out.write("            background-color: #20bf55;\n");
      out.write("            background-image: linear-gradient(90deg, #20bf55, #01baef);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        form {\n");
      out.write("            margin-left: 300px;\n");
      out.write("            margin-top: 43px;\n");
      out.write("            margin-right: 300px;\n");
      out.write("            border-radius:25px;\n");
      out.write("        }\n");
      out.write("        #btnstyle{\n");
      out.write("                background-color: #75A3FF;\n");
      out.write("    color: white;\n");
      out.write("    padding: 14px 20px;\n");
      out.write("    margin: 8px 0;\n");
      out.write("    border: none;\n");
      out.write("    cursor: pointer;\n");
      out.write("    border-radius: 25px;\n");
      out.write("    margin-left:90px;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body class=\"w3-light-grey\">\n");
      out.write("    <form action=\"signup\" method=\"post\">\n");
      out.write("        <!-- !PAGE CONTENT! -->\n");
      out.write("        <div class=\"w3-main\">\n");
      out.write("            <div class=\"w3-container w3-white\">\n");
      out.write("                <h2>Register Account</h2>\n");
      out.write("                <hr>\n");
      out.write("                <!--profile-->\n");
      out.write("                <div class=\"w3-row-padding\" style=\"margin:0 -16px;\">\n");
      out.write("                    <div class=\"w3-half w3-margin-bottom\">\n");
      out.write("                        <label> User Name</label>\n");
      out.write("                        <input class=\"w3-input w3-border\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.username}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"  name=\"username\" type=\"text\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"w3-half w3-margin-bottom\">\n");
      out.write("                        <label> Password</label>\n");
      out.write("                        <input class=\"w3-input w3-border\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.password}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"password\" type=\"password\"\n");
      out.write("                               onmousedown=\"this.type = 'text'\" onmouseup=\"this.type = 'password'\"\n");
      out.write("                               onmousemove=\"this.type = 'password'\" required>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"w3-container w3-white\">\n");
      out.write("                <h2>Information</h2>\n");
      out.write("                <hr>\n");
      out.write("                <div class=\"w3-row-padding\" style=\"margin:0 -16px;\">\n");
      out.write("                    <div class=\"w3-half w3-margin-bottom\">\n");
      out.write("                        <label> First Name</label>\n");
      out.write("                        <input class=\"w3-input w3-border\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.firstname}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"  name=\"firstname\" type=\"text\" required> \n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"w3-half w3-margin-bottom\">\n");
      out.write("                        <label> Last Name</label>\n");
      out.write("                        <input class=\"w3-input w3-border\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.lastname}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"lastname\" type=\"text\" required>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"w3-row-padding\" style=\"margin:0 -16px;\">\n");
      out.write("                    <div class=\"w3-quarter w3-margin-bottom\">\n");
      out.write("                        <label>Gender</label><br>\n");
      out.write("                            <input class=\"w3-radio\" name=\"gender\" value=\"male\" type=\"radio\" checked> Male\n");
      out.write("                            ");
      if (_jspx_meth_c_choose_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"w3-quarter w3-margin-bottom\">\n");
      out.write("                        <label> Phone</label>\n");
      out.write("                        <input class=\"w3-input w3-border\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.phone}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"phone\" type=\"text\" pattern=\"^\\d{10}$\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"w3-quarter w3-margin-bottom\">\n");
      out.write("                        <label> Birth Date</label>\n");
      out.write("                        <input class=\"w3-input w3-border\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.dob}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"dob\" type=\"date\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"w3-quarter w3-margin-bottom\">\n");
      out.write("                        <label> Address</label>\n");
      out.write("                        <input class=\"w3-input w3-border\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.address}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"  name=\"address\" type=\"text\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"w3-half w3-margin-bottom\">\n");
      out.write("                        <label> Email</label>\n");
      out.write("                        <input class=\"w3-input w3-border\" type=\"text\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"email\" pattern=\"/^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,4}$/\" required>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"w3-container w3-white\">\n");
      out.write("                <hr><span style=\"margin-left: 35%\"></span>\n");
      out.write("                <input class=\"w3-button\" type=\"submit\" id=\"btnstyle\" value=\"Register Account\" onclick=\"\" /><br><br>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </form>\n");
      out.write("</body>\n");
      out.write("    <script>\n");
      out.write("        ");
if (request.getParameter("error")!=null) {
      out.write("\n");
      out.write("              alert(");
      out.print(request.getParameter("error"));
      out.write(");  \n");
      out.write("            ");
}
        
      out.write("\n");
      out.write("    </script>\n");
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

  private boolean _jspx_meth_c_choose_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    _jspx_th_c_choose_0.setPageContext(_jspx_page_context);
    _jspx_th_c_choose_0.setParent(null);
    int _jspx_eval_c_choose_0 = _jspx_th_c_choose_0.doStartTag();
    if (_jspx_eval_c_choose_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                ");
        if (_jspx_meth_c_when_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                                ");
        if (_jspx_meth_c_otherwise_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                            ");
        int evalDoAfterBody = _jspx_th_c_choose_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_choose_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
      return true;
    }
    _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
    return false;
  }

  private boolean _jspx_meth_c_when_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_0 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_0.setPageContext(_jspx_page_context);
    _jspx_th_c_when_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    _jspx_th_c_when_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.gender eq 'True'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_when_0 = _jspx_th_c_when_0.doStartTag();
    if (_jspx_eval_c_when_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                        <input class=\"w3-radio\" name=\"gender\" value=\"female\" type=\"radio\" checked> Female\n");
        out.write("                                ");
        int evalDoAfterBody = _jspx_th_c_when_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
    return false;
  }

  private boolean _jspx_meth_c_otherwise_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:otherwise
    org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_otherwise_0 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _jspx_tagPool_c_otherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
    _jspx_th_c_otherwise_0.setPageContext(_jspx_page_context);
    _jspx_th_c_otherwise_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    int _jspx_eval_c_otherwise_0 = _jspx_th_c_otherwise_0.doStartTag();
    if (_jspx_eval_c_otherwise_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                        <input class=\"w3-radio\" name=\"gender\" value=\"female\" type=\"radio\"> Female\n");
        out.write("                                ");
        int evalDoAfterBody = _jspx_th_c_otherwise_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_otherwise_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
      return true;
    }
    _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
    return false;
  }
}
