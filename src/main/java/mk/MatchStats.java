package mk;

public class MatchStats {
	
	String email;
	String key;
	
	
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public MatchStats(String key,String email, int points, int pointsWithMinuses, int scoredcount, int perfectscoredcount,
			int noscoredcount) {
		super();
		this.key = key;
		this.email = email;
		this.points = points;
		this.pointsWithMinuses = pointsWithMinuses;
		this.scoredcount = scoredcount;
		this.perfectscoredcount = perfectscoredcount;
		this.noscoredcount = noscoredcount;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	int points;


	@Override
	public String toString() {
		return "MatchStats [email=" + email + ", points=" + points + ", pointsWithMinuses=" + pointsWithMinuses
				+ ", scoredcount=" + scoredcount + ", perfectscoredcount=" + perfectscoredcount + ", noscoredcount="
				+ noscoredcount + "]";
	}
	int pointsWithMinuses;
	
	int scoredcount;
	int perfectscoredcount;
	int noscoredcount;
	
	
	public int getPoints() {
		return points;
	}
	public void setPoints(int points) {
		this.points = points;
	}
	public int getPointsWithMinuses() {
		return pointsWithMinuses;
	}
	public void setPointsWithMinuses(int pointsWithMinuses) {
		this.pointsWithMinuses = pointsWithMinuses;
	}
	public int getScoredcount() {
		return scoredcount;
	}
	public void setScoredcount(int scoredcount) {
		this.scoredcount = scoredcount;
	}
	public int getPerfectscoredcount() {
		return perfectscoredcount;
	}
	public void setPerfectscoredcount(int perfectscoredcount) {
		this.perfectscoredcount = perfectscoredcount;
	}
	public int getNoscoredcount() {
		return noscoredcount;
	}
	public void setNoscoredcount(int noscoredcount) {
		this.noscoredcount = noscoredcount;
	}
	

}
