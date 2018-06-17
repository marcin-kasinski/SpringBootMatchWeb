package mk.db;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository("matchRepository")
public interface MatchRepository extends JpaRepository<Match, Integer> {

	List<Match> findByGame(int game_id);
	Match findById(int id);
}