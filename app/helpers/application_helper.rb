module ApplicationHelper

	def link_to_add_fields(name, f , association)
		new_object = f.object.class.reflect_on_association(association).klass.new
		fields = f.fields_for(association) do |builder|
    		render("shared/" + association.to_s.singularize + "_form", :f => builder)
    	end
    	link_to "Add", "#", data: "#{fields}", class: "add-exercise"
	end

	def link_to_test(thing)
		return thing.to_s
	end
end
