package com.watch.common.bean;

import java.util.List;

public class Pager4EasyUI<T> {

    private int pageSize;//7
    private int pageNo; //9
    private int beginIndex;

    private int total;
    private List<T> rows;

    public Pager4EasyUI() {

    }

    public Pager4EasyUI(int total, List<T> rows) {
        this.total = total;
        this.rows = rows;
    }

    public int getBeginIndex() {
        if(pageNo == 0){
            pageNo = 1;
        }
        return (pageNo - 1) * pageSize;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageNo() {
        return pageNo;
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
    }

}
