package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import control.BaseRequiredLoginController;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <title>HONSHA</title>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Baloo+2&display=swap\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"Project.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("            <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Raleway\">\n");
      out.write("                <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("                    <style>\n");
      out.write("                        * {\n");
      out.write("                            margin: 0px;\n");
      out.write("                            padding: 0px;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        h1 {\n");
      out.write("                            margin-right: 40px;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        .menu {\n");
      out.write("                            width: 100%;\n");
      out.write("                            height: 100%;\n");
      out.write("                            padding-bottom: 20px;\n");
      out.write("                            background-color: #343a40!important;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        .leftmenu {\n");
      out.write("                            width: 25%;\n");
      out.write("                            line-height: 100px;\n");
      out.write("                            float: left;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        .leftmenu h4 {\n");
      out.write("                            padding-left: 70px;\n");
      out.write("                            font-weight: bold;\n");
      out.write("                            color: #fff;\n");
      out.write("                            font-size: 60px;\n");
      out.write("                            font-family: cursive;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        .rightmenu ul li {\n");
      out.write("                            font-family: 'Montserrat', sans-serif;\n");
      out.write("                            display: inline-block;\n");
      out.write("                            list-style: none;\n");
      out.write("                            font-size: 15px;\n");
      out.write("                            color: rgba(255,255,255,.5);\n");
      out.write("                            font-weight: bold;\n");
      out.write("                            line-height: 100px;\n");
      out.write("                            margin-left: 90px;\n");
      out.write("                            text-transform: uppercase;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        .rightmenu ul {\n");
      out.write("                            margin-left: 540px;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        .rightmenu ul li:hover {\n");
      out.write("                            color: #f2f2f2;\n");
      out.write("                            cursor: pointer;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        .rightmenu ul li:active {\n");
      out.write("                            cursor: pointer;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("\n");
      out.write("                        .footer {\n");
      out.write("                            background-color: #303036;\n");
      out.write("                            color: #d3d3d3;\n");
      out.write("                            height: 400px;\n");
      out.write("                            position: relative;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        * {\n");
      out.write("                            box-sizing: border-box\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        /* Slideshow container */\n");
      out.write("                        .slideshow-container {\n");
      out.write("                            max-width: 75%;\n");
      out.write("                            position: relative;\n");
      out.write("                            margin: auto;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        /* Hide the images by default */\n");
      out.write("                        .mySlides {\n");
      out.write("                            display: none;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        /* Next & previous buttons */\n");
      out.write("                        .prev, .next {\n");
      out.write("                            cursor: pointer;\n");
      out.write("                            position: absolute;\n");
      out.write("                            top: 50%;\n");
      out.write("                            width: auto;\n");
      out.write("                            margin-top: -22px;\n");
      out.write("                            padding: 16px;\n");
      out.write("                            color: white;\n");
      out.write("                            font-weight: bold;\n");
      out.write("                            font-size: 18px;\n");
      out.write("                            transition: 0.6s ease;\n");
      out.write("                            border-radius: 0 3px 3px 0;\n");
      out.write("                            user-select: none;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        /* Position the \"next button\" to the right */\n");
      out.write("                        .next {\n");
      out.write("                            right: 0;\n");
      out.write("                            border-radius: 3px 0 0 3px;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        /* On hover, add a black background color with a little bit see-through */\n");
      out.write("                        .prev:hover, .next:hover {\n");
      out.write("                            background-color: rgba(0,0,0,0.8);\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        /* Caption text */\n");
      out.write("                        .text {\n");
      out.write("                            color: #f2f2f2;\n");
      out.write("                            font-size: 15px;\n");
      out.write("                            padding: 8px 12px;\n");
      out.write("                            position: absolute;\n");
      out.write("                            bottom: 8px;\n");
      out.write("                            width: 100%;\n");
      out.write("                            text-align: center;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        /* The dots/bullets/indicators */\n");
      out.write("                        .dot {\n");
      out.write("                            cursor: pointer;\n");
      out.write("                            height: 15px;\n");
      out.write("                            width: 15px;\n");
      out.write("                            margin: 0 2px;\n");
      out.write("                            background-color: #bbb;\n");
      out.write("                            border-radius: 50%;\n");
      out.write("                            display: inline-block;\n");
      out.write("                            transition: background-color 0.6s ease;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        .active, .dot:hover {\n");
      out.write("                            background-color: #717171;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        /* Fading animation */\n");
      out.write("                        .fade {\n");
      out.write("                            -webkit-animation-name: fade;\n");
      out.write("                            -webkit-animation-duration: 1.5s;\n");
      out.write("                            animation-name: fade;\n");
      out.write("                            animation-duration: 1.5s;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        .qoute {\n");
      out.write("                            margin: 20px;\n");
      out.write("                            color: black;\n");
      out.write("                            display: -webkit-box;\n");
      out.write("                            text-align: center;\n");
      out.write("                            align-items: center;\n");
      out.write("                            padding: 50px;\n");
      out.write("                            font-style: italic;\n");
      out.write("                            border-radius: 25px;\n");
      out.write("                            border: 2px solid #343a40!important;\n");
      out.write("                            background: #e9ecef;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        .qoutepic {\n");
      out.write("                            border-radius: 50%;\n");
      out.write("                            width: 100px;\n");
      out.write("                            height: 100px;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        @-webkit-keyframes fade {\n");
      out.write("                            from {\n");
      out.write("                                opacity: .4\n");
      out.write("                            }\n");
      out.write("\n");
      out.write("                            to {\n");
      out.write("                                opacity: 1\n");
      out.write("                            }\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        @keyframes fade {\n");
      out.write("                            from {\n");
      out.write("                                opacity: .4\n");
      out.write("                            }\n");
      out.write("\n");
      out.write("                            to {\n");
      out.write("                                opacity: 1\n");
      out.write("                            }\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        .footer {\n");
      out.write("                            left: 0;\n");
      out.write("                            bottom: 0;\n");
      out.write("                            width: 100%;\n");
      out.write("                            background-color: black;\n");
      out.write("                            height: 200px;\n");
      out.write("                            color: white;\n");
      out.write("                            text-align: center;\n");
      out.write("                            padding-top: 20px;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        img {\n");
      out.write("                            width: 100%;\n");
      out.write("                            height: 50%;\n");
      out.write("                        }\n");
      out.write("                        .dpdwn .dropdown-content{\n");
      out.write("                            display: none;\n");
      out.write("                        }\n");
      out.write("                        .dpdwn:hover .dropdown-content {\n");
      out.write("                            display:block;\n");
      out.write("                        }\n");
      out.write("                        .dropdown-content {\n");
      out.write("                            display: none;\n");
      out.write("                            position: absolute;\n");
      out.write("                            background-color: #f1f1f1;\n");
      out.write("                            min-width: 160px;\n");
      out.write("                            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\n");
      out.write("                            z-index: 1;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        .dropdown-content a {\n");
      out.write("                            color: black;\n");
      out.write("                            padding: 5px 10px;\n");
      out.write("                            text-decoration: none;\n");
      out.write("                            display: block;\n");
      out.write("                            font-size:10px;\n");
      out.write("                            font-family: 'Montserrat', sans-serif;\n");
      out.write("                        }\n");
      out.write("                        a{\n");
      out.write("                            text-decoration: none;\n");
      out.write("\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        .dropdown-content a:hover {background-color: #ddd;}\n");
      out.write("\n");
      out.write("                        /* Show the dropdown menu on hover */\n");
      out.write("                        .dropdown:hover .dropdown-content {display: block;}\n");
      out.write("\n");
      out.write("                        /* Change the background color of the dropdown button when the dropdown content is shown */\n");
      out.write("\n");
      out.write("                    </style>\n");
      out.write("                    </head>\n");
      out.write("                    <body>\n");
      out.write("\n");
      out.write("                        <div class=\"menu\">\n");
      out.write("                            <div class=\"leftmenu\">\n");
      out.write("                                <h4>Honsha</h4>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"rightmenu\">\n");
      out.write("                                <ul>\n");
      out.write("                                    <li>Trang Chủ</li>\n");
      out.write("                                    <li><a href=\"list?page=1\">Danh Mục</a></li>\n");
      out.write("                                    <li>Về Chúng Tôi</li>\n");
      out.write("                                        ");
      if (_jspx_meth_c_choose_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div style=\"background:#fff\">\n");
      out.write("                            <div class=\"slideshow-container\">\n");
      out.write("                                <!-- Full-width images with number and caption text -->\n");
      out.write("                                <div class=\"mySlides fade\">\n");
      out.write("                                    <img src=\"Picture\\pic1.jpg\">\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"mySlides fade\">\n");
      out.write("                                    <img src=\"Picture\\pic2.jpg\">\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"mySlides fade\">\n");
      out.write("                                    <img src=\"Picture\\pic3.jpg\">\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <!-- Next and previous buttons -->\n");
      out.write("                                <a class=\"prev\" onclick=\"plusSlides(-1)\">&#10094;</a>\n");
      out.write("                                <a class=\"next\" onclick=\"plusSlides(1)\">&#10095;</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <br>\n");
      out.write("\n");
      out.write("                            <!-- The dots/circles -->\n");
      out.write("                            <div style=\"text-align:center\">\n");
      out.write("                                <span class=\"dot\" onclick=\"currentSlide(1)\"></span>\n");
      out.write("                                <span class=\"dot\" onclick=\"currentSlide(2)\"></span>\n");
      out.write("                                <span class=\"dot\" onclick=\"currentSlide(3)\"></span>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"qoute\">\n");
      out.write("                                <img class=\"qoutepic\" src=\"Picture\\MarcusTulliusCicero.jpg\" />\n");
      out.write("                                <h1>\n");
      out.write("                                    “A room without books is like a body without a soul.”\n");
      out.write("                                    <br /><emsp>Marcus Tullius Cicero</emsp>\n");
      out.write("                                </h1>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"qoute\">\n");
      out.write("                                <img class=\"qoutepic\" src=\"Picture\\Mark Twain.jpg\" />\n");
      out.write("                                <h1>\n");
      out.write("                                    “Good friends, good books, and a sleepy conscience: this is the ideal life.”\n");
      out.write("                                    <br /><emsp>Mark Twain</emsp>\n");
      out.write("                                </h1>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"qoute\">\n");
      out.write("                                <img class=\"qoutepic\" src=\"Picture\\Jane Austen.jpg\" />\n");
      out.write("                                <h1>\n");
      out.write("                                    “The person, be it gentleman or lady, who has not pleasure in a good novel, must\n");
      out.write("                                    be intolerably stupid.”\n");
      out.write("                                    <br /><emsp>Jane Austen</emsp>\n");
      out.write("                                </h1>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"footer\">\n");
      out.write("                                <p>Posted by: Thien</p>\n");
      out.write("                                <p>\n");
      out.write("                                    Contact information: <a href=\"mailto:hoathiendiep@gmail.com\">\n");
      out.write("                                        hoathiendiep@gmail.com\n");
      out.write("                                    </a>.\n");
      out.write("                                </p>\n");
      out.write("                            </div>\n");
      out.write("                            <script>\n");
      out.write("                                var slideIndex = 1;\n");
      out.write("                                showSlides(slideIndex);\n");
      out.write("\n");
      out.write("                                // Next/previous controls\n");
      out.write("                                function plusSlides(n) {\n");
      out.write("                                    showSlides(slideIndex += n);\n");
      out.write("                                }\n");
      out.write("\n");
      out.write("                                // Thumbnail image controls\n");
      out.write("                                function currentSlide(n) {\n");
      out.write("                                    showSlides(slideIndex = n);\n");
      out.write("                                }\n");
      out.write("\n");
      out.write("                                function showSlides(n) {\n");
      out.write("                                    var i;\n");
      out.write("                                    var slides = document.getElementsByClassName(\"mySlides\");\n");
      out.write("                                    var dots = document.getElementsByClassName(\"dot\");\n");
      out.write("                                    if (n > slides.length) {\n");
      out.write("                                        slideIndex = 1\n");
      out.write("                                    }\n");
      out.write("                                    if (n < 1) {\n");
      out.write("                                        slideIndex = slides.length\n");
      out.write("                                    }\n");
      out.write("                                    for (i = 0; i < slides.length; i++) {\n");
      out.write("                                        slides[i].style.display = \"none\";\n");
      out.write("                                    }\n");
      out.write("                                    for (i = 0; i < dots.length; i++) {\n");
      out.write("                                        dots[i].className = dots[i].className.replace(\" active\", \"\");\n");
      out.write("                                    }\n");
      out.write("                                    slides[slideIndex - 1].style.display = \"block\";\n");
      out.write("                                    dots[slideIndex - 1].className += \" active\";\n");
      out.write("                                }\n");
      out.write("                            </script>\n");
      out.write("                            </html>\n");
      out.write("\n");
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
        out.write("                                            ");
        if (_jspx_meth_c_when_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                                            ");
        if (_jspx_meth_c_otherwise_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                                        ");
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
    _jspx_th_c_when_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.user eq null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_when_0 = _jspx_th_c_when_0.doStartTag();
    if (_jspx_eval_c_when_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                            <li><a href=\"login\">Đăng Nhập</a></li>\n");
        out.write("                                            <li><a href=\"signup\">Đăng Kí</a></li>\n");
        out.write("                                            ");
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
        out.write("                                            <li><i class=\"fa fa-shopping-cart\" style=\"font-size:30px\"></i> Giỏ Hàng</li>\n");
        out.write("                                            <li class=\"dpdwn\"><i class=\"fa fa-home\" style=\"font-size:30px\"></i> Tài Khoản<div class=\"dropdown-content\" ><a>Thông tin tài khoản</a><a>Đơn Hàng</a><a href=\"logout\">Thoát</a></div></li>\n");
        out.write("                                            ");
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
