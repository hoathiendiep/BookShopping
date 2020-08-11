package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dao.*;
import java.util.ArrayList;
import model.Product;

public final class list_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_choose;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items_end_begin;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_otherwise;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_end_begin;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_when_test;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_fmt_formatNumber_value_minFractionDigits_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_choose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_forEach_var_items_end_begin = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_otherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_forEach_var_end_begin = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_when_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_fmt_formatNumber_value_minFractionDigits_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_choose.release();
    _jspx_tagPool_c_if_test.release();
    _jspx_tagPool_c_forEach_var_items_end_begin.release();
    _jspx_tagPool_c_otherwise.release();
    _jspx_tagPool_c_forEach_var_end_begin.release();
    _jspx_tagPool_c_when_test.release();
    _jspx_tagPool_fmt_formatNumber_value_minFractionDigits_nobody.release();
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html lang=\"en\" xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <title>HONSHA</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Project.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("            <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Raleway\">\n");
      out.write("                <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("                    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("                        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("                            <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("                                <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\" integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\n");
      out.write("                                    <link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("                                        <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Raleway\">\n");
      out.write("                                            <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("                                                <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("                                                <style>\n");
      out.write("                                                    * {\n");
      out.write("                                                        margin: 0px;\n");
      out.write("                                                        padding: 0px;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    body {\n");
      out.write("                                                        background: #F0F0F0;\n");
      out.write("                                                        margin: 0;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    h1 {\n");
      out.write("                                                        margin-right: 40px;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .menu {\n");
      out.write("                                                        width: 100%;\n");
      out.write("                                                        height: 100%;\n");
      out.write("                                                        padding-bottom: 20px;\n");
      out.write("                                                        background-color: #343a40 !important;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                   \n");
      out.write("                                                        .leftmenu {\n");
      out.write("                                                            width: 25%;\n");
      out.write("                                                            line-height: 100px;\n");
      out.write("                                                            float: left;\n");
      out.write("                                                        }\n");
      out.write("\n");
      out.write("                                                        .leftmenu h4 {\n");
      out.write("                                                            padding-left: 70px;\n");
      out.write("                                                            font-weight: bold;\n");
      out.write("                                                            color: #fff;\n");
      out.write("                                                            font-size: 60px;\n");
      out.write("                                                            font-family: cursive;\n");
      out.write("                                                        }\n");
      out.write("\n");
      out.write("                                                        .rightmenu ul li {\n");
      out.write("                                                            font-family: 'Montserrat', sans-serif;\n");
      out.write("                                                            display: inline-block;\n");
      out.write("                                                            list-style: none;\n");
      out.write("                                                            font-size: 15px;\n");
      out.write("                                                            color: rgba(255,255,255,.5);\n");
      out.write("                                                            font-weight: bold;\n");
      out.write("                                                            line-height: 100px;\n");
      out.write("                                                            margin-left: 90px;\n");
      out.write("                                                            text-transform: uppercase;\n");
      out.write("                                                        }\n");
      out.write("\n");
      out.write("                                                        .menu a{\n");
      out.write("                                                            color: rgba(255,255,255,.5);\n");
      out.write("                                                        }\n");
      out.write("                                                        .menu a:hover{\n");
      out.write("                                                            color: #f2f2f2;\n");
      out.write("                                                            text-decoration: none;\n");
      out.write("                                                        }\n");
      out.write("                                                        .menu .dropdown-content a {\n");
      out.write("                                                            color: black;\n");
      out.write("                                                            padding: 5px 10px;\n");
      out.write("                                                            text-decoration: none;\n");
      out.write("                                                            display: block;\n");
      out.write("                                                            font-size: 10px;\n");
      out.write("                                                            font-family: 'Montserrat', sans-serif;\n");
      out.write("                                                            border-radius: 25px;\n");
      out.write("                                                        }\n");
      out.write("                                                        .rightmenu ul {\n");
      out.write("                                                            margin-left: 423px;\n");
      out.write("                                                        }\n");
      out.write("\n");
      out.write("                                                        .rightmenu ul li:hover {\n");
      out.write("                                                            color: #f2f2f2;\n");
      out.write("                                                            cursor: pointer;\n");
      out.write("                                                        }\n");
      out.write("\n");
      out.write("                                                        .rightmenu ul li:active {\n");
      out.write("                                                            cursor: pointer;\n");
      out.write("                                                        }\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                    * {\n");
      out.write("                                                        box-sizing: border-box\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .dpdwn .dropdown-content {\n");
      out.write("                                                        display: none;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .dpdwn:hover .dropdown-content {\n");
      out.write("                                                        display: block;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .dropdown-content {\n");
      out.write("                                                        display: none;\n");
      out.write("                                                        position: absolute;\n");
      out.write("                                                        background-color: #f1f1f1;\n");
      out.write("                                                        min-width: 160px;\n");
      out.write("                                                        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\n");
      out.write("                                                        z-index: 1;\n");
      out.write("                                                        border-radius: 25px;\n");
      out.write("                                                    }\n");
      out.write("                                                    /* Show the dropdown menu on hover */\n");
      out.write("                                                    .dropdown:hover .dropdown-content {\n");
      out.write("                                                        display: block;\n");
      out.write("                                                        border-radius: 25px;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    /* Change the background color of the dropdown button when the dropdown content is shown */\n");
      out.write("                                                    .dropdown:hover .dropbtn {\n");
      out.write("                                                        background-color: #3e8e41;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                    /*Resize the wrap to see the search bar change!*/\n");
      out.write("                                                    .wrap {\n");
      out.write("                                                        width: 47%;\n");
      out.write("                                                        position: absolute;\n");
      out.write("                                                        height: 60%;\n");
      out.write("                                                        top: 50%;\n");
      out.write("                                                        left: 50%;\n");
      out.write("                                                        transform: translate(-50%, -50%);\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .sidebar {\n");
      out.write("                                                        margin: 10px;\n");
      out.write("                                                        padding: 0;\n");
      out.write("                                                        width: 350px;\n");
      out.write("                                                        background-color: #fff;\n");
      out.write("                                                        position: absolute;\n");
      out.write("                                                        height: 100%;\n");
      out.write("                                                        float: left;\n");
      out.write("                                                        overflow: hidden;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .sidebar a {\n");
      out.write("                                                        display: block;\n");
      out.write("                                                        color: black;\n");
      out.write("                                                        padding: 16px;\n");
      out.write("                                                        text-decoration: none;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .sidebar a.active {\n");
      out.write("                                                        color: black;\n");
      out.write("                                                        font-weight: bolder;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .sidebar a:hover:not(.active) {\n");
      out.write("                                                        background-color: #f1f1f1;\n");
      out.write("                                                        color: black;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    div.content {\n");
      out.write("                                                        margin-left: 200px;\n");
      out.write("                                                        padding: 1px 16px;\n");
      out.write("                                                        height: 1000px;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    @media screen and (max-width: 700px) {\n");
      out.write("                                                        .sidebar {\n");
      out.write("                                                            width: 100%;\n");
      out.write("                                                            height: auto;\n");
      out.write("                                                            position: relative;\n");
      out.write("                                                            margin: 10px;\n");
      out.write("                                                            overflow: auto;\n");
      out.write("                                                        }\n");
      out.write("\n");
      out.write("                                                        .sidebar a, .dropdown-btn {\n");
      out.write("                                                            float: left;\n");
      out.write("                                                        }\n");
      out.write("\n");
      out.write("                                                        div.content {\n");
      out.write("                                                            margin-left: 0;\n");
      out.write("                                                        }\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    @media screen and (max-width: 400px) {\n");
      out.write("                                                        .sidebar a, .dropdown-btn {\n");
      out.write("                                                            text-align: center;\n");
      out.write("                                                            float: none;\n");
      out.write("                                                        }\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .centered {\n");
      out.write("                                                        width: 75%;\n");
      out.write("                                                        float: right;\n");
      out.write("                                                        background: #fff;\n");
      out.write("                                                        margin: 10px;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                    a {\n");
      out.write("                                                        text-decoration: none;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                    .search {\n");
      out.write("                                                        width: 30%;\n");
      out.write("                                                        position: relative;\n");
      out.write("                                                        display: flex;\n");
      out.write("                                                        margin-top: 0px;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .option-box {\n");
      out.write("                                                        margin-left: 106px;\n");
      out.write("                                                        margin-right: 50px;\n");
      out.write("                                                        padding: 10px;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .list {\n");
      out.write("                                                        width: 75%;\n");
      out.write("                                                        float: right;\n");
      out.write("                                                        background: #fff;\n");
      out.write("                                                        margin: 10px;\n");
      out.write("                                                        margin-top: 1px;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .card {\n");
      out.write("                                                        float: left;\n");
      out.write("                                                        width: 50%;\n");
      out.write("                                                        padding: 10px;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    /* Clear floats after the columns */\n");
      out.write("                                                    .row:after {\n");
      out.write("                                                        content: \"\";\n");
      out.write("                                                        display: table;\n");
      out.write("                                                        clear: both;\n");
      out.write("                                                    }\n");
      out.write("                                                    /* Style the buttons */\n");
      out.write("                                                    .btn {\n");
      out.write("                                                        border: none;\n");
      out.write("                                                        outline: none;\n");
      out.write("                                                        padding: 12px 16px;\n");
      out.write("                                                        background-color: #f1f1f1;\n");
      out.write("                                                        cursor: pointer;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .btn:hover {\n");
      out.write("                                                        background-color: #ddd;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .btn.active {\n");
      out.write("                                                        background-color: #666;\n");
      out.write("                                                        color: white;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .card {\n");
      out.write("                                                        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);\n");
      out.write("                                                        max-width: 300px;\n");
      out.write("                                                        margin: auto;\n");
      out.write("                                                        text-align: center;\n");
      out.write("                                                        /* padding-left: 16px; */\n");
      out.write("                                                        margin-left: 63px;\n");
      out.write("                                                        margin-top: 15px;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .price {\n");
      out.write("                                                        color: grey;\n");
      out.write("                                                        font-size: 22px;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .card button {\n");
      out.write("                                                        border: none;\n");
      out.write("                                                        outline: 0;\n");
      out.write("                                                        padding: 12px;\n");
      out.write("                                                        color: white;\n");
      out.write("                                                        background-color: #000;\n");
      out.write("                                                        text-align: center;\n");
      out.write("                                                        cursor: pointer;\n");
      out.write("                                                        width: 100%;\n");
      out.write("                                                        font-size: 18px;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .card button:hover {\n");
      out.write("                                                        opacity: 0.7;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .row {\n");
      out.write("                                                        margin-bottom: 10px;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .card p {\n");
      out.write("                                                        height: 89.6px;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .price p {\n");
      out.write("                                                        height: 45px;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .footer {\n");
      out.write("                                                        background-color: #303036;\n");
      out.write("                                                        color: #d3d3d3;\n");
      out.write("                                                        height: 400px;\n");
      out.write("                                                        position: relative;\n");
      out.write("                                                        left: 0;\n");
      out.write("                                                        bottom: 0;\n");
      out.write("                                                        width: 100%;\n");
      out.write("                                                        background-color: black;\n");
      out.write("                                                        height: 200px;\n");
      out.write("                                                        color: white;\n");
      out.write("                                                        text-align: center;\n");
      out.write("                                                        padding-top: 20px;\n");
      out.write("                                                        clear: both;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .dropdown-container {\n");
      out.write("                                                        display: none;\n");
      out.write("                                                        padding-left: 8px;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                    .dropdown-btn {\n");
      out.write("                                                        background: none !important;\n");
      out.write("                                                        border: none;\n");
      out.write("                                                        padding: 0 !important;\n");
      out.write("                                                        cursor: pointer;\n");
      out.write("                                                        margin: 16px;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .pagination {\n");
      out.write("                                                        width: 75%;\n");
      out.write("                                                        float: right;\n");
      out.write("                                                        margin: 10px;\n");
      out.write("                                                        margin-left: 650px;\n");
      out.write("                                                    }\n");
      out.write("                                                    .menu a{\n");
      out.write("                                                        color: rgba(255,255,255,.5);\n");
      out.write("                                                    }\n");
      out.write("                                                    .menu a:hover{\n");
      out.write("                                                        color: #f2f2f2;\n");
      out.write("                                                        text-decoration: none;\n");
      out.write("                                                    }\n");
      out.write("                                                    .menu .dropdown-content a {\n");
      out.write("                                                        color: black;\n");
      out.write("                                                        padding: 5px 10px;\n");
      out.write("                                                        text-decoration: none;\n");
      out.write("                                                        display: block;\n");
      out.write("                                                        font-size: 10px;\n");
      out.write("                                                        font-family: 'Montserrat', sans-serif;\n");
      out.write("                                                        border-radius: 25px;\n");
      out.write("                                                    }\n");
      out.write("\n");
      out.write("                                                    .menu .dropdown-content a:hover {\n");
      out.write("                                                        background-color: #ddd;\n");
      out.write("                                                    }\n");
      out.write("                                                    .namebook{\n");
      out.write("                                                        font-family: 'Baloo 2', cursive;\n");
      out.write("                                                        font-weight: bolder;\n");
      out.write("                                                        font-size: 25px;\n");
      out.write("                                                        padding-top: 14px;\n");
      out.write("                                                    }\n");
      out.write("                                                </style>\n");
      out.write("                                                </head>\n");
      out.write("                                                <body>\n");
      out.write("\n");
      out.write("                                                    <div class=\"menu\">\n");
      out.write("                                                        <div class=\"leftmenu\">\n");
      out.write("                                                            <h4>Honsha</h4>\n");
      out.write("                                                        </div>\n");
      out.write("                                                        <div class=\"rightmenu\">\n");
      out.write("                                                            <ul>\n");
      out.write("                                                                <li><a href=\"home\">Trang Chủ</a></li>\n");
      out.write("                                                                <li class=\"dpdwn\">Danh Mục<div class=\"dropdown-content\" >\n");
      out.write("                                                                         <a href=\"list?page=1\">Tất Cả</a>\n");
      out.write("                                                                        ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("   \n");
      out.write("                                                                    </div></li>\n");
      out.write("                                                                <li>Về Chúng Tôi</li>\n");
      out.write("                                                                    ");
      if (_jspx_meth_c_choose_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                                            </ul>\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </div>\n");
      out.write("\n");
      out.write("                                                    <div class=\"sidebar\">\n");
      out.write("                                                        <div class=\"w3-bar\" style=\"width:350px;margin:10px;z-index:1\">\n");
      out.write("                                                            <br>\n");
      out.write("                                                                <div class=\"w3-container w3-row\">\n");
      out.write("                                                                    <h3>Tìm Kiếm: ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.sizelist}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" kết quả</h3>\n");
      out.write("                                                                </div>\n");
      out.write("                                                                <hr>\n");
      out.write("                                                                    <div class=\"w3-container\">\n");
      out.write("                                                                        <h5>Ưu tiên</h5>\n");
      out.write("                                                                    </div>\n");
      out.write("                                                                     <form action=\"list?page=1\" method=\"POST\">\n");
      out.write("                                                                    <div class=\"w3-bar-block\">\n");
      out.write("                                                                        <a href=\"list?page=1\" class=\"w3-bar-item w3-button w3-padding\">Chọn Lọc</a>\n");
      out.write("                                                                        <a href=\"list?desc=1&page=1\" class=\"w3-bar-item w3-button w3-padding\">Giá Thấp</a>\n");
      out.write("                                                                        <a href=\"list?asc=1&page=1\" class=\"w3-bar-item w3-button w3-padding\">Giá Cao</a>\n");
      out.write("                                                                    </div>\n");
      out.write("                                                                    </div>\n");
      out.write("                                                                    </div>\n");
      out.write("                                                                    <div class=\"centered\">\n");
      out.write("                                                                        <div class=\"option-box\">\n");
      out.write("                                                                           \n");
      out.write("                                                                                <!--go to search controller-->\n");
      out.write("                                                                                <div class=\"w3-row-padding\" style=\"margin:0 -16px;\">\n");
      out.write("                                                                                    <div class=\"w3-half w3-margin-bottom\">\n");
      out.write("                                                                                        <label><i class=\"fa fa-tag\"></i> Thể Loại</label>\n");
      out.write("                                                                                        <select class=\"w3-select w3-border\"  name=\"brand\">\n");
      out.write("                                                                                            <option value=\"\">Tất Cả</option>\n");
      out.write("                                                                                            ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                                                                            <!--load tu database ra cac category-->\n");
      out.write("                                                                                        </select>\n");
      out.write("                                                                                    </div>\n");
      out.write("                                                                                    <div class=\"w3-half\">\n");
      out.write("                                                                                        <label><i class=\"fa fa-male\"></i> Tác Giả</label>\n");
      out.write("                                                                                        <select class=\"w3-select w3-border\" name=\"author\">\n");
      out.write("                                                                                            <option value=\"\">Tất Cả</option>\n");
      out.write("                                                                                            ");
      if (_jspx_meth_c_forEach_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                                                                            <!--load tu database ra cac category-->\n");
      out.write("                                                                                        </select>\n");
      out.write("                                                                                    </div>\n");
      out.write("                                                                                </div>\n");
      out.write("                                                                                <div class=\"w3-row-padding\" style=\"margin:8px -16px;\">\n");
      out.write("                                                                                    <div class=\"w3-half\">\n");
      out.write("                                                                                       <label><i class=\"fa fa-group\"></i> Nhà Xuất Bản</label>\n");
      out.write("                                                                                        <select class=\"w3-select w3-border\" name=\"publish\">\n");
      out.write("                                                                                            <option value=\"\">Tất Cả</option>\n");
      out.write("                                                                                            ");
      if (_jspx_meth_c_forEach_3(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                                                                            <!--load tu database ra cac category-->\n");
      out.write("                                                                                        </select>\n");
      out.write("                                                                                    </div>\n");
      out.write("\n");
      out.write("                                                                                    <div class=\"w3-half\">\n");
      out.write("                                                                                        <label><i class=\"fa fa-search\"></i> Tìm Kiếm</label>\n");
      out.write("                                                                                        <input class=\"w3-input w3-border\" name=\"book\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.book}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" type=\"text\" placeholder=\"Ví dụ: Rừng Na Uy\">\n");
      out.write("                                                                                    </div>\n");
      out.write("\n");
      out.write("                                                                                </div>\n");
      out.write("                                                                                <input class=\"w3-button w3-dark-grey\" type=\"submit\" value=\"Search\"/>\n");
      out.write("                                                                            </form>\n");
      out.write("                                                                        </div>\n");
      out.write("                                                                    </div>\n");
      out.write("                                                                    <div class=\"list\">\n");
      out.write("                                                                        <div class=\"row\">\n");
      out.write("                                                                            ");
      if (_jspx_meth_c_forEach_4(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                                                        </div>\n");
      out.write("\n");
      out.write("                                                                        <div class=\"row\">\n");
      out.write("                                                                            ");
      if (_jspx_meth_c_forEach_5(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                                                        </div>\n");
      out.write("                                                                    </div>\n");
      out.write("                                                                    <div class=\"pagination\">\n");
      out.write("                                                                        <nav aria-label=\"Page navigation example\">\n");
      out.write("                                                                            <ul class=\"pagination justify-content-center\">\n");
      out.write("                                                                                <li class=\"page-item disabled\">\n");
      out.write("                                                                                    <a class=\"page-link\" href=\"#\" tabindex=\"-1\">Previous</a>\n");
      out.write("                                                                                </li>\n");
      out.write("                                                                                ");
      if (_jspx_meth_c_forEach_6(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                                                                <li class=\"page-item\">\n");
      out.write("                                                                                    <a class=\"page-link\" href=\"#\">Next</a>\n");
      out.write("                                                                                </li>\n");
      out.write("                                                                            </ul>\n");
      out.write("                                                                        </nav>\n");
      out.write("                                                                    </div>\n");
      out.write("                                                                    <div class=\"footer\">\n");
      out.write("                                                                        <p>Posted by: Thien</p>\n");
      out.write("                                                                        <p>\n");
      out.write("                                                                            Contact information: <a href=\"mailto:hoathiendiep@gmail.com\">\n");
      out.write("                                                                                hoathiendiep@gmail.com\n");
      out.write("                                                                            </a>\n");
      out.write("                                                                        </p>\n");
      out.write("                                                                    </div>\n");
      out.write("                                                                    <script>\n");
      out.write("                                                                        var dropdown = document.getElementsByClassName(\"dropdown-btn\");\n");
      out.write("                                                                        var i;\n");
      out.write("\n");
      out.write("                                                                        for (i = 0; i < dropdown.length; i++) {\n");
      out.write("                                                                            dropdown[i].addEventListener(\"click\", function () {\n");
      out.write("                                                                                this.classList.toggle(\"active\");\n");
      out.write("                                                                                var dropdownContent = this.nextElementSibling;\n");
      out.write("                                                                                if (dropdownContent.style.display === \"block\") {\n");
      out.write("                                                                                    dropdownContent.style.display = \"none\";\n");
      out.write("                                                                                } else {\n");
      out.write("                                                                                    dropdownContent.style.display = \"block\";\n");
      out.write("                                                                                }\n");
      out.write("                                                                            });\n");
      out.write("                                                                        }\n");
      out.write("                                                                    </script>\n");
      out.write("                                                                    </body>\n");
      out.write("                                                                    </html>\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.cateList}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("category");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                                                            <a href=\"list?cateId=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${category.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("&page=1\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${category.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a>\n");
          out.write("                                                                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
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
        out.write("                                                                        ");
        if (_jspx_meth_c_when_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                                                                        ");
        if (_jspx_meth_c_otherwise_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                                                                    ");
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
        out.write("                                                                        <li><a href=\"login\">Đăng Nhập</a></li>\n");
        out.write("                                                                        <li><a href=\"signup\">Đăng Kí</a></li>\n");
        out.write("                                                                        ");
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
        out.write("                                                                        <li><i class=\"fa fa-shopping-cart\" style=\"font-size:30px\"></i> <a href=\"cart\">Giỏ Hàng</a></li>\n");
        out.write("                                                                        <li class=\"dpdwn\"><i class=\"fa fa-home\" style=\"font-size:30px\"></i> Tài Khoản<div class=\"dropdown-content\" ><a>Thông tin tài khoản</a><a>Đơn Hàng</a><a href=\"logout\">Thoát</a></div></li>\n");
        out.write("                                                                        ");
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

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.brandList}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("brandList");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                                                                                <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${brandList.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write(' ');
          if (_jspx_meth_c_if_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_1, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
            return true;
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${brandList.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("                                                                                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_1);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${brandList.id == requestScope.brand}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("selected=\"selected\"");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_forEach_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_2 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_2.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_2.setParent(null);
    _jspx_th_c_forEach_2.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.authorList}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_2.setVar("authorList");
    int[] _jspx_push_body_count_c_forEach_2 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_2 = _jspx_th_c_forEach_2.doStartTag();
      if (_jspx_eval_c_forEach_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                                                                                <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${authorList.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write(' ');
          if (_jspx_meth_c_if_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_2, _jspx_page_context, _jspx_push_body_count_c_forEach_2))
            return true;
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${authorList.firstname}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(' ');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${authorList.lastname}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("                                                                                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_2.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_2[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_2.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_2.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_2);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_2, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_2)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_2);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${authorList.id == requestScope.author}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("selected=\"selected\"");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }

  private boolean _jspx_meth_c_forEach_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_3 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_3.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_3.setParent(null);
    _jspx_th_c_forEach_3.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.publishList}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_3.setVar("publishList");
    int[] _jspx_push_body_count_c_forEach_3 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_3 = _jspx_th_c_forEach_3.doStartTag();
      if (_jspx_eval_c_forEach_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                                                                                <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${publishList.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write(' ');
          if (_jspx_meth_c_if_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_3, _jspx_page_context, _jspx_push_body_count_c_forEach_3))
            return true;
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${publishList.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("                                                                                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_3.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_3[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_3.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_3.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_3);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_3, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_3)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_2 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_2.setPageContext(_jspx_page_context);
    _jspx_th_c_if_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_3);
    _jspx_th_c_if_2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${publishList.id == requestScope.publish}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_2 = _jspx_th_c_if_2.doStartTag();
    if (_jspx_eval_c_if_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("selected=\"selected\"");
        int evalDoAfterBody = _jspx_th_c_if_2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
    return false;
  }

  private boolean _jspx_meth_c_forEach_4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_4 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items_end_begin.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_4.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_4.setParent(null);
    _jspx_th_c_forEach_4.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.productsList}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_4.setVar("p");
    _jspx_th_c_forEach_4.setBegin(0);
    _jspx_th_c_forEach_4.setEnd(2);
    int[] _jspx_push_body_count_c_forEach_4 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_4 = _jspx_th_c_forEach_4.doStartTag();
      if (_jspx_eval_c_forEach_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                                                                <div class=\"card\">\n");
          out.write("                                                                                    <img src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.pic}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"Denim Jeans\" style=\"width:100%\">\n");
          out.write("                                                                                        <p class=\"namebook\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</p>\n");
          out.write("                                                                                        <p class=\"price\">");
          if (_jspx_meth_fmt_formatNumber_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_4, _jspx_page_context, _jspx_push_body_count_c_forEach_4))
            return true;
          out.write(" VND</p>\n");
          out.write("                                                                                        <p><button><a href=\"detail?id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">Xem Thêm</a></button></p>\n");
          out.write("\n");
          out.write("                                                                                </div>\n");
          out.write("                                                                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_4.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_4[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_4.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_4.doFinally();
      _jspx_tagPool_c_forEach_var_items_end_begin.reuse(_jspx_th_c_forEach_4);
    }
    return false;
  }

  private boolean _jspx_meth_fmt_formatNumber_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_4, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_4)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatNumber
    org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag _jspx_th_fmt_formatNumber_0 = (org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag) _jspx_tagPool_fmt_formatNumber_value_minFractionDigits_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag.class);
    _jspx_th_fmt_formatNumber_0.setPageContext(_jspx_page_context);
    _jspx_th_fmt_formatNumber_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_4);
    _jspx_th_fmt_formatNumber_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.price}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_fmt_formatNumber_0.setMinFractionDigits(3);
    int _jspx_eval_fmt_formatNumber_0 = _jspx_th_fmt_formatNumber_0.doStartTag();
    if (_jspx_th_fmt_formatNumber_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_formatNumber_value_minFractionDigits_nobody.reuse(_jspx_th_fmt_formatNumber_0);
      return true;
    }
    _jspx_tagPool_fmt_formatNumber_value_minFractionDigits_nobody.reuse(_jspx_th_fmt_formatNumber_0);
    return false;
  }

  private boolean _jspx_meth_c_forEach_5(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_5 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items_end_begin.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_5.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_5.setParent(null);
    _jspx_th_c_forEach_5.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.productsList}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_5.setVar("p");
    _jspx_th_c_forEach_5.setBegin(3);
    _jspx_th_c_forEach_5.setEnd(5);
    int[] _jspx_push_body_count_c_forEach_5 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_5 = _jspx_th_c_forEach_5.doStartTag();
      if (_jspx_eval_c_forEach_5 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                                                                <div class=\"card\">\n");
          out.write("                                                                                    <img src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.pic}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"Denim Jeans\" style=\"width:100%\">\n");
          out.write("                                                                                        <p class=\"namebook\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</p>\n");
          out.write("                                                                                        <p class=\"price\">");
          if (_jspx_meth_fmt_formatNumber_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_5, _jspx_page_context, _jspx_push_body_count_c_forEach_5))
            return true;
          out.write(" VND</p>\n");
          out.write("                                                                                            <p><button><a href=\"detail?id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">Xem Thêm</a></button></p>\n");
          out.write("                                                                                </div>\n");
          out.write("                                                                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_5.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_5[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_5.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_5.doFinally();
      _jspx_tagPool_c_forEach_var_items_end_begin.reuse(_jspx_th_c_forEach_5);
    }
    return false;
  }

  private boolean _jspx_meth_fmt_formatNumber_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_5, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_5)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatNumber
    org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag _jspx_th_fmt_formatNumber_1 = (org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag) _jspx_tagPool_fmt_formatNumber_value_minFractionDigits_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag.class);
    _jspx_th_fmt_formatNumber_1.setPageContext(_jspx_page_context);
    _jspx_th_fmt_formatNumber_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_5);
    _jspx_th_fmt_formatNumber_1.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.price}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_fmt_formatNumber_1.setMinFractionDigits(3);
    int _jspx_eval_fmt_formatNumber_1 = _jspx_th_fmt_formatNumber_1.doStartTag();
    if (_jspx_th_fmt_formatNumber_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_formatNumber_value_minFractionDigits_nobody.reuse(_jspx_th_fmt_formatNumber_1);
      return true;
    }
    _jspx_tagPool_fmt_formatNumber_value_minFractionDigits_nobody.reuse(_jspx_th_fmt_formatNumber_1);
    return false;
  }

  private boolean _jspx_meth_c_forEach_6(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_6 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_end_begin.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_6.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_6.setParent(null);
    _jspx_th_c_forEach_6.setVar("counter");
    _jspx_th_c_forEach_6.setBegin(1);
    _jspx_th_c_forEach_6.setEnd(((java.lang.Integer) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.totalPage}", java.lang.Integer.class, (PageContext)_jspx_page_context, null)).intValue());
    int[] _jspx_push_body_count_c_forEach_6 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_6 = _jspx_th_c_forEach_6.doStartTag();
      if (_jspx_eval_c_forEach_6 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                                                                    <li class=\"page-item\"><a class=\"page-link\" ");
          if (_jspx_meth_c_if_3((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_6, _jspx_page_context, _jspx_push_body_count_c_forEach_6))
            return true;
          out.write(" href=\"http://localhost:17429/ProjectPRJ321/list?page=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${counter}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${counter}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></li>    \n");
          out.write("                                                                                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_6.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_6.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_6[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_6.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_6.doFinally();
      _jspx_tagPool_c_forEach_var_end_begin.reuse(_jspx_th_c_forEach_6);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_3(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_6, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_6)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_3 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_3.setPageContext(_jspx_page_context);
    _jspx_th_c_if_3.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_6);
    _jspx_th_c_if_3.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.page eq counter}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_3 = _jspx_th_c_if_3.doStartTag();
    if (_jspx_eval_c_if_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("style=\"font-weight: 800;\"");
        int evalDoAfterBody = _jspx_th_c_if_3.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
    return false;
  }
}
