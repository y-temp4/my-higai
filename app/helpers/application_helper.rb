module ApplicationHelper

  def breadcrumb
    breadcrumb_list = ''

    if controller.controller_name == 'posts'
      if @post.category_id >=1 || @post.category_id <= 3
        breadcrumb_list  << "#{link_to 'トップ', root_path} > "
        breadcrumb_list  << "#{link_to @post.category.name, category_path(@post.category_id)} > "
        breadcrumb_list  << '現在のページ'
      end
    end

    if controller.controller_name == 'categories'
      if @category.id >=1
        breadcrumb_list  << "#{link_to 'トップ', root_path} > "
        breadcrumb_list  << "#{@category.name} >"
      end
    end


    breadcrumb_list.html_safe
  end
end