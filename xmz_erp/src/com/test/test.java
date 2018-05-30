package com.test;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
	String str = "jkj123123";
			String regEx = "^[a-zA-Z][a-zA-Z0-9_]{4,15}$";
			 Pattern pattern = Pattern.compile(regEx);
			   Matcher matcher = pattern.matcher(str);
			   boolean rs1 = matcher.matches();
			   System.out.println(rs1);}
	

}
