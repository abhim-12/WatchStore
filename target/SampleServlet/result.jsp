<%@ page import ="java.util.*" %>
<%@ page import="java.io.Writer" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <style>
        h1 {font-family: "Times New Roman";
            padding: 30px;}
        body {font-family: Helvetica;
              background-color: blanchedalmond;}
    </style>
</head>
<body>
<center>
    <h1>
        AVAILABLE BRANDS
    </h1>
        <%
        int c=0;
        List result= (List) request.getAttribute("brands");
        List price = (List) request.getAttribute("prices");
        Object[] arr=result.toArray();
        Iterator it = result.iterator();
        Iterator it2 = price.iterator();

        String str;
        String query="";
        String url1="jdbc:mysql://192.168.0.12:3306/watchDB?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=IST";
        String name="admin";
        String pwd="root";

         for(int i=0;i<arr.length;i++){
            if(arr[i].equals("Chronograph-Black Dial"))
                out.print("<img src='Chronograph-Black-Dial.jpg' height='200' width='200'/> &nbsp &nbsp");
            if(arr[i].equals("Q Series"))
               out.print("<img src='qseries.jpg' height='200' width='200'/> &nbsp &nbsp");
            if(arr[i].equals("Townsman-Navy"))
               out.print("<img src='Townsman-Navy.jpg' height='200' width='200'/> &nbsp &nbsp");
            if(arr[i].equals("T Classic"))
               out.println("<img src='T-Classic.jpg' height='200' width='200'/> &nbsp &nbsp");
            if(arr[i].equals("T Sport"))
               out.println("<img src='T-Sport.jpg' height='200' width='200'/> &nbsp &nbsp");
            if(arr[i].equals("T-120"))
               out.println("<img src='T-180.jpeg' height='200' width='200'/> &nbsp &nbsp");
            if(arr[i].equals("Seamaster"))
               out.println("<img src='Seamaster.jpeg' height='200' width='200'/> &nbsp &nbsp");
            if(arr[i].equals("Speedmaster"))
               out.println("<img src='Speedmaster.jpeg' height='200' width='200'/> &nbsp &nbsp");
            if(arr[i].equals("Grandmaster"))
               out.println("<img src='Grandmaster.jpeg' height='200' width='200'/> &nbsp &nbsp");
         }
         out.println("<br>");

        while(it.hasNext()){
            c++;
            out.print(+ c +"."+ it.next()+ "&nbsp &nbsp &nbsp &nbsp");

        }
        out.println("<br>");

        while(it2.hasNext()){
            out.print("Price:" + it2.next() + "&nbsp &nbsp &nbsp &nbsp");
        }
        out.print("<br>");
        out.print("Year of manufacture & Colors available: ");
        for(int i=0;i<arr.length;i++){
             if(arr[i].equals("Chronograph-Black Dial")){
                 query="SELECT year,colors FROM watches WHERE product= 'Chronograph-Black Dial';";
                 str= getdata(query,url1,name,pwd);
                 out.print(str);
             }
             if(arr[i].equals("Q Series")){
                 query="SELECT year,colors FROM watches WHERE product= 'Q Series';";
                 str= getdata(query,url1,name,pwd);
                 out.print(str);
             }
             if(arr[i].equals("Townsman-Navy")){
                 query="SELECT year,colors FROM watches WHERE product= 'Townsman-Navy';";
                 str= getdata(query,url1,name,pwd);
                 out.print(str);
             }
             if(arr[i].equals("T Classic")){
                 query="SELECT year,colors FROM watches WHERE product= 'T Classic';";
                 str= getdata(query,url1,name,pwd);
                 out.print(str);
             }
             if(arr[i].equals("T Sport")){
                 query="SELECT year,colors FROM watches WHERE product= 'T Sport';";
                 str= getdata(query,url1,name,pwd);
                 out.print(str);
             }
             if(arr[i].equals("T-120")){
                 query="SELECT year,colors FROM watches WHERE product= 'T-120';";
                 str= getdata(query,url1,name,pwd);
                 out.print(str);
             }
             if(arr[i].equals("Seamaster")){
                 query="SELECT year,colors FROM watches WHERE product= 'Seamaster';";
                 str= getdata(query,url1,name,pwd);
                 out.print(str);
             }
             if(arr[i].equals("Grandmaster")){
                 query="SELECT year,colors FROM watches WHERE product= 'Grandmaster';";
                 str= getdata(query,url1,name,pwd);
                 out.print(str);
             }
             if(arr[i].equals("Speedmaster")){
                 query="SELECT year,colors FROM watches WHERE product= 'Speedmaster';";
                 str= getdata(query,url1,name,pwd);
                 out.print(str);
             }
         }
        %>


        <%! public String getdata(String query,String url1,String name,String pwd){
           // String url="jdbc:mysql://192.168.0.12:3306/watchDB";
           String s="";
                try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection(url1,name,pwd);
                Statement st = con.createStatement();
                 ResultSet rs = st.executeQuery(query);
                 rs.next();
                 s= rs.getString(1) +"&nbsp &nbsp &nbsp"+ rs.getString(2) + "&nbsp &nbsp &nbsp";
                 }
                catch(Exception e){
                e.printStackTrace();
               }
                return s;
            }
         %>
</body>
</html>