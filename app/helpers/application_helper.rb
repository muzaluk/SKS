# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
	def coderay(text)
		text.gsub(/\<code( lang="(.+?)")?\>(.+?)\<\/code\>/m) do
			content_tag("notextile", CodeRay.scan($3, $2).div(:css => :class))
		end
	end

   def activeLink(name, options = {}, html_options = nil)
      if controller_name == "main_page" 
         if controller.action_name == options[:action]
	    html_options = ({:class => 'active'})
         end
      else 
         if controller_name == options[:controller]
            html_options = ({:class => 'active'})
         end
      end
      link_to name, options, html_options
   end
   
end
