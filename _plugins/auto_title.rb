# _plugins/auto_title.rb

module Jekyll
  class AutoTitle < Generator
    priority :low

    def generate(site)
      puts "AutoTitle plugin is running..."

      # Use the correct collection based on your setup
      target_collection = 'pages'  # Replace 'pages' with your collection name if different

      # When you define a collection (like pages), Jekyll removes those files from site.pages and 
      # places them in site.collections['pages'].docs instead.
      # Iterate over the collection items instead of site.pages
      puts "site pages:"
      site.pages.each do |page|
        puts "Path: #{page.path}"
      end

      puts "site.collections:"
      site.collections[target_collection].docs.each do |doc|
        puts "Path: #{doc.path}"
      end

      site.collections[target_collection].docs.each do |doc|

        # Degug
        # puts "Path: #{doc.path}"
        # puts "Title: #{doc.data['title']}"
        # puts "Content (first 500 chars): #{doc.content[0..500]}"  # Print the first 500 characters of content
        # puts "First heading: #{doc.content.match(/^\s*#\s+(.*)/)}"
        # puts "-" * 40

        # Extract the first heading from the content
        first_heading = doc.content.match(/^\s*#\s+(.*)/)

        if first_heading
          # Set the first heading as the title
          doc.data['title'] = first_heading[1].strip
          puts "*** Setting title for #{doc.path}: #{first_heading[1].strip}"
        else
          # Output a message if no heading is found
          puts "*** No heading found in #{doc.path}"

          # Optionally set a default title or skip setting the title
          doc.data['title'] = "Default Title"  # Change "Default Title" to whatever you prefer
        end
      end
    end
  end
end


# module Jekyll
#   class AutoTitle < Generator
#     priority :low

#     def generate(site)
#       puts "AutoTitle plugin is running..."

#       # Adjust this path based on your actual folder name
#       target_folder = 'pages'  # or 'pages', depending on your setup

#       # Debug output to list all pages in the target folder
#       puts "Listing all pages in #{target_folder} folder:"

#       # Iterate over pages and process them
#       site.pages.each do |page|
       
#         # Process only Markdown files in the target folder
#         if page.path.start_with?(target_folder + '/') && page.path =~ /\.(md)$/
#         # if page.path =~ /\.(md)$/

#           # Extract the first heading from the content
#           first_heading = page.content.match(/^\s*#\s+(.*)/)
#           # puts "Path: #{page.path}"
#           # puts "first_heading: #{first_heading}"

#           if first_heading
#             # Set the first heading as the title
#             puts "*** Setting title for #{page.path}: #{first_heading[1].strip}"
#             page.data['title'] = first_heading[1].strip
#           else
#             # Output a message if no heading is found
#             puts "*** No heading found in #{page.path}"

#             # Optionally set a default title or skip setting the title
#             page.data['title'] = "Default Title"  # Change "Default Title" to whatever you prefer
#           end
#         end
#       end
#     end
#   end
# end


# module Jekyll
#   class AutoTitle < Generator
#     priority :low

#     def generate(site)
#       puts "AutoTitle plugin is running..."

#       # Debug output to list all pages in _pages folder
#       puts "Listing all pages in _pages folder:"
#       site.pages.each do |page|
#         # Check if the file is in the _pages folder and is a Markdown file
#         if page.path.start_with?('pages/') && page.path =~ /\.(md)$/
#           puts "Path: #{page.path}"
#           puts "Title: #{page.data['title']}"
#           puts "Content (first 500 chars): #{page.content[0..500]}"  # Print the first 500 characters of content
#           puts "First heading: #{page.content.match(/^\s*#\s+(.*)/)}"
#           puts "-" * 40
#         end
#       end

#       # Iterate over pages and process them
#       site.pages.each do |page|
#         # Process only Markdown files in the _pages folder
#         if page.path.start_with?('pages/') && page.path =~ /\.(md)$/
#           # Extract the first heading from the content
#           first_heading = page.content.match(/^\s*#\s+(.*)/)

#           if first_heading
#             # Set the first heading as the title
#             page.data['title'] = first_heading[1].strip
#             puts "*** Setting title for #{page.path}: #{first_heading[1].strip}"
#           else
#             # Output a message if no heading is found
#             puts "*** No heading found in #{page.path}"

#             # Optionally set a default title or skip setting the title
#             page.data['title'] = "Default Title"  # Change "Default Title" to whatever you prefer
#           end
#         end
#       end
#     end
#   end
# end


# module Jekyll
#   class AutoTitle < Generator
#     priority :low

#     def generate(site)
#       puts "AutoTitle plugin is running..."

#       # Debug output to list all pages
#       puts "Listing all pages:"
#       site.pages.each do |page|
#         next unless page.path =~ /\.(md)$/

#         puts "Path: #{page.path}"
#         puts "Title: #{page.data['title']}"
#         puts "Content: #{page.content[0..100]}"  # Print the first 100 characters of content for brevity
#         puts "First heading: #{page.content.match(/^\s*#\s+(.*)/)}"
#         puts "-" * 40
#       end

#       # Iterate over pages and process them
#       site.pages.each do |page|
#         next unless page.path =~ /\.(md)$/

#         # Skip if title is already set or if content is empty
#         #next if page.data['title'] || page.content.strip.empty?

#         # Extract the first heading from the content
#         first_heading = page.content.match(/^\s*#\s+(.*)/)

#         if first_heading
#           # Set the first heading as the title
#           page.data['title'] = first_heading[1].strip

#           # Output the first heading to the console for debugging
#           puts "*** Setting title for #{page.path}: #{first_heading[1].strip}"
#         else
#           # Output a message if no heading is found
#           puts "*** No heading found in #{page.path}"

#           page.data['title'] = "Gjermund"
#         end
#       end
#     end
#   end
# end


# module Jekyll
#   class AutoTitle < Generator
#     priority :low

#     def generate(site)
#       puts "AutoTitle plugin is running..."

#       # Iterate over pages and process them
#       site.pages.each do |page|
#         # Skip if title is already set or if content is empty
#         next if page.data['title'] || page.content.strip.empty?

#         # Extract the first heading from the content
#         first_heading = page.content.match(/^\s*#\s+(.*)/)

#         if first_heading
#           # Set the first heading as the title
#           page.data['title'] = first_heading[1].strip

#           # Output the first heading to the console for debugging
#           puts "*** Setting title for #{page.path}: #{first_heading[1].strip}"
#         else
#           # Output a message if no heading is found
#           puts "*** No heading found in #{page.path}"
#         end
#       end
#     end
#   end
# end


# module Jekyll
#   class AutoTitle < Generator
#     priority :low

#     def generate(site)
#       puts "AutoTitle plugin is running..."
      
#       site.pages.each do |page|
#         # Skip if title is already set or if content is empty
#         next if page.data['title'] || page.content.strip.empty?

#         # Extract the first heading from the content
#         first_heading = page.content.match(/^\s*#\s+(.*)/)
        
#         if first_heading
#           # Set the first heading as the title
#           page.data['title'] = first_heading[1].strip

#           # Output the first heading to the console for debugging
#           puts "*** Setting title for #{page.path}: #{first_heading[1].strip}"
#         else
#           # Output a message if no heading is found
#           puts "*** No heading found in #{page.path}"
#         end
#       end
#     end
#   end
# end

  
  
  
# module Jekyll
#     class AutoTitle < Generator
#       priority :low
  
#       def generate(site)
#         site.pages.each do |page|
#           # Check if the page has no title in the front matter
#           if page.data['title'].nil?
#             # Extract the first heading from the content
#             first_heading = page.content.match(/^#\s+(.*)/)
#             if first_heading
#               # Set the first heading as the title
#               page.data['title'] = first_heading[1]
#             end
#           end
#         end
#       end
#     end
#   end
  