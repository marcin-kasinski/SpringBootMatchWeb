package mk.db;

import java.text.SimpleDateFormat;
import java.util.Calendar;
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
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.data.annotation.Transient;

@Entity
@Table(name = "`match`")
public class Match {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "match_id")
	private int id;

	@Column(name = "play_time")
	private String play_time;

	@Column(name = "team1")
	private String team1;

	@Column(name = "team2")
	private String team2;

	@Column(name = "score1")
	private Byte score1;

	@Column(name = "score2")
	private Byte score2;

	@Column(name = "closed")
	private boolean closed;

	@Column(name = "game_id")
	private int game;

	public int getGame() {
		return game;
	}

	public void setGame(int game) {
		this.game = game;
	}

	public boolean isClosed() {
		return closed;
	}

	public void setClosed(boolean closed) {
		this.closed = closed;
	}

	@OneToMany(cascade = CascadeType.ALL , fetch = FetchType.EAGER)
	@JoinTable(name = "match_type", joinColumns = @JoinColumn(name = "match_id"), inverseJoinColumns = @JoinColumn(name = "type_id"))
	private Set<Type> types;

	
	
//	@OneToOne( fetch = FetchType.EAGER, mappedBy="team")
	@OneToOne( fetch = FetchType.EAGER)
    @JoinColumn(name = "team1", referencedColumnName="team" , nullable = false,insertable= false,  updatable=false)
    private Flag flag1;

public Flag getFlag1() {
		return flag1;
	}

	public void setFlag1(Flag flag1) {
		this.flag1 = flag1;
	}

	public Flag getFlag2() {
		return flag2;
	}

	public void setFlag2(Flag flag2) {
		this.flag2 = flag2;
	}

	//	@OneToOne( fetch = FetchType.EAGER, mappedBy="team")
	@OneToOne( fetch = FetchType.EAGER)
    @JoinColumn(name = "team2", referencedColumnName="team", nullable = false,insertable= false,  updatable=false)
    private Flag flag2;

	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPlay_time() {
		return play_time;
	}

	public String getTeam1() {
		return team1;
	}

	public void setTeam1(String team1) {
		this.team1 = team1;
	}

	public String getTeam2() {
		return team2;
	}

	public void setTeam2(String team2) {
		this.team2 = team2;
	}

	public void setPlay_time(String play_time) {
		this.play_time = play_time;
	}

	public Set<Type> getTypes() {
		return types;
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




	public void setTypes(Set<Type> types) {
		this.types = types;
	}

}