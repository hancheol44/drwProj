package com.project.pro.service;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.project.pro.dao.SalesDAO;
import com.project.pro.util.FileUtil;
import com.project.pro.vo.FileVO;
import com.project.pro.vo.SalesVO;

@Service("SalesService")
public class SalesService {
	
	@Autowired
	private SalesDAO sDAO;
	
	// Sales List
	public List<SalesVO> getSaList() throws Exception {
		return sDAO.getSaList();
	}
	// Sales Detail
	public SalesVO saDetail(SalesVO sVO) throws Exception {
		return sDAO.saDetail(sVO);
	}
	// Sales Bcnt
	public void saBcnt(int bpno) throws Exception {
		sDAO.saBcnt(bpno);
	}
	// Sales Write
	public SalesVO saWrite(SalesVO sVO) throws Exception {
		return sDAO.saWrite(sVO);
	}
	// Sales Delete
	public int saDelete(int spno) throws Exception {
		return sDAO.saDelete(spno);
	}
	// Sales Edit
	public SalesVO saEdit(SalesVO sVO) throws Exception {
		return sDAO.saEdit(sVO);
	}
	// Review add(ajax)
	public SalesVO reWrite(SalesVO sVO) throws Exception {
		return sDAO.reWrite(sVO);
	}
	// Review List(ajax)
	public List reList(int pno) throws Exception {
		return sDAO.reList(pno);
	}
	// Review Delete
	public int reDelete(SalesVO sVO) throws Exception{
		return sDAO.reDelete(sVO);
	}
	// Sales Image Add
	public void saImage(FileVO fVO, File mfile, MultipartHttpServletRequest request) {
		try {
			String fileTag = "file";
			System.out.println("fileTag : " + fileTag);
			MultipartFile file = request.getFile(fileTag);
			System.out.println("file : " + file);
			String originalname = file.getOriginalFilename();
//			MultipartFile multi=null;
//			File fileTag = mfile;
//			System.out.println("fileTag : " + fileTag);
//			MultipartFile file = request.getFile("sfile");
//			MultipartFile file = fVO.getFile();
//			Iterator fileName = request.getFileNames();
//			System.out.println("fileName : " + fileName);
//			MultipartFile multi = fVO.getMulti();
//			while(fileName.hasNext()) {
//				String key = (String)fileName.next();
//				System.out.println("key : " + key);
//				multi = request.getFile(key);
//			}
			System.out.println("orignalname : " + originalname);
			
//			System.out.println("file.getName() : " + file.getName());
			String oriname = file.getOriginalFilename();
			System.out.println("ori : " + oriname);
			if(oriname.equals("")) {
				fVO.setOriname(null);
			} else {
				fVO.setOriname(oriname);
			}
			String fileName = file.getName();
			String filePath = request.getSession().getServletContext().getRealPath("resources/upload");
			System.out.println("filePath : " + filePath);
			String savename = FileUtil.rename(filePath, oriname);
//			fVO.setOriname(fileName);
//			fVO.setSavename(savename);
			System.out.println("ori : "+fVO.getOriname());
			System.out.println("save : "+fVO.getSavename());
			try {
			    file.transferTo(new File(filePath + fileName));
			} catch(Exception e) {
			    System.out.println("업로드 오류");
			}
			sDAO.saImage(fVO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
