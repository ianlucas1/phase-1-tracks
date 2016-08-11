def destroy_message(message)
  # /\A.*:/ =~ message
  if message.include?(":")
    alert_end = /:.*/ =~ message
    alert = message[0... (alert_end + 1)]
  else
    message
  end
end

def destroy_message!(message)
  if message.include?(":")
    alert_end = /:.*/ =~ message
    alert = message[0... (alert_end + 1)]
    message.replace "#{alert}"
  else
     message
  end
end

destroy_message!("Important: Learn how to learn.")

# #Refactored to one method
# def destroy_message(message, option={})
#   if message.include?(":")
#     alert_end = /:.*/ =~ message
#     alert = message[0... (alert_end + 1)]
#     if options[:replace]
#       message.replace "#{alert}"
#     end
#   else
#     message
#   end
# end
