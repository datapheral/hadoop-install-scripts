package dp.utils;

public class HTMLHelper {

	public static String htlmStringDecode(String input) {
		if(input == null) return null;
		StringBuilder message = new StringBuilder();
		for(int i=0;i<input.length();i++) {
			char in = input.charAt(i);
			switch (in) {
				default : {
					message.append(in);
					break;
				}				
				case '<':
					message.append("&lt;");
					break;
				case '>':
					message.append("&gt;");
					break;
				case '&':
					message.append("&amp;");
					break;
				case '"':
					message.append("&quot;");
					break;			
			}
		}
		return message.toString();
	}
	public static void main(String... args) {
		String ret = htlmStringDecode("ffsafsf<sfasf>safasf<as");
		System.out.println(ret);
		ret = htlmStringDecode(null);
		System.out.println(ret);
		
	};
}