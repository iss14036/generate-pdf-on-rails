# README

## A PDF generation plugin for Ruby on Rails

Wicked PDF uses the shell utility [wkhtmltopdf](http://wkhtmltopdf.org) to serve a PDF file to a user from HTML.  In other words, rather than dealing with a PDF generation DSL of some sort, you simply write an HTML view as you would normally, then let Wicked PDF take care of the hard stuff.


* Ruby version
`9.2.0.0`
* Database creation
No Database needed
* All The Dependencies
Add this to your Gemfile and run `bundle install`:
```ruby
gem 'wicked_pdf'
```



### How to implement the wicked PDF###
I have covered two ways to generate pdf files from HTML format. For the rest approaches that you can see from [this link][wicked_pdf]
[wicked_pdf]:https://github.com/mileszs/wicked_pdf
# First step create a pdf from a string
pdf = WickedPdf.new.pdf_from_string('<h1>Hello There!</h1>')

# Second step create a pdf from a URL
pdf = WickedPdf.new.pdf_from_url('https://github.com/mileszs/wicked_pdf')

# then save to a file
save_path = Rails.root.join('pdfs','filename.pdf')
File.open(save_path, 'wb') do |file|
  file << pdf
end

### This is how you can send the files to client
send_data @pdf, filename: 'filename.pdf', type: :pdf 
For many others you can check the [link][send_data]
[send_data]:https://api.rubyonrails.org/classes/ActionController/DataStreaming.html#method-i-send_file