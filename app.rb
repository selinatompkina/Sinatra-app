require "sinatra"
require "sinatra/reloader"
$coffees = []
get "/" do
  template 
end

def template
	"""
  <html>
    <body>
      <form action='/' method='get'>
        Coffee Type: <input name='what'>
        Price: <input name= 'cost'>
        Size: <input name= 'size'>
          <button type='submit'>Add Coffee</button>
      </form>
      #{ $coffees.inspect }
      #{ params.inspect }
    </body>
  </html>
  """
 end