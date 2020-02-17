package jiang;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Logger;

import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;



public class Upload {
	public static void uploadFile(InputStream filestream,String filename,String name,String username, String titlename){

        DiskFileItemFactory factory = new DiskFileItemFactory();

        ServletFileUpload upload = new ServletFileUpload(factory);

        upload.setHeaderEncoding("UTF-8"); 

        String t=Thread.currentThread().getContextClassLoader().getResource("").getPath(); 
        /*/usr/java/apache-tomcat-8.5.34/webapps/LGG/WEB-INF/classes/*/
       // int num=t.indexOf(".metadata");
      // String path=t.substring(1,num).replace('/', '\\')+"farmers_picture";
        int num=t.indexOf("LGG");
        String path=t.substring(0,num)+"farmers_picture";
       filename = filename.substring(filename.lastIndexOf("."));
       System.out.println(path);
       System.out.println(filename);
       File nextFile = new File(path,username+"/"+titlename);
       if(!nextFile.exists()){
           nextFile.mkdirs();
       }
       try {
			nextFile.createNewFile();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
       
       String jsavePath=nextFile.getAbsolutePath();
       String realSavePath = jsavePath+"/"+name+filename;


        FileOutputStream out = null;

		try {

			out = new FileOutputStream(realSavePath);

		} catch (FileNotFoundException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		}


        byte buffer[] = new byte[10240];


        int len = 0;


        try {

			while((len=filestream.read(buffer))>0){


			    out.write(buffer, 0, len);

			}

		} catch (IOException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		}



        try {

			filestream.close();

			out.close();

		} catch (IOException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		}

    }

}
