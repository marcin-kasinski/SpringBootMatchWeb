package mk.tools;

import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.thymeleaf.util.StringUtils;

import mk.MatchStats;
import mk.db.Match;
import mk.db.Role;
import mk.db.Type;
import mk.db.User;

public class Util {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//System.out.println("isCurrentDateTimeEalier "+isCurrentDateTimeEalier("2018-06-16 16:00:00"));
//		System.out.println("getPoints "+getPoints((byte)5, (byte)0, (byte)2,(byte)0));
			
	}

	public static boolean isMatchVoted(Match match, User user) {
		boolean ret=false;
		
		
		for (Iterator<Type> itertype = match.getTypes().iterator(); itertype.hasNext(); ) {
    		Type type = itertype.next();
    		
    		
    		if (type.getUser().getId()== user.getId()) {ret= true; break;}
		}	
    	
		
		return ret;
		
		
		
	}
	
	public static boolean isAdmin(User user) {
		boolean ret=false;
		
		
		for (Iterator<Role> itertype = user.getRoles().iterator(); itertype.hasNext(); ) {
    		Role role= itertype.next();
    		
    		
    		if (role.getRole().equals("ADMIN")) {ret= true; break;}
		}	
    	
		
		return ret;
		
		
		
	}
	
	
	public static byte getScoreToSee(Match match, Type type, String logged_user, byte witch_score) {
		
		byte ret=-1;
		
		if (Util.isCurrentDateTimeEalier(match) && logged_user!=type.getUser().getEmail()) return ret;
		
		if (witch_score==1) ret = type.getScore1();
		else if (witch_score==2) ret = type.getScore2();
		
		return ret;

	}
	
	public static String getPenaltieswinnerToSee(Match match, Type type, String logged_user) {
		
		String ret=null;
		
		if (Util.isCurrentDateTimeEalier(match) && logged_user!=type.getUser().getEmail()) return ret;
		
		else ret = type.getPenaltieswinner();
		
		return ret;
		
	}
	
	public static byte getPoints(Match match, Type type) {
		byte ret=0;

		
//		if (Util.isCurrentDateTimeEalier(match) && logged_user!=type.getUser().getEmail())
		
//		System.out.println("getPoints logged_user "+logged_user);

		
		if (!match.isClosed()) return 0;

		byte score1= match.getScore1();
		byte score2=match.getScore2();
		byte score1_bid=type.getScore1();
		byte score2_bid=type.getScore2();
		

		//System.out.println("getPoints "+score1+" / "+score2 +" / "+score1_bid+" / "+score2_bid);
		
		if (
				(score1>score2 && score1_bid>score2_bid ) ||
				(score1<score2 && score1_bid<score2_bid ) ||
				(score1==score2 && score1_bid==score2_bid )
				
				
				) ret =1;
		
		
		if (score1==score1_bid && score2==score2_bid) ret=3;
		
		
		if (match.isPenalties() && match.getPenaltieswinner()!=null && match.getPenaltieswinner()== type.getPenaltieswinner()) ret++;
		
		return ret;
	}

	
	
	public static int getStatsIndex(List stats, String key)
	{

		for (int i = 0; i < stats.size(); i++) {

			MatchStats matchStats = (MatchStats) stats.get(i);
				if (matchStats.getKey().equals(key)) return i;
			
			
		}//for 
		return -1;

	}

	
	public static MatchStats getCurrenStats(List stats, String key)
	{

		
		for (int i = 0; i < stats.size(); i++) {

			MatchStats matchStats = (MatchStats) stats.get(i);
				if (matchStats.getKey().equals(key)) return matchStats;
			
			
		}//for 
		
		
		return null;
	}

	
	public static void processExtraStats(Map scoredDayHash, Match match, Type type)
	{
		
		String key=match.getPlay_time().toString().substring(0, 10)+"_"+type.getUser().getEmail();
		
//		System.out.println("processExtraStats key "+key);
		
		Byte minpointsinday=(Byte) scoredDayHash.get(key);
		
		// jelsi juz wiemy, ze by³o s³abo
		if (minpointsinday!=null && minpointsinday.byteValue()==0) return;

		
		byte point= Util.getPoints(match,type);

		
		if (minpointsinday==null ) scoredDayHash.put(key, new Byte(point));

		if (minpointsinday!=null && point <minpointsinday.byteValue()) scoredDayHash.put(key, point);
		
		
		
		
		
		
	}	

	public static void processStats(List stats, Match match, Type type)
	{

//		String key=type.getUser().getLastName()+" "+type.getUser().getName();
		String key=type.getUser().getEmail();
			
		MatchStats matchStats=getCurrenStats(stats, key);
		
		if (matchStats==null)matchStats = new MatchStats(key,type.getUser().getEmail(),type.getUser().getName() ,type.getUser().getLastName(), 0, 0, 0, 0,0);
				
		byte point= Util.getPoints(match,type);
				
		matchStats.setPoints(matchStats.getPoints()+point);
		
		if (point==3 && match.getPenaltieswinner()==null)matchStats.setPerfectscoredcount(matchStats.getPerfectscoredcount()+1);
		if (point==4 )matchStats.setPerfectscoredcount(matchStats.getPerfectscoredcount()+1);
		if (point==1 )matchStats.setScoredcount(matchStats.getScoredcount()+1);
		if (point==0 )
			{
			matchStats.setNoscoredcount(matchStats.getNoscoredcount()+1);
			matchStats.setPointsWithMinuses(matchStats.getPointsWithMinuses()-1);			
			}

		matchStats.setPointsWithMinuses(matchStats.getPointsWithMinuses()+point);

		int index= Util.getStatsIndex(stats, key);

		if (index==-1) stats.add(matchStats);
		else stats.set(index, matchStats);
		
//		stats.put(type.getUser().getLastName()+" "+type.getUser().getName(), actualpoints);
		
	}
	
	public static boolean isCurrentDateTimeEalier(Match match) {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		String datetime =match.getPlay_time().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm"));
	    String current =sdf.format(Calendar.getInstance().getTime());
				
//		System.out.println("current     :"+current +" in datetime :"+datetime+" "+current.compareTo(datetime));
				
		if (current.compareTo(datetime)<0) return true ;
		else return false;


	}
	

	public static <K, V> Map<K, V> sortByValue(Map<K, V> map) {
	    List<Map.Entry<K, V>> list = new LinkedList<>(map.entrySet());
	    Collections.sort(list, new Comparator<Object>() {
	        @SuppressWarnings("unchecked")
	        public int compare(Object o1, Object o2) {

	        	int ret=((Comparable<V>) ((Map.Entry<K, V>) (o1)).getValue()).compareTo(((Map.Entry<K, V>) (o2)).getValue());
	        	ret = ret - 2*ret;
	            return ret;
	        }
	    });

	    Map<K, V> result = new LinkedHashMap<>();
	    for (Iterator<Map.Entry<K, V>> it = list.iterator(); it.hasNext();) {
	        Map.Entry<K, V> entry = (Map.Entry<K, V>) it.next();
	        result.put(entry.getKey(), entry.getValue());
	    }

	    return result;
	}
	
}
