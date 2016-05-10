package com.softAngel.tools;

import java.security.MessageDigest;

public class MD5Crypter implements Crypter {

	public String encrypt(String clear) {
		
		if(clear==null)
			return(null);
		
		byte buf[]=clear.getBytes();
		try{
				MessageDigest md = MessageDigest.getInstance("MD5");
				byte md5_buf[]=md.digest(buf);
				String b64s=(new sun.misc.BASE64Encoder()).encode(md5_buf);
				return(b64s);
		}catch(Exception e)
		{
			return(null);
		}
	}
    
    public static String encryptHEX(String clear) {
        char[] Digit =
            {
                '0',
                '1',
                '2',
                '3',
                '4',
                '5',
                '6',
                '7',
                '8',
                '9',
                'A',
                'B',
                'C',
                'D',
                'E',
                'F' };
        char[] ob = new char[2];

        byte[] md5_buf;
        StringBuffer sb = new StringBuffer();

        if (clear == null)
            return (null);

        byte buf[] = clear.getBytes();
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md5_buf = md.digest(buf);
        } catch (Exception e) {
            return (null);
        }

        for (int i = 0; i < md5_buf.length; i++) {
            ob[0] = Digit[(md5_buf[i] >>> 4) & 0X0F];
            ob[1] = Digit[md5_buf[i] & 0X0F];
            sb.append(new String(ob));
        }

        return sb.toString();
    }


	public String decrypt(String encrypted) {
		return null;
	}

	public boolean validate(String clear, String encrypted) {
		
		if(clear==null||encrypted==null)
			return false;

		return(encrypted.equals(encrypt(clear)));
	}

	public boolean validateWithToken(String encrypted, String encryptedWithToken, String token) {
		return false;
	}

}
