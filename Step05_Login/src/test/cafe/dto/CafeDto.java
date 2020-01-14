package test.cafe.dto;

public class CafeDto {
	private int num;
	private String writer;
	private String title;
	private String content;
	private int viewCount;
	private String regdate;
	//디폴트 생성자
	public CafeDto() {}
	public CafeDto(int num, String writer, String title, String content, int viewCount, String regdate) {
		super();
		this.num = num;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.viewCount = viewCount;
		this.regdate = regdate;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
}






