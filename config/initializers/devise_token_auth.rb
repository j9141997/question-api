DeviseTokenAuth.setup do |config|
  # リクエストごとにトークンを更新するか
  config.change_headers_on_each_request = false

  # トークン有効期限
  config.token_lifespan = 1.month

  config.headers_names = {:'access-token' => 'access-token',
                         :'client' => 'client',
                         :'expiry' => 'expiry',
                         :'uid' => 'uid',
                         :'token-type' => 'token-type' }
end
