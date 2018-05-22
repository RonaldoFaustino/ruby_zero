
Before do
visit 'https://marktasks.herokuapp.com/api/reset/ohnirucse@yahoo.com.br?clean=full' 
end

After ('@logout') do
    find('a[href="/user_settings dropdown-toggle"]').click
    find('a[href="/logout"]').click
end