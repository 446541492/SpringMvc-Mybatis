package com.softAngel.tools;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
/**
 * 可用于手机端
 * 通用分页类
 * 泛型，任意对象
 * @author wangl
 */
public class Pager {
	private int pageSize = 10;		// 每页多少条
	private int pageNo = 1; 		// 第几页
	private int totalPages = 10;	// 总的页数
	private int totalSize = 0;	// 总的记录数
	private int step = 5; 			// 步长
	private String url="/"; 			// 跳转页面url
	private String showPage;		//页面嵌套的底部分页	
	private String topShowPage;		//页面嵌套的顶部分页
	private Map<String,Object> params; //ajax 分页所带的参数
	private List<Object> list;//查出的结果数据
	
	public Pager() {
	}
	
	public Pager(int pageNo, int pageSize) {
		super();
		this.pageSize = pageSize;
		this.pageNo = pageNo;
	}

	public int getBegin() {
		return (this.getPageNo() - 1) * this.getPageSize();
	}

	public int getEnd() {
		return (this.getPageNo() - 1) * this.getPageSize() + this.getPageSize();
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		if (pageSize < 1) {
			this.pageSize = 10;
		} else {
			this.pageSize = pageSize;
		}
	}

	public int getPageNo() {
		if (this.pageNo > this.getTotalPages() && this.getTotalSize() > 0) {
			this.pageNo = this.getTotalPages(); // 如果当前页大于最大页数，则等于最大页数
			//this.pageNo = -1; //修改这里用户手机客户端.
		}
		return pageNo;
	}

 
	public void setPageNo(int pageNo) {
		if (pageNo < 1) {
			this.pageNo = 1;
		} else {
			this.pageNo = pageNo;
		}
	}

