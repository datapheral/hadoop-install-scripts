package com.datapheral.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;

import org.eclipse.jetty.websocket.WebSocket.Connection;

public class FileUtils {

	public static String executeCommand(String command) {

		StringBuffer output = new StringBuffer();

		Process p;
		try {
			p = Runtime.getRuntime().exec(command);
			p.waitFor();
			BufferedReader reader = new BufferedReader(new InputStreamReader(
					p.getInputStream()));
			String line = "";
			while ((line = reader.readLine()) != null) {
				//output.append(line + "\n");
				System.out.println(line);
			}
		} catch (IOException f) {
			f.printStackTrace();		
		} catch (Exception e) {
			e.printStackTrace();
		}

		return output.toString();

	}
	
	public static String executeCommand(String command, Connection _connection) {

		StringBuffer output = new StringBuffer();

		Process p;
		try {
			p = Runtime.getRuntime().exec(command);
			p.waitFor();
			BufferedReader reader = new BufferedReader(new InputStreamReader(
					p.getInputStream()));
			String line = "";
			while ((line = reader.readLine()) != null) {
				//output.append(line + "\n");
				System.out.println(line);
				_connection.sendMessage(line);
			}
		} catch (IOException f) {
			f.printStackTrace();		
		} catch (Exception e) {
			e.printStackTrace();
		}

		return output.toString();

	}

	public static String[] listDirectory() {
		File f = new File(".");
		String[] files = f.list();
		for (String file : files) {
			System.out.println(file);
		}
		return files;
	}

	public static void main(String... args) {
		//listDirectory();
		executeCommand("ping google.com");
		executeCommand("netstat -an");
	}
}
