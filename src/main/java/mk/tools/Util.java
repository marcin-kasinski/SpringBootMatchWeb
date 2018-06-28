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
	
	public static byte getPoints(Match match, Type type) {
		byte ret=0;

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
