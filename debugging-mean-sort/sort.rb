def sort(objects)

  # objects.sort_by {|obj| obj.to_s }

  objects.sort_by {|obj| obj.nil? ? obj.to_s : obj.to_s }

end
