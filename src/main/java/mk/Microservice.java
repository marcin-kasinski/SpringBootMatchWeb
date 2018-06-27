package mk;

import java.util.ArrayList;
import java.util.Calendar;

import java.util.List;
import java.util.Set;
import java.util.concurrent.ThreadLocalRandom;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.actuate.metrics.CounterService;
//import org.springframework.boot.actuate.metrics.GaugeService;
import org.springframework.http.HttpHeaders;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


import mk.db.Flag;
import mk.db.FlagRepository;
import mk.db.Game;
import mk.db.GameRepository;
import mk.db.Match;
import mk.db.MatchRepository;
import mk.db.MatchService;
import mk.db.Type;
import mk.db.TypeRepository;
import mk.db.User;
import mk.db.UserService;


import mk.tools.Util;


//2.0.1
//import io.micrometer.core.instrument.Counter;
//import io.micrometer.core.instrument.Metrics;

//1.5.10
//import com.codahale.metrics.Counter;
//import com.codahale.metrics.Gauge;
//import com.codahale.metrics.MetricRegistry;
//import com.codahale.metrics.Timer;


@RestController
@RequestMapping("/api")
public class Microservice {

    @Autowired
    private UserService userService;
    @Autowired
    private MatchRepository matchRepository;
	
	
	@RequestMapping("/vote")
    public VoteReply voteGET(
    		@RequestParam(value="match_id") int match_id,
    		@RequestParam(value="score1") byte score1,
    		@RequestParam(value="score2") byte score2,
    		
    		Model model) {
    	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    	User user = userService.findUserByEmail(auth.getName());

    	System.out.println("user.getName() "+user.getName());
    	
//    	Match match = matchRepository.findById((long) match_id);
    	Match match = matchRepository.findById(match_id);

    	
    	 //   	if (Util.isMatchVoted(match, user)) return "redirect:matches";
    	    	if (Util.isMatchVoted(match, user)) return new VoteReply("ERROR","DUPLICATE");
    	
    	Type type = new Type();
    	type.setScore1(score1);
    	type.setScore2(score2);
    	type.setUser(user);

    	System.out.println("match_id "+match_id);
    	System.out.println("type score1 "+type.getScore1());
    	System.out.println("type score2 "+type.getScore2());
    	
    	match.getTypes().add(type);
    	
    	//matchRepository.save(match);
    	    	
    	System.out.println("type saved");
    	
    
    	
//    	return "redirect:matches";
    	return new VoteReply("OK","OK");
    }


}
