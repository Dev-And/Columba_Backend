class SessionsController < DeviseTokenAuth::SessionsController



  def render_create_success
    render json: {

        #data: resource_data(resource_json: @resource.token_validation_response),
        id:   @resource.id,
        email: @resource.email,
        phone: @resource.phone,
        name:  @resource.name,
        uid:   @resource.uid,
        image: @resource.image_data,
        access_token: @token,
        client: @client_id
    }

  end
end