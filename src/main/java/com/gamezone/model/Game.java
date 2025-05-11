package com.gamezone.model;

public class Game {

		private int id;
		private String imagePath;
		private String title;
		private String status;
		
		public Game(int id, String imagePath, String title, String status) {
			super();
			this.id = id;
			this.imagePath = imagePath;
			this.title = title;
			this.status = status;
		}

		public Game(String imagePath, String title, String status) {
			super();
			this.imagePath = imagePath;
			this.title = title;
			this.status = status;
		}

		@Override
		public String toString() {
			return "Game [id=" + id + ", imagePath=" + imagePath + ", title=" + title + ", status=" + status + "]";
		}

		public int getId() {
			return id;
		}

		public String getImagePath() {
			return imagePath;
		}

		public String getTitle() {
			return title;
		}

		public String getStatus() {
			return status;
		}

		public void setId(int id) {
			this.id = id;
		}

		public void setImagePath(String imagePath) {
			this.imagePath = imagePath;
		}

		public void setTitle(String title) {
			this.title = title;
		}

		public void setStatus(String status) {
			this.status = status;
		}
		
		
		
		
}
