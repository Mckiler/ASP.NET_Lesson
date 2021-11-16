<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm1.aspx.cs" Inherits="WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--
    meta name="viewpoint" 
        จะบอกให้ Web Browser กำหนดความกว้างของเว็บไซต์ 
        ให้เท่ากับความกว้างของหน้าจอ ของ device นั้นๆ
    }
    //-->
    <meta name="viewpoint" content="width=device-width,initial-scale=1.0" />
    <title></title>
    <!--
    Add Nuget Manager bootstrap / fontawesome 4.70
    }
    //-->
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"/>
    
</head>
<body>
    <form id="form1" runat="server">
        <!--
        Add Class Container
        container เป็นกล่องสำหรบเก็บเนื้อหา ส่วนประกอบต่าง ๆ ไว้ภายในเป็นรูปแบบขนาดตายตัว 
            แสดงอยู่กึ่งกลางหน้าจอซึ่ง container นี้จะมีความกว้างอยู่ที่ 940px
        container-fluid เป็นกล่องสำหรบเก็บเนื้อหาส่วนประกอบต่าง ๆ ไว้ภายในเป็นรูปแบบยืดหยุ่นได้ ตามขนาดของจอแสดงผล
        }
        //-->
        <div class="container-fluid">
            <h2>ASP.NET Web App</h2>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <!--
            Add Class row
            หลังจากที่เราสร้าง class ที่ชื่อว่า container เพื่อครอบเนื้อหา และส่วนประกอบต่าง ๆ เรียบร้อยแล้ว 
                สิ่งที่เราต้องเรียนรู้และสำคัญมากก็ คือ class ที่ชื่อว่า “row” อยู่ภายใน class ที่ชื่อว่า container เสมอ
            https://www.jir4yu.me/2014/%E0%B8%A3%E0%B8%B9%E0%B9%89%E0%B8%88%E0%B8%B1%E0%B8%81-bootstrap-layout-grid/
            }
            //-->
            <div class="row">
                <div class="col-lg-3">Column 1</div>
                <div class="col-lg-3">Column 2</div>
                <div class="col-lg-3">Column 3</div>
                <div class="col-lg-3">Column 4</div>

                <div class="col-lg-12">Column 1</div>
                <div class="col-lg-12">Column 2</div>
                <div class="col-lg-12">Column 3</div>
                <div class="col-lg-12">Column 4</div>

                <!--
                https://fontawesome.com/v5.15/icons?d=gallery&p=2
                }
                //-->
                <div class="col-md-3"><i class="fab fa-facebook"></i> Facebook</div>
                <div class="col-md-3"><i class="fab fa-line"></i> Line</div>
                <div class="col-md-3"><i class="fas fa-users"></i> User</div>
                <div class="col-md-3 "><i class="fas fa-lock"></i> Login</div>

            </div>
             
        </div>
    </form>
    <!--
    Add Nuget Manager jquery
    Add Nuget Manager bootstrap
    }
    //-->
    <script src="Scrips/jquery-3.6.0.slim.js"></script>
    <script src="Scrips/bootstrap.min.js"></script>

</body>
</html>
