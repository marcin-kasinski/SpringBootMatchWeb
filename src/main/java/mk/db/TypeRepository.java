package mk.db;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("typeRepository")
public interface TypeRepository extends JpaRepository<Type, Long> {

//	List<Match> findByGame(int game_id);
}