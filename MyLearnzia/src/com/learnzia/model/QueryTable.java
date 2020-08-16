package com.learnzia.model;

import javax.persistence.Column; //
import javax.persistence.Entity; //entity class would have a corresponding table in DB
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;     //to mark a column as primary key in table
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;  //table properties


@Entity
@Table(name="query_table")
public class QueryTable  //AJO Annotated Java Object
{
	@Id
    @Column(name="queryId")
    @GeneratedValue (strategy= GenerationType.SEQUENCE, generator="query_seq")
    @SequenceGenerator(name = "query_seq",allocationSize=1, sequenceName = "query_seq")
    private int queryId;
	
 
	@Column(name="queryName")
	private String queryName;
	@Column(name="queryLang")
	private String queryLang;
	
	//no argument constructor
	public QueryTable() {super();}
	//constructor
	public QueryTable( String queryName, String queryLang) {
		super();
		this.queryName = queryName;
		this.queryLang = queryLang;
	}
	public int getQueryId() {
		return queryId;
	}
	public void setQueryId(int queryId) {
		this.queryId = queryId;
	}
	public String getqueryName() {
		return queryName;
	}
	public void setqueryName(String queryName) {
		this.queryName = queryName;
	}
	public String getqueryLang() {
		return queryLang;
	}
	public void setqueryLang(String queryLang) {
		this.queryLang = queryLang;
	}
	
	
	//toSring method
	@Override
	public String toString() {
		return "QueryTable [queryId=" + queryId + ", queryName=" + queryName + ", queryLang=" + queryLang + "]";
	}
	}
