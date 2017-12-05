﻿package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016082600313188";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCXZG0C9Y9dywbdQtyi10o3S8YZv+OSkH8/bAHxt3mqcl/uAzVEJygSMsjwP7d/d8lFFZbvFCc21XXjYS3Zs1lJ54rwvGCQCa2tZTWPVnqBWaVwYJRArnHa5bCe4EqCgA3wwLcwi09+d6XMpq5qDnkJXoSmzOJkbXzGlRUBdUwB7q4AoX0ATYqPMqHw2i8XGIVOTx3uxNLZXxhqj7htOYpNVl+ivWvIc+1dHHrjFfged5akA7KN/g1SdkXji0h01sBQNLQZ1P9++Tw3f2qi4My4MNUmHzSqShnT0Ak8sxlJUWZ7RRhAiCkXcE3BVsW1lwELp6aWTJVICKGbT7vmG+NxAgMBAAECggEAAOhoQvFIB8703pTND+jsmAJLUNI2wiU9rhqutE1eXGhNLPc19Y+qjNljHRW0uv3z5gcoHYzoY0rKZy+o/7o0md3alnD6v0JfmT+XH6HsICRyeocJvI2PPznLYliD+d5ctwngz1i2hFKhWuXQ++/UR/saHonx/Zouel5gft6+MvDCDPABnoFV6RWbZjmuyg7a70vyNoMFLxZYSzUlcK5jDGpkTWH/XI7NCJVge337Ehffnac4/84jrzlOXUbuWipFlxaJaYUPDsixmr2MGml1NaMpIP9MzWtELFLUWQchy5DybR2L9OCJfGUKaYLDGOrkPAdxYMDobQRGC7/O8GW2BQKBgQD12jOxCF4hVYGALKXo00OfPXfA8Mp/8j7YM79E1+W13/b/bQBZGbGpXrCFpgqlJ0q50HgzO/kGVxqHWUaHdo38nui2gLw3QsGtkR/4YTJTH0+rUYc0DQL/fsOD/83ViNFQNum4xAtwLfXjMaDT0R/a+X+SBGX94HXncZM+zJpGHwKBgQCdpBypHHFrjrAqWAS2eXpb3sLWgWibyh6zJuTf0/l2GlumtTez3jSG1mtDfeHrWEUnZOmGd7XjkdZ5w2Y3fD/N4WrulDruHmodBgeb+QLAiaf+FXROUF4q4magsIg61DXVFiAMe4Omt6D5gpG4xyjhucbBttgkzrCmmyy7gAEEbwKBgAPi6yZFR5enTmDEU+sWS99cjWQTamATaELqrn9cGlmBrNnk0ziVW2WeBZRXR5vMvzWowf2tWQZsohK5qo/BpAT2Th90cYU+HOmtfZ/jiXQe7pd6tnRwMDfxvQ19IbfabdSiyZcOIlAnqddplW1DxQklIIsiXqpgvfxmozk+6sFpAoGAEc1bszlUEapueImyFo1HZSKV7DV3A8jiiKbGyAQfMtgtK3lhjf10/xktydRoc/Rm8tjxik7win+Isf2ACJoOdoiTU9gHg6aJozdwGowXZHjnMMlpdgKbb8pbfqAQ8lvOrH6wJdi4+FXaZvL4094h3sPlDzE/3YA98MKrXY1KEB8CgYEAzEHjkSyHbM2P2uFw4jWpOZQ+vgjuljpaSfkKuMXIS6KGr793QNcoDvvuRjApLa0hSiCZoaoemx3sPjEvU0K96LKTsMNMYaT2MrK6GzHoE05MZEO7jmLCC0vjbOCxQG4LcQGqI/+T/iddMQLi41kgCV6KaExlmqsZ/YHat6KAaKo=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAl2RtAvWPXcsG3ULcotdKN0vGGb/jkpB/P2wB8bd5qnJf7gM1RCcoEjLI8D+3f3fJRRWW7xQnNtV142Et2bNZSeeK8LxgkAmtrWU1j1Z6gVmlcGCUQK5x2uWwnuBKgoAN8MC3MItPfnelzKauag55CV6EpsziZG18xpUVAXVMAe6uAKF9AE2KjzKh8NovFxiFTk8d7sTS2V8Yao+4bTmKTVZfor1ryHPtXRx64xX4HneWpAOyjf4NUnZF44tIdNbAUDS0GdT/fvk8N39qouDMuDDVJh80qkoZ09AJPLMZSVFme0UYQIgpF3BNwVbFtZcBC6emlkyVSAihm0+75hvjcQIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://127.0.0.1/Flower/alipay_notifyServlet";
	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://127.0.0.1/Flower/alipay_returnServlet";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";
	


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

