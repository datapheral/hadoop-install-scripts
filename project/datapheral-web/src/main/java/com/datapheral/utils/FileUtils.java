package com.datapheral.utils;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;

import org.eclipse.jetty.websocket.WebSocket.Connection;

public class FileUtils {

	public static String executeCommand(boolean isProcessBuilder, String command) throws IOException, InterruptedException {

        System.out.println("Calling jar");
        Process p = Runtime.getRuntime().exec("c:\\Program Files\\Java\\jdk1.7.0_51\\bin\\java -jar C:\\process\\sampple.jar one two");
        //Process p = Runtime.getRuntime().exec("c:\\Program Files\\Java\\jdk1.7.0_51\\bin\\java -version");
        BufferedInputStream bis = new BufferedInputStream(p.getInputStream());
        synchronized (p) {
            p.waitFor();
        }
        System.out.println(p.exitValue());
        int b=0;
        while((b=bis.read()) >0){

            System.out.print((char)b);    
        }        
        System.out.println("");
        System.out.println("Called jar");
        
		return null;
	}
	
	public static String executeCommand2(boolean isProcessBuilder, String command) throws IOException {

//	    ProcessBuilder dirProcess = new ProcessBuilder("cmd");
//	    File commands = new File("C:/process/commands.bat");
//	    File dirOut = new File("C:/process/out.txt");
//	    File dirErr = new File("C:/process/err.txt");
	 
		ProcessBuilder dirProcess = new ProcessBuilder("java", "-Xmx1024m", "-Xms1024m",
			    "-DTOOLS_DIR=/home/IM/work/dist", "-Daoi=whole", 
			    "-jar", "/home/IM/work/dist/idt_tools.jar");
		
	    File commands = new File("C:/process/commands.bat");
	    File dirOut = new File("C:/process/out.txt");
	    File dirErr = new File("C:/process/err.txt");
	 
	    dirProcess.start();
	    
		return null;
	}

	public static String executeCommand1(boolean isProcessBuilder, String command) {

		try {
//			ProcessBuilder broker = new ProcessBuilder("javac.exe",
//					"test.java", "src\\Broker\\");
			
			//ProcessBuilder broker = new ProcessBuilder("cmd","-c","dir");			
			ProcessBuilder broker = new ProcessBuilder("cmd","-c","dir");
			Process runBroker = broker.start();

			Reader reader = new InputStreamReader(runBroker.getInputStream());
			int ch;
			while ((ch = reader.read()) != -1)
				System.out.print((char) ch);
			reader.close();

			runBroker.waitFor();

			System.out.println("Program complete");

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
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
				// output.append(line + "\n");
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
				// output.append(line + "\n");
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

	public static void main(String... args) throws IOException {
		try {
			executeCommand(true, null);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
