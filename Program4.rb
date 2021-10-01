# Create a reminder function, which returns a reminder text from the message passed to it.
# Test Cases
# Constraints:
# Input	Expected Output	Code Output	 
# message = 'Remind me when I get home to check the mail'	Check the mail		
# message = 'I will call you back bye Hey remind me to call John back';	Call john back		
# message = 'Remind office party'	Office party		
# message = 'Hey AI can you remind me to buy groceries'	Buy groceries		
# message = "Set Remind Game Night at Joe's place"	Night at joe's place		
# message = 'Hi there remind me about the meeting with Raj'	The meeting with raj		
# message = 'Reminders send thank you card'	Send thank you card		
# message = 'Please remind me about the assignment'	The assignment		


def extract_reminder_text(message)
    reminder_words_regex = /reminder |remind |reminders /
    connection_words_regex = /me |about |to /
    message_after_reminder = message.downcase.split(reminder_words_regex)[1].strip
    return message_after_reminder.capitalize unless (message_after_reminder =~ connection_words_regex)
  
    message_after_reminder.split(connection_words_regex).last.capitalize
  end