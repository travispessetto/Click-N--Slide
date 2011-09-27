module ApplicationHelper
  def link_to_user_menu
    #user menu in pink bar
    html = ""
    html += admin_functions
    html += link_to("Books",books_path)
    if current_user.nil?
      html += " |"+link_to(" Sign In",new_user_session_path)
      html += " | | " + link_to("Sign Up",new_user_path)
    end
    html += " |"+link_to(" Sign Out",destroy_user_session_path,:method=>:delete) if !current_user.nil?
    
    return html.html_safe
  end
end

def admin_functions
  #For Admin Items use Dyanmic_Menu Gem
    html = ""
    if defined?(@actionMenuItems)
     @actionMenuItems.each_with_index do |menuitem|
       html+= menuitem + ' | '
     end
    end#end if
    return html.html_safe
end