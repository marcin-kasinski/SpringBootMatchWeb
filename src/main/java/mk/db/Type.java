package mk.db;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.PostLoad;
import javax.persistence.Table;

@Entity
@Table(name = "type")
public class Type {
	

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "type_id")
	private int id;

//	@Column(name = "match_id")
//	private int match_id;

	@Column(name = "score1")
	private Byte score1;

	@Column(name = "score2")
	private Byte score2;
	
	@Column(name = "penaltieswinner")
	private String penaltieswinner;
	



	public String getPenaltieswinner() {
		return penaltieswinner;
	}

	public void setPenaltieswinner(String penaltieswinner) {
		this.penaltieswinner = penaltieswinner;
	}

	@OneToOne( fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Byte getScore1() {
		return score1;
	}

	public void setScore1(Byte score1) {
		this.score1 = score1;
	}

	public Byte getScore2() {
		return score2;
	}

	public void setScore2(Byte score2) {
		this.score2 = score2;
	}

}
