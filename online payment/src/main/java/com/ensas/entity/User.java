package com.ensas.entity;

public class User {
          int id_client;
          String  uname,upwd,uemail,umobile;
          double montantAbonnement;
          String isPaye;
          
		public User(int id, String uname, String uemail, String umobile, double montantAbonnement, String isPaye) {
			super();
			this.id_client = id;
			this.uname = uname;
			this.uemail = uemail;
			this.umobile = umobile;
			this.montantAbonnement = montantAbonnement;
			this.isPaye = isPaye;
		}

		public User() {
			super();
			// TODO Auto-generated constructor stub
		}
		
		public User(String uname, String upwd, String uemail, String umobile) {
			super();
			this.uname = uname;
			this.upwd = upwd;
			this.uemail = uemail;
			this.umobile = umobile;
		}
		

		public User(String upwd, String uemail) {
			super();
			this.upwd = upwd;
			this.uemail = uemail;
		}

		public int getId() {
			return id_client;
		}
		public void setId(int id) {
			this.id_client = id;
		}
		public String getUname() {
			return uname;
		}
		public void setUname(String uname) {
			this.uname = uname;
		}
		public String getUpwd() {
			return upwd;
		}
		public void setUpwd(String upwd) {
			this.upwd = upwd;
		}
		public String getUemail() {
			return uemail;
		}
		public void setUemail(String uemail) {
			this.uemail = uemail;
		}
		public String getUmobile() {
			return umobile;
		}
		public void setUmobile(String umobile) {
			this.umobile = umobile;
		}
}
