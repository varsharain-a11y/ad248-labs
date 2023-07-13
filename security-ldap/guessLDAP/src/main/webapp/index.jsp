<%@ page import="java.util.ArrayList"%>
<%

   response.setHeader("Cache-Control", "no-cache");
   
   String answer     = (String)    session.getAttribute("answer");
   ArrayList guesses = (ArrayList<String>) session.getAttribute("guesses");
   String lastGuess = request.getParameter("guess");
   boolean start = (lastGuess == null);
   boolean correct = false;
   String display = "";
   int count = 0;
   System.out.println("Version 2");
   
   if (start) {
   
      System.out.println("Starting a new GuessANumber game");
      
      int  random = new java.util.Random(System.currentTimeMillis()).nextInt(100) + 1;
      answer = new Integer(random).toString();
      System.out.println("Answer is " + answer);
      session.setAttribute("answer", answer);
      session.setAttribute("guesses", new ArrayList<String>());
      
      session.setAttribute("count", new Integer(0));
   }
   else {      
      
      if (lastGuess.trim().length() == 0) {
         lastGuess = "(blank)";
      }
      
      count = ((Integer) session.getAttribute("count")).intValue() + 1;
   
      System.out.println("Guess " + count + "; User guessed " + lastGuess);
      
      if (answer.equals(lastGuess.trim())) {
         correct = true;
         start = true;
         
         int  random = new java.util.Random(System.currentTimeMillis()).nextInt(100) + 1;
         answer = new Integer(random).toString();
         System.out.println("Answer is " + answer);
         session.setAttribute("answer", answer);
         session.setAttribute("guesses", new ArrayList<String>());
         
         session.setAttribute("count", new Integer(0));
      }
      else {
         guesses.add(lastGuess);
         if (guesses.size() > 3)
            guesses.remove(0);
            
         for (int i = 0; i < guesses.size(); i++) {
            if (i > 0)
               display += ", ";
            display += guesses.get(i);
         }
         
         // OPTIONAL FIXME make things work correctly with replication-trigger SET 
         
     
         session.setAttribute("count", new Integer(count));
      }
   }
%>

<html>

<head>
	<title> Guess A Number </title>
</head>

<body bgcolor="white">
<center>
<hr>
	<font size=5> Please Guess A Number Between 1 and 100: </font>

<br>
	<form method=GET action=index.jsp>
		<br>
		<%
		   if (correct) {
		%>
		<font size=4><font color="red">Correct!</font>&nbsp(took <%= count %> guesses)<br>Start another game?</font>
		<%
		   }
		%>
		<br>
		<br>
		<font size=4>Guess: <input type=text name="guess" size=5></font>
		<br>
		<br>
		<input type=submit name=action value="Submit">
		<%
		   if (start == false) {
		%>
		<br>
		<br>
		<font size=4>Three Most Recent Guesses: <%= display %><br>
		Guess count: <%= count %>
		</font>		
		<%
		   }
		%>

	</form>	
	
<hr>
</center>
</body>
</html>
