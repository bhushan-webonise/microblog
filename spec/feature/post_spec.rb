require 'rails_helper'

feature 'create post' do
  given!(:post) {Post.create(title:'Avengers',body:'Iron man')}
  given!(:upd_post) {Post.update(title:'Avengers ',body:'Iron mannn....')}
  given!(:del_post) {Post.destroy(title:'Avengers')}
  given!(:show_post) {Post.show(title:'Avengers ',body:'Iron man')}

  scenario 'with valid input' do
    visit new_post_path  
    fill_in 'Title',with:post.title
    fill_in 'Body',with:post.body
    click_button 'Create Post'
    except(page).to have_content 'post created'
  end

  scenario 'update post' do
    visit edit_post_path 
    fill_in 'Title',with:upd_post.title
    fill_in 'Body',with:upd_post.body
    click_button 'Edit'
    except(page).to have_content 'post updated'
  end

  scenario 'delete post' do
    visit destroy_post_path 
    fill_in 'Title',with:del_post.title 
    click_button 'Destroy'
    except(page).to have_content 'post deleted'
  end

  scenario 'retrive post' do
    visit post_path 
    fill_in 'Title',with:show_post.title 
    fill_in 'Body',with:show_post.body 
    except(page).to have_content 'show post'
  end

end




