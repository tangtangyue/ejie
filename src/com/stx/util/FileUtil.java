package com.stx.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

public class FileUtil {
	public static String upload( MultipartFile mFile,HttpServletRequest request){//request��ȡtomcat�������ַ
		SimpleDateFormat yformat = new SimpleDateFormat("yyyy");
		SimpleDateFormat mformat = new SimpleDateFormat("MM");
		SimpleDateFormat dformat = new SimpleDateFormat("dd");
		Date nowTime = new Date();
		String year = yformat.format(nowTime);
		String month = mformat.format(nowTime);
		String day = dformat.format(nowTime);
		String SavePath = request.getSession().getServletContext().getRealPath(
				"/")
				+ File.separator + "files/" + year + "_" + month+"_"+day+"/";
		File directory = new File(SavePath);
		if(!directory.exists()){
			directory.mkdirs();//�����ļ���
		}
		String SaveUrl = "/files/" + year + "_" + month+"_"+day+"/";//���浽���ݿ⣨�ļ�·������files�µ��ļ�·����
		Date dt = new Date();
		Random random = new Random();
		//�ļ���������
		String FileNameAuto = String.format("%X_%X", new Object[] {
				new Integer((int) (dt.getTime())),
				new Integer(random.nextInt()) });//Ϊ�˸��ļ�������
		String name= mFile.getOriginalFilename();  
		int pos = name.lastIndexOf(".");
		//��ȡ�ļ�����׺Fi
		String ext = name.substring(pos);
		String baseName=FileNameAuto+ext;
		OutputStream outputStream =null;
		try {
			outputStream = new FileOutputStream(SavePath+baseName);
			FileCopyUtils.copy(mFile.getInputStream(), outputStream);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if(outputStream!=null){
					outputStream.close();
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return SaveUrl+baseName;//���ص������ݿ���ļ�·��
		
		
	}
	
	public static void deleteFile(String filename,HttpServletRequest request){
		String f = request.getSession().getServletContext().getRealPath(
				"/")+filename;
		File file=new File(f);
		file.delete();
	}
}
