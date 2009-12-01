require 'test_helper'

class ArtistsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Artist.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Artist.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Artist.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to artist_url(assigns(:artist))
  end
  
  def test_edit
    get :edit, :id => Artist.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Artist.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Artist.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Artist.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Artist.first
    assert_redirected_to artist_url(assigns(:artist))
  end
  
  def test_destroy
    artist = Artist.first
    delete :destroy, :id => artist
    assert_redirected_to artists_url
    assert !Artist.exists?(artist.id)
  end
end
