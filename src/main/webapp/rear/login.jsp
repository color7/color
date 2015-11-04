<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录页面</title>
<link rel="stylesheet" href="Css/home.css" type="text/css" media="screen" charset="utf-8">
<link rel="stylesheet" href="Css/sign.min.css" type="text/css" media="screen" charset="utf-8">
</head>

<body style="background-color:#fff;">
	<div id="cboxOverlay" style="display: none;"></div>
    <div class="sign">
        <div class="loginWrap">
        <a class="logo" href=""></a>
        <div class="loginPic">
            <div class="loginBord">
                <div class="loginTit">
                    <div class="tosignup">
                        还没有暴走团账号？
                        <a href="/i/account/signup?login">30秒注册</a>
                    </div>
                    <h1>登录暴走团</h1>
                </div>
                <form id="login-user-form" method="post" action="index.html">
                    <input type="hidden" name="redirect" value="" id="redirect"/>
                    <div class="textbox_ui user">
                                    <input type="text" name="email" placeholder="用户名/邮箱/手机号" required="" autofocus=""/>
                                    <div class="invalid">
                            <i></i>
                            <div class="required">请输入用户名/邮箱/手机号</div>
                            <div class="custom"></div>
                        </div>
                    </div>
                    <div class="textbox_ui pass">
                                    <input type="password" name="password" placeholder="密码" required=""/>
                                    <div class="invalid">
                            <i></i>
                            <div class="required">请输入密码</div>
                            <div class="custom"></div>
                        </div>
                    </div>
                    <p>
                        <a href="/i/account/resetreq?=login" class="fr">忘记密码?</a>
                        <label for="agree_userterm">
                            <input type="checkbox" name="auto_login" id="agree_userterm" checked=""/>
                            &nbsp;自动登录
                        </label>
                    </p>
                    <div class="verityWrap" style="display: none;">
                        <div class="textbox_ui">
                            <input type="text" name="hash_code" placeholder="输入验证码" autocomplete="off" value="" pattern="\d{4}"/>
                            <div class="invalid">
                                <i></i>
                                <div class="required">请输入验证码</div>
                                <div class="format">验证码输入有误</div>
                                <div class="custom"></div>
                            </div>
                            <div class="focus_text">按右图填写，不区分大小写</div>
                        </div>
                        <a href="#">
                            <img src="/i/account/hash_code?from=signup&amp;1410597689"/>
                            换一张
                        </a>
                    </div>
                    <input class="loginbtn" type="submit" value="登 录"/>
                    <div id="errorMsg"></div>
                </form>
                <div class="otherAccout">
                    <p>你也可以使用以下账号登录</p>
                    <a href="/i/extconnect/?site_name=cb_qq&amp;redirect="> <i class="iqq"></i>QQ</a>
                    <a href="/i/extconnect/?site_name=sina_weibo&amp;redirect="> <i class="iweibo"></i>新浪微博</a>
                    <a href="/i/extconnect/?site_name=renren&amp;redirect="> <i class="irenren"></i>人人网</a>
                    <a href="/i/extconnect/?referer=360tuan_dh&amp;site_name=site_360&amp;redirect="> <i class="i360"></i>360</a>
                    <a href="/i/extconnect/?site_name=baidu&amp;redirect="> <i class="ibaidu"></i>百度</a>
                    <a href="/i/extconnect/?site_name=xunlei&amp;redirect="> <i class="ixunlei"></i>迅雷</a>
                    <a href="/i/extconnect/?site_name=tuan800&amp;redirect="> <i class="ituan"></i>团800</a>
                    <a href="/i/extconnect/?site_name=mogujie&amp;redirect="> <i class="imogu"></i>蘑菇街</a>
                    <a href="/i/extconnect/?site_name=alipay&amp;redirect="> <i class="ialipay"></i>支付宝</a>
                </div>
                <div class="shadow_l"></div>
                <div class="shadow_r"></div>
            </div>
        </div>
     	</div>
    </div>
    <div class="clear"></div>
    <!--页脚-->
    <div id="footer_container" style="padding-top:5px;background: none;border-top: none;">
    <div id="footer_textarea">
        <div style="display:none"><a href="">每日更新</a></div>
                
        <div class="footer_con" id="footer_copyright">
            <p class="footer_copy_con">
                Copyleft © 2010-2014 软件工程暴走集团 Jumei.com 保留一切权利。
                                客服热线：400-123-8888，4000-123-888 
                                <br>
                京公网安备 110105001608 | 
                <a href="" target="_blank" rel="nofollow">京ICP证111033号</a> | 食品流通许可证 SP1101051110165515（1-1）
                | <a href="" target="_blank" rel="nofollow">营业执照</a>
            </p>
            <p>
                <a href="javascript:void(0)" class="footer_copy_logo logo01" rel="nofollow"></a>
                <a href="" target="_blank" class="footer_copy_logo logo02" rel="nofollow"></a>
                <a href="javascript:void(0)" class="footer_copy_logo logo03" rel="nofollow"></a>
                <a href="javascript:void(0)" class="footer_copy_logo logo04" rel="nofollow"></a>
                <a href="" target="_blank" class="footer_copy_logo logo05" rel="nofollow"></a>
            </p>
        </div>

            </div>
</div>
</body>
</html>

