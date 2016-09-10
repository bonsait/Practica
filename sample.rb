require 'rest_client'

RestClient.get 'http://example.com/resource', {:params => {:id => 50, 'foo' => 'bar'}}

RestClient.get 'http://example.com/resource'

xml = '<xml><foo>bar</foo><bar>foo</bar></xml>'

RestClient.post 'http://example.com/resource', xml , {:content_type => :xml}

RestClient.put 'http://example.com/resource', xml , {:content_type => :xml}

RestClient.delete 'http://example.com/resource'