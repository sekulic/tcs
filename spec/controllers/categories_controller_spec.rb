require 'rails_helper'

RSpec.describe CategoriesController, :type => :controller do
  before(:each) do
    sign_in FactoryGirl.create(:user, admin: true)
  end
  # This should return the minimal set of attributes required to create a valid
  # Category. As you add validations to Category, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {FactoryGirl.build(:category).attributes.symbolize_keys}

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET index" do
    it "exposes categories" do
      category = Category.create! valid_attributes
      get :index
      controller.categories.should eq([category])
    end  
  end

  describe "GET show" do
    it "assigns the requested category as category" do
      category = Category.create! valid_attributes
      get :show, {:id => category.to_param}
      controller.category.should eq(category)
    end
  end

  describe "GET new" do
    it "assigns a new category as category" do
      get :new, {}
      controller.category.should be_a_new(Category)
    end
  end

  describe "GET edit" do
    it "assigns the requested category as category" do
      category = Category.create! valid_attributes
      get :edit, {:id => category.to_param}
      controller.category.should eq(category)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Category" do
        expect {
          post :create, {:category => valid_attributes}
        }.to change(Category, :count).by(1)
      end

      it "assigns a newly created category as category" do
        post :create, {:category => valid_attributes}
        controller.category.should be_a(Category)
        controller.category.should be_persisted
      end

      it "redirects to the created category" do
        post :create, {:category => valid_attributes}
        expect(response).to redirect_to(Category.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved category as @category" do
        post :create, {:category => invalid_attributes}
        controller.category.should be_a_new(Category)
      end

      it "re-renders the 'new' template" do
        post :create, {:category => invalid_attributes}
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {FactoryGirl.build(:category, name: 'Newname').attributes.symbolize_keys}

      it "updates the requested category" do
        category = Category.create! valid_attributes
        put :update, {:id => category.to_param, :category => new_attributes}
        category.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested category as @category" do
        category = Category.create! valid_attributes
        put :update, {:id => category.to_param, :category => valid_attributes}
        controller.category.should eq(category)
      end

      it "redirects to the category" do
        category = Category.create! valid_attributes
        put :update, {:id => category.to_param, :category => valid_attributes}
        expect(response).to redirect_to(category)
      end
    end

    describe "with invalid params" do
      it "assigns the category as @category" do
        category = Category.create! valid_attributes
        put :update, {:id => category.to_param, :category => invalid_attributes}
        controller.category.should eq(category)
      end

      it "re-renders the 'edit' template" do
        category = Category.create! valid_attributes
        put :update, {:id => category.to_param, :category => invalid_attributes}
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested category" do
      category = Category.create! valid_attributes
      expect {
        delete :destroy, {:id => category.to_param}
      }.to change(Category, :count).by(-1)
    end

    it "redirects to the categories list" do
      category = Category.create! valid_attributes
      delete :destroy, {:id => category.to_param}
      expect(response).to redirect_to(categories_url)
    end
  end

end
