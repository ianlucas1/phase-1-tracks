def sort(objects)
  #objects.sort
  #objects.sort{|a, b| a && b ? a <=> b : a ? 1 : -1}
  objects.sort_by {|obj| obj.to_s }

  # objects.sort_by {|obj| obj.nil? ? obj.to_s : obj }

  # objects.sort_by do |obj|
  #   if obj.nil?
  #     obj.to_s
  #   else
  #     obj
  #   end
  # end
end
