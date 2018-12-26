class PdfController < ApplicationController
  def index
    # create a pdf from a string
    #pdf = WickedPdf.new.pdf_from_string('<h1>Hello There!</h1>')
    
    # create a pdf from a URL
    @pdf = WickedPdf.new.pdf_from_url('http://wiki.c2.com/?PairProgrammingPingPongPattern')

    # then save to a file
    save_path = Rails.root.join('public/pdffile','filename.pdf')
    File.open(save_path, 'wb') do |file|
    file << @pdf

    send_data @pdf, filename: 'filename.pdf', type: :pdf 
    end
  end
end
