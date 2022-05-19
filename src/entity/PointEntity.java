package entity;

public class PointEntity {
	private String vname;
	private int epoch;
	private String ssdversion;
	private float ssdP;
	private float ssdR;
	private float ssdF1;
	private float ssdmAP;
	private float ssdFPS;
	
	public String getVname() {
		return vname;
	}
	public void setVname(String vname) {
		this.vname = vname;
	}
	public int getEpoch() {
		return epoch;
	}
	public void setEpoch(int epoch) {
		this.epoch = epoch;
	}
	public String getSsdversion() {
		return ssdversion;
	}
	public void setSsdversion(String ssdversion) {
		this.ssdversion = ssdversion;
	}
	public float getSsdP() {
		return ssdP;
	}
	public void setSsdP(float ssdP) {
		this.ssdP = ssdP;
	}
	public float getSsdR() {
		return ssdR;
	}
	public void setSsdR(float ssdR) {
		this.ssdR = ssdR;
	}
	public float getSsdF1() {
		return ssdF1;
	}
	public void setSsdF1(float ssdF1) {
		this.ssdF1 = ssdF1;
	}
	public float getSsdmAP() {
		return ssdmAP;
	}
	public void setSsdmAP(float ssdmAP) {
		this.ssdmAP = ssdmAP;
	}
	public float getSsdFPS() {
		return ssdFPS;
	}
	public void setSsdFPS(float ssdFPS) {
		this.ssdFPS = ssdFPS;
	}
}
