require 'test_helper'

class AlbumsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Albums.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Albums.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Albums.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to albums_url(assigns(:albums))
  end
  
  def test_edit
    get :edit, :id => Albums.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Albums.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Albums.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Albums.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Albums.first
    assert_redirected_to albums_url(assigns(:albums))
  end
  
  def test_destroy
    albums = Albums.first
    delete :destroy, :id => albums
    assert_redirected_to albums_url
    assert !Albums.exists?(albums.id)
  end
end
