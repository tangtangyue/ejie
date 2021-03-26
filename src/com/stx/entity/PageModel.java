package com.stx.entity;


/*
 * 分页实体
 * 作者：刘金良
 * */
public class PageModel {
	private long total_count;//数据总条数
	private int page_size=10;//每页显示条数
	private int page_num;//总页数
	private int page_now=1;//当前页数
	
	private String page_first;//页面展示首页信息
	private String page_pre;//页面展示上一页信息
	private String page_next;//页面展示下一页信息
	private String page_last;//页面展示尾页信息
	
	private int first=1;//首页页数
	private int pre=0;//上一页页数
	private int next=0;//下一页页数
	private int last;//尾页页数

	public long getTotal_count() {
		return total_count;
	}

	public void setTotal_count(long totalCount) {
		total_count = totalCount;
	}

	public int getPage_size() {
		return page_size;
	}

	public void setPage_size(int pageSize) {
		page_size = pageSize;
	}

	public int getPage_num() {
		return page_num;
	}

	public void setPage_num(int pageNum) {
		page_num = pageNum;
	}

	public int getPage_now() {
		return page_now;
	}

	public void setPage_now(int pageNow) {
		page_now = pageNow;
	}

	public String getPage_first() {
		return page_first;
	}

	public void setPage_first(String pageFirst) {
		page_first = pageFirst;
	}

	public String getPage_pre() {
		return page_pre;
	}

	public void setPage_pre(String pagePre) {
		page_pre = pagePre;
	}

	public String getPage_next() {
		return page_next;
	}

	public void setPage_next(String pageNext) {
		page_next = pageNext;
	}

	public String getPage_last() {
		return page_last;
	}

	public void setPage_last(String pageLast) {
		page_last = pageLast;
	}

	public int getFirst() {
		return first;
	}

	public void setFirst(int first) {
		this.first = first;
	}

	public int getPre() {
		return pre;
	}

	public void setPre(int pre) {
		this.pre = pre;
	}

	public int getNext() {
		return next;
	}

	public void setNext(int next) {
		this.next = next;
	}

	public int getLast() {
		return last;
	}

	public void setLast(int last) {
		this.last = last;
	}
	//action 控制器方法的请求地址
	
	public void setPage(String action,int total_count,int page_now,int page_size){
		this.page_size=page_size;
		this.page_now=page_now;
		this.page_num=(int) (total_count/this.page_size);
        if(total_count%this.page_size!=0){
            this.page_num+=1;
        }	
		last=page_num;
		if(page_now>1){
			pre=page_now-1;
		}else{
			pre=1;
		}
		if(page_now<page_num){
			next=page_now+1;
		}else{
			next=page_now;
		}
		page_first=action+"?page_now="+first;
		page_pre=action+"?page_now="+pre;
		page_next=action+"?page_now="+next;
		page_last=action+"?page_now="+last;
	}
	
	
	
}
