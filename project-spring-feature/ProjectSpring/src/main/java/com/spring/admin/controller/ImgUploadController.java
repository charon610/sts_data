package com.spring.admin.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.spring.admin.vo.ImageFileVo;

import net.coobird.thumbnailator.Thumbnailator;

@Controller
public class ImgUploadController 
{
	
	@RequestMapping(value = "/uploadAjaxActionImg", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<ImageFileVo>> uploadAjaxImg(@RequestParam(value="uploadFile", required=true) MultipartFile[] files)
	{
		List<ImageFileVo> list = new ArrayList<>();
		
		String uploadRoot = "C:\\upload";
		String uploadFolder = getFolder();
		
		File uploadPath = new File(uploadRoot, uploadFolder);
		
		if (uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		
		for (MultipartFile file : files) {
			ImageFileVo imageFileVo = new ImageFileVo();
			String filename = file.getOriginalFilename();
			filename = filename.substring(filename.lastIndexOf("\\") + 1);
			imageFileVo.setFilename(filename);
			
			UUID img_name = UUID.randomUUID();
			filename = img_name.toString() + "_" + filename;
			
			try {
				File saveFile = new File(uploadPath, filename);
				file.transferTo(saveFile);
				imageFileVo.setImg_name(img_name.toString());
				imageFileVo.setUploadpath(uploadFolder);
				
				if (checkImageType(saveFile)) {
					imageFileVo.setFiletype(true);
					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_" + filename));
					Thumbnailator.createThumbnail(file.getInputStream(), thumbnail, 200, 200);
					thumbnail.close();
				}
				list.add(imageFileVo);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
	
		return new ResponseEntity<>(list, HttpStatus.OK);
	}
	
	private String getFolder() {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String str = sdf.format(date);
		return str.replace("-", File.separator);
	}
		
	private boolean checkImageType(File file)
	{
		try {
			String contentType = Files.probeContentType(file.toPath());
			return contentType.startsWith("image");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	@RequestMapping(value = "/displayImg", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<byte[]> getFile(@RequestParam("filename") String fileName)
	{
		File file = new File("c:\\upload\\" + fileName);
		ResponseEntity<byte[]> result = null;
		
		try {
			HttpHeaders header = new HttpHeaders();
			header.add("Content-Type", Files.probeContentType(file.toPath()));
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	
	@RequestMapping(value = "/downloadImg", method = RequestMethod.GET, produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
	@ResponseBody
	public ResponseEntity<Resource> downloadFile(@RequestHeader("User-Agent") String userAgent, String fileName)
	{
		Resource resource = new FileSystemResource("c:\\upload\\" + fileName);
		
		if (resource.exists() == false) {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
		
		String resourceName = resource.getFilename();
		String resourceOriginalName = resourceName.substring(resourceName.indexOf("_") + 1);
		
		HttpHeaders headers = new HttpHeaders();
		try {
			String downloadName = null;
			
			if (userAgent.contains("Trident")) {
				downloadName = URLEncoder.encode(resourceOriginalName, "UTF-8").replaceAll("\\+", " ");
			}
			else if (userAgent.contains("Edge")) {
				downloadName = URLEncoder.encode(resourceOriginalName, "UTF-8");
			}
			else {
				downloadName = new String(resourceOriginalName.getBytes("UTF-8"), "ISO-8859-1");
			}
			
			headers.add("Content-Disposition", "attachment; filename=" + downloadName);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return new ResponseEntity<Resource>(resource, headers, HttpStatus.OK);
	}
	
	

	@RequestMapping(value="/deleteImgFile", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<String> deleteFile(String fileName, String type) {
		File file;
		
		try {
			file = new File("c:\\upload\\" + URLDecoder.decode(fileName, "UTF-8"));
			file.delete();
			
			if (type.equals("image")) {
				String largeFileName = file.getAbsolutePath().replace("s_", "");
				file = new File(largeFileName);
				file.delete();
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
		
		return new ResponseEntity<String>("deleted", HttpStatus.OK);
	}

}