	public int getTotalPages() {
		totalPages = totalPages < 1 ? 1 : totalPages;
		totalPages = getTotalSize() % getPageSize() == 0 ? (getTotalSize() / getPageSize()) : (getTotalSize() / getPageSize() + 1);
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public int getTotalSize() {
		return totalSize;
	}

	public void setTotalSize(int totalSize) {
		this.totalSize = totalSize;
	}
	public int getStep() {
		return step;
	}

	public void setStep(int step) {
		this.step = step;
	}

	public String getUrl() {
		return url;
	}

	private String getUrl(int i) {
		String url = "";
		if (this.getUrl().indexOf("?") > 0) {
			url = this.getUrl() + "&pageNo=" + i;
		} else {
			url = this.getUrl() + "?pageNo=" + i;
		}
		url = url + getParamsStr();
		return url;
		
		/* 适合spring mvc 方式 如： /xx/xx/xx/2
		 * 
		String url = "";
		if (this.getUrl().endsWith("/")) {
			url = this.getUrl() + i;
		} else {
			url = this.getUrl() + "/" + i;
		}
		return url;
		*/
	}

	public void setUrl(String url) {
		this.url = url;
	}

	private void addPage(StringBuffer sb, int i) {
		if (i == this.getPageNo())
			sb.append("<a  class='fy_focus' href='javascript:gotoPage("+i+")'>" + i + "</a>\n");
		else
			sb.append("<a href='javascript:gotoPage("+i+")'>" + i + "</a>\n");
	}
	
	private void addAjaxPage(StringBuffer sb, int i) {
		getParams().put("pageNo", i);
		if (i == this.getPageNo())
			sb.append("<a  class='fy_focus' href='javascript:void(0);' onclick='doAjax({"+getParamsString()+"});return false;'>" + i + "</a>\n");
		else
			sb.append("<a href='javascript:void(0);' onclick='doAjax({"+getParamsString()+"});return false;'>" + i + "</a>\n");
	}
	
	private void addUrlPage(StringBuffer sb, int i) {
		if (i == this.getPageNo())
			sb.append("<a  class='fy_focus' href='" + this.getUrl(i) + "'>" + i + "</a>\n");
		else
			sb.append("<a href='" + this.getUrl(i) + "'>" + i + "</a>\n");
	}
	/*页面嵌套的顶部分页
	 * 页面调用：<c:out value="${pager.topShowPage}" escapeXml="false"></c:out>*/
	public String getTopShowPage(){
		topShowPage = "";
		if(this.getTotalPages() > 1){
			StringBuffer sb = new StringBuffer();
			sb.append("<p class=\"rs_page\"><span class=\"rs_page_1\">\n");
			
			//if (this.getPageNo() != 1) { // 如果当前页不是第一页，则显示首页
				sb.append("<a "+(this.pageNo==this.totalPages?"":" href='javascript:gotoPage("+(this.pageNo+1)+")'")+">" +
						"<img class=\"rs_before\" src=\"/imgs/search/pageafter.gif\" /></a>\n");
			//}
			int start=1;
			int end=this.pageSize;
			if(this.getPageNo()!=1){
				start=(this.getPageNo()-1)*this.getPageSize()+1;
				end=(this.getPageNo()-1)*this.getPageSize()+this.getPageSize();
			}
			if (this.getPageNo() == this.getTotalPages()) { 
				end=this.getTotalSize();
			}
			sb.append("<span>"+start+"-"+end+" / "+this.getTotalSize()+"</span>");
			
			//if (this.getPageNo() != this.getTotalPages()) { // 如果当前页不是最后一页，则显示末页
				sb.append("<a "+((this.pageNo-1)==0?"":" href='javascript:gotoPage("+(this.pageNo-1)+")'")+" >" +
						"<img class=\"rs_after\" src=\"/imgs/search/pagebefore.gif\" /></a></span></p>\n");
		//	}
//			sb.append("</div>\n");
			//System.out.println("pageNo:"+pageNo+"totalPages:"+this.totalPages+"  "+sb.toString());
			topShowPage = sb.toString();
			return topShowPage;
		}
		return "";
			
	}
	/*页面嵌套的底部分页
	 * 页面调用：<c:out value="${pager.showPage}" escapeXml="false"></c:out>*/
	public String getShowPage() {
		showPage = "";
		if (this.getTotalPages() > 1) { // 如果总页数大于一页，才显示分页栏
			int index = this.getStep() / 2;
			StringBuffer sb = new StringBuffer();
			sb.append("<div class='fanye'>\n");

			if (this.getPageNo() != 1) { // 如果当前页不是第一页，则显示首页
				sb.append("<a href='javascript:gotoPage(1)'>首页</a>\n");
			}

			if (this.getPageNo() <= index) {
				for (int i = 1; i <= this.getStep() && i <= this.getTotalPages(); i++) {
					addPage(sb, i);
				}
			} else if ((this.getPageNo() + index) >= this.getTotalPages()) {
				int begin = this.getTotalPages() - this.getStep();
				begin = begin > 0 ? begin : 1; // 如果小于0,责等于1
				int end = this.getTotalPages();
				for (int i = begin; i <= end; i++) {
					addPage(sb, i);
				}
			} else {
				int begin = this.getPageNo() - index;
				begin = begin > 0 ? begin : 1; // 如果小于0,责等于1
				int end = this.pageNo + index;
				for (int i = begin; i <= end; i++) {
					addPage(sb, i);
				}
			}
			if (this.getPageNo() != this.getTotalPages()) { // 如果当前页不是最后一页，则显示末页
				sb.append("<a href='javascript:gotoPage("+this.totalPages+")'>末页</a>\n");
			}
			sb.append("</div>\n");
			showPage = sb.toString();
			return showPage;
		}
		return "";
	}
	
	public String getShowAjaxPage() {
		if (this.getTotalPages() > 1) { // 如果总页数大于一页，才显示分页栏
			int index = this.getStep() / 2;
			StringBuffer sb = new StringBuffer();
			sb.append("<div class='fanye'>\n");

			if (this.getPageNo() != 1) { // 如果当前页不是第一页，则显示首页
				getParams().put("pageNo", 1);
				sb.append("<a href='javascript:void(0);' onclick='doAjax({"+getParamsString()+"});return false;'>首页</a>\n");
			}

			if (this.getPageNo() <= index) {
				for (int i = 1; i <= this.getStep() && i <= this.getTotalPages(); i++) {
					addAjaxPage(sb, i);
				}
			} else if ((this.getPageNo() + index) >= this.getTotalPages()) {
				int begin = this.getTotalPages() - this.getStep();
				begin = begin > 0 ? begin : 1; // 如果小于0,责等于1
				int end = this.getTotalPages();
				for (int i = begin; i <= end; i++) {
					addAjaxPage(sb, i);
				}
			} else {
				int begin = this.getPageNo() - index;
				begin = begin > 0 ? begin : 1; // 如果小于0,责等于1
				int end = this.pageNo + index;
				for (int i = begin; i <= end; i++) {
					addAjaxPage(sb, i);
				}
			}
			if (this.getPageNo() != this.getTotalPages()) { // 如果当前页不是最后一页，则显示末页
				getParams().put("pageNo", this.totalPages);
				sb.append("<a href='javascript:void(0);' onclick='doAjax({"+getParamsString()+"});return false;'>末页</a>\n");
			}
			sb.append("</div>\n");
			return sb.toString();
		}
		return "";
	}
	
	public String getShowUrlPage() {
		if (this.getTotalPages() > 1) { // 如果总页数大于一页，才显示分页栏
			int index = this.getStep() / 2;
			StringBuffer sb = new StringBuffer();
			sb.append("<div class='fanye'>\n");

			if (this.getPageNo() != 1) { // 如果当前页不是第一页，则显示首页
				sb.append("<a href='" + this.getUrl(1) + "'>首页</a>\n");
				sb.append("<a href='" + this.getUrl(this.getPageNo()-1) + "'>上一页</a>\n");
			}

			if (this.getPageNo() <= index) {
				for (int i = 1; i <= this.getStep() && i <= this.getTotalPages(); i++) {
					addUrlPage(sb, i);
				}
			} else if ((this.getPageNo() + index) >= this.getTotalPages()) {
				int begin = this.getTotalPages() - this.getStep();
				begin = begin > 0 ? begin : 1; // 如果小于0,责等于1
				int end = this.getTotalPages();
				for (int i = begin; i <= end; i++) {
					addUrlPage(sb, i);
				}
			} else {
				int begin = this.getPageNo() - index;
				begin = begin > 0 ? begin : 1; // 如果小于0,责等于1
				int end = this.pageNo + index;
				for (int i = begin; i <= end; i++) {
					addUrlPage(sb, i);
				}
			}
			if (this.getPageNo() != this.getTotalPages()) { // 如果当前页不是最后一页，则显示末页
				sb.append("<a href='" + this.getUrl(this.getPageNo()+1) + "'>下一页</a>\n");
				sb.append("<a href='" + this.getUrl(this.totalPages) + "'>末页</a>\n");
			}
			sb.append("</div>\n");
			return sb.toString();
		}
		return "";
	}

	public Map<String, Object> getParams() {
		if(null == params) {
			params = new HashMap<String, Object>();
		}
		return params;
	}

	public void setParams(Map<String, Object> params) {
		this.params = params;
	}
	
	private String getParamsString() {
		if(getParams() == null || getParams().isEmpty()) {
			return "";
		}
		StringBuffer sb = new StringBuffer();
		for (Map.Entry<String, Object> entry : getParams().entrySet()) {
			sb.append("\"");
			sb.append(entry.getKey());
			sb.append("\":");
			sb.append("\"");
			sb.append(entry.getValue());
			sb.append("\",");
		}
		if (',' == sb.charAt(sb.length() - 1)) {
			sb = sb.deleteCharAt(sb.length() - 1);
		}
		return sb.toString();
	}
	
	private String getParamsStr() {
		if(getParams() == null || getParams().isEmpty()) {
			return "";
		}
		StringBuffer sb = new StringBuffer();
		for (Map.Entry<String, Object> entry : getParams().entrySet()) {
			sb.append("&");
			sb.append(entry.getKey());
			sb.append("=");
			sb.append(entry.getValue());
		}
		return sb.toString();
	}

	public List<Object> getList() {
		return list;
	}

	public void setList(List<Object> list) {
		this.list = list;
	}
	
}
