<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous"/>
    <link href="https://fonts.googleapis.com/css?family=Merriweather:300,400,400i|Noto+Sans:400,400i,700" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600" rel="stylesheet"/>
    <script src="/admin_js/sweetalert.min.js"></script>
</head>
<body>
    
    <form id="form1" runat="server">
        <style>
        * {
            margin: 0;
            padding: 0;
            border: none;
            font-family: 'Open Sans', sans-serif;
        }

        body {
            overflow: hidden;
            background-color: #ededed;
        }

        .to {
            width:100%;
            height:100vh;
            position:relative;
        }

        .form {
            border: 1px solid #80808000;
            height: 270px;
            width: 292px;
            display: flex;
            flex-direction: column;
            align-items: center;
            position: relative;
            border-radius: 15px;
            box-shadow: 0px 0px 14px 0px grey;
            background-color: white;
            position:absolute;
            top:40%;
            left:50%;
            transform: translate(-50%, -50%);
        }

        h2 {
            margin-top: 50px;
            margin-bottom: 30px;
        }

        i.fab.fa-app-store-ios {
            display: block;
            margin-bottom: 50px;
            font-size: 28px;
        }

        label {
            margin-left: -126px;
            display: block;
            font-weight: bold;
            float:left;
        }

        input {
            display: block;
            border-bottom: 2px solid #00BCD4;
            margin-top: 6px;
            margin-bottom: 10px;
            outline-style: none;
        }

            input[type="text"] {
                padding: 5px;
                width: 70%;
            }

            .btn_dangnhap {
                padding: 7px;
                width: 50%;
                border-radius: 10px;
                border: none;
                /*position: absolute;
                bottom: 10px;*/
                margin:20px;
                cursor: pointer;
                background: linear-gradient(to right, #fc00ff, #00dbde);
            }

                input#submit:hover {
                    background: linear-gradient(to right, #fc466b, #3f5efb);
                }
    </style>
        <div class="to">
            <div class="form">
                <h2>Đăng Nhập</h2>
                <label style="left:-150px">Tên Đăng Nhập</label>
                <input type="text" name="hoten" runat="server" id="txt_UserName" />
                <asp:Button Text="Đăng Nhập" id="btn_Login" class="btn_dangnhap" runat="server" OnClick="btn_Login_Click" />
            </div>
        </div>
    </form>
</body>
</html>
