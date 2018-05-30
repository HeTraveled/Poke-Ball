package com.xmz.util;
/**
 * md5加密工具类
 * 
 */
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.commons.codec.binary.Base64;

public class MSUtil {
	public static String md5(String msg){
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] input = msg.getBytes();
			byte[] output = md.digest(input);
			String str = Base64.encodeBase64String(output);
			return str;
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			System.out.println("加密失败");
			e.printStackTrace();
			return "";
		}
	}
	
/*	//解密
	public   static  String JM(String inStr) {  
		  char [] a = inStr.toCharArray();  
		  for  ( int  i =  0 ; i < a.length; i++) {  
		   a[i] = (char ) (a[i] ^  't' );  
		  }  
		  String k = new  String(a);  
		  return  k;  
		 }   
	 */
	 
	public static void main(String[] args) {
		//测试加密
		System.out.println(md5("123"));
		//System.out.println(JM(md5("123")));
	}
	
	

}
