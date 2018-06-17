package mk.tools;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Iterator;

import org.thymeleaf.util.StringUtils;

import mk.db.Match;
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
		
		return ret;
	}
	
	public static boolean isCurrentDateTimeEalier(String datetime) {

		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    String current =sdf.format(Calendar.getInstance().getTime());
		
		
//		System.out.println("current     :"+current);
//		System.out.println("in datetime :"+datetime);
				
		if (current.compareTo(datetime)<0) return true ;
		else return false;


	}
	
	

	

}
