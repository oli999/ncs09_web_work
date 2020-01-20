<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//업로드 설정
	final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
	final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
	final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB
	
	//request 객체를  이용해서 실제로 업로드한 파일이 있는지 체크 한다.
	if (!ServletFileUpload.isMultipartContent(request)) {
		//에러 페이지 응답하고 
	    response.sendError(HttpServletResponse.SC_NO_CONTENT,
	    		"파일을 첨부 하지 않아서 처리가 안되요!");
	    return;//메소드 끝내기 
	}
	
	// configures upload settings
	DiskFileItemFactory factory = new DiskFileItemFactory();
	// sets memory threshold - beyond which files are stored in disk
	factory.setSizeThreshold(MEMORY_THRESHOLD);
	// sets temporary location to store files
	factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
	ServletFileUpload upload = new ServletFileUpload(factory);
	// sets maximum size of upload file
	upload.setFileSizeMax(MAX_FILE_SIZE);
	// sets maximum size of request (include file + form data)
	upload.setSizeMax(MAX_REQUEST_SIZE);
	
	//업로드된 파일을 저장할 절대 경로(서버의 파일시스템에서의) 얻어오기 
	String uploadPath=application.getRealPath("/upload");
	System.out.println("파일이 저장될 경로:"+uploadPath);
	//전송된 파라미터의 한글 인코딩 설정
	upload.setHeaderEncoding("utf-8");
	
	//업로드된 경로를 저장할 지역 변수
	String savedPath=null;
	
	try{
		List<FileItem> formItems=upload.parseRequest(request);
		if(formItems != null && formItems.size()>0){
			
			//반복문 돌면서 전송된 아이템을 불러온다.
			for(FileItem item:formItems){
				if(!item.isFormField()){ 
					// input type="file" 로 전송된 파일 이라면
					//원본 파일명
					String orgFileName=new File(item.getName()).getName();
					//파일의 사이즈 
					long fileSize=item.getSize();
					//저장할 파일명을 겹치지 않게 지정한다.
					String saveFileName=System.currentTimeMillis()+
						orgFileName;
					//파일 시스템에 저장할 전체 경로를 구성한다.
					String filePath=uploadPath+File.separator+saveFileName;
					//파일을 위의 경로에 실제로 저장한다.
					File storeFile=new File(filePath);
					item.write(storeFile);
					//이미지가 업로된 경로를 구성한다.
					savedPath="/upload/"+saveFileName;
					//DB 에 저장한다.
					String id=(String)session.getAttribute("id");
					UsersDto dto=new UsersDto();
					dto.setId(id);
					dto.setProfile(savedPath);
					UsersDao.getInstance().updateProfile(dto);
				}
			}//for
			
		}//if()
	}catch(Exception e){
		//예외가 발생하면 에러 페이지를 응답한다. 
		response.sendError(500, e.getMessage());
		return ;
	}
%>    
{"savedPath":"<%=savedPath %>"}





