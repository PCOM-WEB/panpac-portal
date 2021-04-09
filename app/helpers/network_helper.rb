module NetworkHelper
  def get_request(path, params, headers = {})
    Typhoeus.get(
      API_BASE_URL + path,
      params: params,
      headers: { "Content-Type": "application/json", APIKEY: API_KEY_VALUE }.merge(headers)
    )
  end

  def post_request(path, body, headers = {})
    Typhoeus.post(
      API_BASE_URL + path,
      body: body.to_json,
      headers: { "Content-Type": "application/json", APIKEY: API_KEY_VALUE }.merge(headers)
    )
  end
end