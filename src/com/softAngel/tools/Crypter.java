package com.softAngel.tools;

public interface Crypter {

	String encrypt(String clear);
	String decrypt(String encrypted);
	boolean validate(String clear,String encrypted);
	boolean validateWithToken(String encrypted,String encryptedWithToken,String token);
	
}
