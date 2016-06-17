require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  let(:product) {FactoryGirl.create(:product)}

  describe "#new" do
    it "renders the new template" do
      get :new
      expect(response).to render_template(:new)
    end
    it "instantiates a new campaign instance variable" do
      get :new
      expect(assigns(:product)).to be_a_new(Product)
    end
  end

  describe "#create" do
    context "With valid attributes" do
      def valid_request
        post :create, product: FactoryGirl.attributes_for(:product)
      end
      it "saves a record" do
        count_before = Product.count
        valid_request
        count_after = Product.count
        expect(count_after).to eq(count_before + 1)
      end
      it "redirects to the show page of product" do
        valid_request
        expect(response).to redirect_to(product_path(Product.last))
      end
    end

    describe "#edit" do
      before do
        get :edit, id: product.id
      end

      it "renders the edit template" do
        expect(response).to render_template(:edit)
      end

      it "set an instance variable to the product with the id passed" do
        expect(assigns(:product)).to eq(product)
      end
    end

    describe "#update" do
      context 'Valid request' do
        def valid_request
          patch :update, id: product.id, product: {title: "new valid title"}
        end
        it "updates the record" do
          valid_request
          expect(product.reload.title).to eq("new valid title")
        end
        it "redirects to show page" do
          valid_request
          expect(response).to redirect_to(product_path(product))
        end

      end

      context "Invalid request" do
        def invalid_request
          patch :update, id: product.id, product: {title: ""}
        end

        it "doesn't save updates" do
          invalid_request
          expect(product.reload.title).not_to eq("")
        end

        it "renders the edit template" do
          invalid_request
          expect(response).to redirect_to(edit_product_path(product))
        end
      end
    end
  end

  describe "#destroy" do
    it "deletes the record" do
      product
      count_before = Product.count
      delete :destroy, id: product.id
      count_after = Product.count
      expect(count_before).to eq(count_after + 1)
    end
    it "render list" do
      product
      delete :destroy, id: product.id
      expect(response).to redirect_to(products_path)
    end
  end

  describe "#show" do
    before do
      @product = FactoryGirl.create(:product)
      get :show, id: @product.id
    end
    it "renders the show template" do
      expect(response).to render_template(:show)
    end
    it "set an instance" do
      expect(assigns(:product)).to eq(@product)
    end
  end

  describe "#index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template(:index)
    end
    it "sets 'products' instance variables to all products in the DB" do
      product_1 = FactoryGirl.create(:product)
      product_2 = FactoryGirl.create(:product)
      get :index
      expect(assigns(:products)).to eq([product_1, product_2])
    end
  end

end
