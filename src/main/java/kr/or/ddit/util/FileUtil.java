package kr.or.ddit.util;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import kr.or.ddit.util.model.FileInfo;

public class FileUtil {

	public static FileInfo getfileInfo(String originalFileName) {
		
		String path = getPath();

		String uuidFileName = UUID.randomUUID().toString();
		String extName = getExtension(originalFileName);
		
		File file = new File(path + "\\" + uuidFileName + extName);
		FileInfo fileInfo = new FileInfo(file, originalFileName, extName);
		
		return fileInfo;
	}

	private static String getPath() {
		String basicPath = "d:\\springUpload\\";
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMM");
		
		String yyyyMM = sdf.format(new Date()); // 201908
		String yyyy = yyyyMM.substring(0,4);	// 2019
		String mm = yyyyMM.substring(4,6);		// 08
		
		String path = basicPath + yyyy + "\\" + mm;
		
		File yyyyDirectory = new File(path);
		
		if(!yyyyDirectory.exists()) {
			yyyyDirectory.mkdirs();
		}
		return path;
	}

	private static String getExtension(String originalFileName) {
		// 확장자가 없을 경우 공백 리턴
		// 파일명에 .이 여러개 등장할 경우 가장 마지막에 있는 녀석이 확장자 구분자로 판단
		int index = originalFileName.lastIndexOf(".");
		
		if(index > 0)
			return originalFileName.substring(index, originalFileName.length());		
		else
			return "";
	}
	
}
