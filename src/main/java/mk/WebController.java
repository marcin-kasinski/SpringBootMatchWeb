package mk;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.UUID;
import java.util.stream.Collectors;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;




import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Profile;
import org.springframework.core.env.Environment;


//import org.springframework.kafka.core.KafkaTemplate;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import mk.db.Flag;
import mk.db.FlagRepository;
import mk.db.Match;
import mk.db.MatchRepository;
import mk.db.MatchService;
import mk.db.Type;
import mk.db.TypeRepository;
import mk.db.User;
import mk.db.UserService;


import mk.tools.Util;

@Controller
class WebController {
		
	@Autowired
	Environment env;
	
    @Autowired
    private RestTemplate restTemplate;

    @Bean
    public RestTemplate getRestTemplate() {
        return new RestTemplate();
    }

//@Autowired
//private SampleSink gateway;

  
//	@Autowired	
//	private Source source;
    
    @Autowired
    private MatchRepository matchRepository;

    @Autowired
    private TypeRepository typeRepository;
 
    @Autowired
    private FlagRepository flagRepository;
    
    @Autowired
    private UserService userService;
    

	
//    @Autowired	
//    private RabbitTemplate rabbitTemplate;
	

//    @Autowired
//    private KafkaTemplate<String, String> kafkaTemplate;
    

    
	 private static Logger log = LoggerFactory.getLogger(WebController.class);

@PostMapping("/vote")
    public String votePOST(
    		@RequestParam(value="match_id") int match_id,
    		@RequestParam(value="score1") byte score1,
    		@RequestParam(value="score2") byte score2,
    		
    		Model model) {
    	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    	User user = userService.findUserByEmail(auth.getName());

//    	Match match = matchRepository.findById((long) match_id);
    	Match match = matchRepository.findById(match_id);

    	
    	if (Util.isMatchVoted(match, user)) return "redirect:matches";
    	
    	System.out.println("match "+match.getCountry1());
    	
    	Type type = new Type();
    	type.setScore1(score1);
    	type.setScore2(score2);
    	type.setUser(user);
    	
    	match.getTypes().add(type);
    	
    	matchRepository.save(match);
    	
//    	typeRepository.save(type);
    	
    	System.out.println("type saved");
    	
    
    	
    	return "redirect:matches";
    }

    
    @GetMapping("/matches")
    public String matchesVIEW(@RequestParam(required = false, defaultValue = "1", value="game") int game,Model model) {
    	

		//System.out.println("game id: "+game);

    	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    	User user = userService.findUserByEmail(auth.getName());
    	
    	Map points = new HashMap<String, Byte>();
    	
//    	List<Match> matches= matchRepository.findAll();
    	
    	List<Flag> flags= flagRepository.findAll();

    	for (Iterator<Flag> iter = flags.iterator(); iter.hasNext(); ) {
    		Flag flag = iter.next();
    		System.out.println("Flaga "+flag.getCountry()+" / "+ flag.getUrl());
    	}

    	List<Match> matches= matchRepository.findByGame(game);

    	System.out.println("Types");
    	
    	for (Iterator<Match> iter = matches.iterator(); iter.hasNext(); ) {
    		Match match = iter.next();
    		System.out.println("mecz "+match.getCountry1()+" - "+match.getCountry2());
    	    // 1 - can call methods of element
    	    // 2 - can use iter.remove() to remove the current element from the list
    		
    		//process types
    		
        	for (Iterator<Type> itertype = match.getTypes().iterator(); itertype.hasNext(); ) {
        		Type type = itertype.next();
        		
        		
//        		System.out.println(type.getUser().getLastName()+" "+type.getUser().getName());
        		
        		
        		byte actualpoints=0;
        		
        		if (points.get(type.getUser().getLastName()+" "+type.getUser().getName())!=null )
        			actualpoints= (byte) points.get(type.getUser().getLastName()+" "+type.getUser().getName());
        		
        		


        		
        		
        		byte point= Util.getPoints(match,type);
        		
        		actualpoints= (byte) (actualpoints+point);
        		
        		points.put(type.getUser().getLastName()+" "+type.getUser().getName(), actualpoints);
        		
        	}
    		
    		//process types
    		
    		
    	    // ...
    	}
    	

	//iterate points:
    	
        System.out.println("Points...");
        


    	/* Display content using Iterator*/
        Set set = points.entrySet();

		
		
        Iterator iterator = set.iterator();
        while(iterator.hasNext()) {
           Map.Entry mentry = (Map.Entry)iterator.next();
           System.out.print("key is: "+ mentry.getKey() + " & Value is: ");
           System.out.println(mentry.getValue());
        }
    	
    	
    	//iterate points:
        	
    	
       	model.addAttribute("matches",matches);
       	model.addAttribute("points",points);
       	model.addAttribute("user",user);

    	return "matches";
    }

    @GetMapping("/")
    public String welcomeVIEW(Model model) {

    	System.out.println("END");
        return "welcome";
    }

/*
	@RequestMapping("/")
	public String greeting(@RequestParam(value="name", required=false, defaultValue="World") String name, Model model) {
		model.addAttribute("name", name);
		return "greeting";
	}
*/
/*	
	// inject via application.properties
		@Value("${welcome.message:test}")
		private String message = "Hello World";


	@RequestMapping("/x")
	public String welcome(Map<String, Object> model) {
		model.put("message", this.message);
		return "greeting";
	}
*/
}