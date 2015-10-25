package com.go4venue.web.persistence.beans;

public class PageInfo {
    
    private long key;
    private String url;
    private String title;
    /**
     * @return the key
     */
    public long getKey() {
        return key;
    }
    /**
     * @param key the key to set
     */
    public void setKey(long key) {
        this.key = key;
    }
    /**
     * @return the url
     */
    public String getUrl() {
        return url;
    }
    /**
     * @param url the url to set
     */
    public void setUrl(String url) {
        this.url = url;
    }
    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }
    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

}
