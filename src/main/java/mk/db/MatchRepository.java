package mk.db;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository("matchRepository")
public interface MatchRepository extends JpaRepository<Match, Integer> {

	List<Match> findByGameOrderByIdDesc(int game_id);
//	List<Match> findByGameOrderByPlay__Time(int game_id);
	Match findById(int id);
}