class Payments

  include HTTParty

  base_uri "https://apih1.hml.stelo.com.br"
  format :json
  headers 'Content-Type' => 'application/json',
          'User-agent' => 'poc_stelo_ruby',
          'X-VTEX-API-AppKey' => 'ec5ec4a06301e0e342e45a4cbdc5ed35',
          'X-VTEX-API-AppToken' => '2c0f919fc0ed02cec1290e2f9fe107ff'

  def efetuar_compra(body_request)
    self.class.post('/ec/V2/subacquirer/payments/pvt/payments', :body => body_request.to_json)
  end

end
