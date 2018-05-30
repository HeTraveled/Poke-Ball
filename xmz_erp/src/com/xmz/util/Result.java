package com.xmz.util;
/**
 * Result 工具类
 * 
 */
import java.io.Serializable;

@SuppressWarnings("serial")
public class Result implements Serializable {
	private  int state;//状态返回1成功或者0失败
	private  String msg;//提示信息成功或者失败
	private Object data;//时间
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	
	
}
