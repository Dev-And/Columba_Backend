class SessionsController < DeviseTokenAuth::SessionsController

  def render_create_success
    token = @token
    render json: {
        #data: resource_data(resource_json: @resource.token_validation_response),
        email: @resource.email,
        phone: @resource.phone,
        name:  @resource.name,
        uid:   @resource.uid,
        access_token: @token,
        client: @client_id
    }

  end
end