module PracticeBlogsHelper

  def new_or_edit
    if action_name == 'new' || action_name == 'confirm' 
     confirm_practice_blogs_path
    elsif action_name == 'edit'
     practice_blog_path
    end
  end
  
end
