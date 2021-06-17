<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>404</title>
    <style>
        .container {
            width: 60%;
            margin: 10% auto 0;
            background-color: #f0f0f0;
            padding: 2% 5%;
            border-radius: 10px
        }

        ul {
            padding-left: 20px;
        }

            ul li {
                line-height: 2.3
            }

        a {
            color: #20a53a
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>404 您访问的页面不存在</h1>
        <h3>请确认你访问的地址是正确的</h3>
        <ul>
            <li>或者联系网站管理员</li>
            <li>本页信息来自{$config['appName']}</li>
			<li>如长期显示本页面,请直接访问主域名不带后缀</li>
        </ul>
    </div>
</body>
</html>