package com.project.pro.util;

import java.io.File;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

public class FileUtil {
	// ������ ���ϸ��� �����ϸ� �̸��� �ٲ��ִ� �Լ�
	
	public static String rename(String path, String oldName) {
		// ��Ģ : ���� �̸��� ���� ���� ��, _(����) ���·� �̸� ����
		int count = 0; // �ڿ� ���� ��ȣ ����� ����
		String tmpName = oldName; // �����̸� ����ų ����
		
		File file = new File(path, oldName);
		
		while(file.exists()) {
			// �̹� �����ϴ� ���� �̸� ���� ==> ���� ��ȣ ���� ���Ѿ�
			count++;
			// .�� �������� ������ �̸��� Ȯ���� �и�
			int len = tmpName.lastIndexOf('.');
			String tmp1 = tmpName.substring(0,len); // �����̸�
			String tmp2 = tmpName.substring(len); // Ȯ����
			
			// �и� �� ���� ���̱�
			oldName = tmp1 + "_" + count + tmp2;
			
			// ������ �̸��� �ִ��� Ȯ�� ==> file ��ü�� ���� Ȯ��
			file = new File(path, oldName);
		}
		return oldName;
	}
	
	public MultipartFile[] setArr(MultipartFile[] file) {
		MultipartFile[] tmp = null;
		List<MultipartFile> list = (List<MultipartFile>) Arrays.asList(file);
		for(int i = 0; i < file.length; i++) {
			if(list.get(i) == null) list.remove(i);
		}
		tmp = (MultipartFile[])list.toArray();
		return tmp;
	}
	
	public String[] getSavename(HttpSession session, MultipartFile[] file, String folder) {
		String[] savename = new String[file.length];
		String path = session.getServletContext().getRealPath("resources") + "/" + folder;
		
		for(int i = 0; i < file.length; i++) {
			String oriname = file[i].getOriginalFilename();
			if(oriname != null || oriname.length() != 0) {
				savename[i] = rename(path,oriname);
			}
			try {
				File refile = new File(path, savename[i]);
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return savename;
	}
}
