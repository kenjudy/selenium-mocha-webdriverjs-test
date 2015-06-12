client = require('./client').client
expect = require('chai').expect

describe 'Test Daily Beast Mobile Article', ->

  before (done) ->
    client.init().url 'http://www.thedailybeast.com/articles/2015/06/11/u-s-has-no-idea-how-long-it-will-keep-an-isis-bride-locked-up.mobile.html', done

  describe 'Check rtl container', ->
    it 'should see the correct title', (done) ->
      client.elements '.rtl-container', (err, rtl) ->
        expect(rtl).to.exist
        done()
   
  after (done) ->
    client.end()
    done()
