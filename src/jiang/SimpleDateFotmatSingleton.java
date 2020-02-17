package jiang;

import java.text.SimpleDateFormat;

public class SimpleDateFotmatSingleton {
	private SimpleDateFotmatSingleton(){}
	private static SimpleDateFormat sds;
	public static SimpleDateFormat getSimpleDateFormat(){
		if(sds==null){
			sds=new SimpleDateFormat("yyyyMMddHHmmss");
		}
		return sds;
	}

}
