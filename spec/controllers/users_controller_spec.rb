require 'rails_helper'

describe UsersController, type: :controller do
  let(:user) {User.create!(email: 'Jonathan12@netzero.com', password: '0987123456')}
  let(:user_2) {User.create!(email: 'Newguy2000@gerogia.com', password: 'newguynewday')}
  describe 'Get #show' do
    context 'when a user is logged in' do
      before do
        sign_in user
      end
        it 'loads correct details' do
        get :show, params: {id: user.id}
        expect(assigns(:user)).to eq user
        end
        it 'cant access other users show page' do
          get :show, params: {id: user_2.id}
        end
      end
    context 'when a user is not logged in' do
      it 'redirects to login' do
        get :show, params: { id: user.id }
        expect(response).to redirect_to(new_user_session_path)
      end
    end


  end

end
