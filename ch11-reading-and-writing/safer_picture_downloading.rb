#  Adapt the picture-downloading/file-renaming program to your computer by adding some safety features to make sure you never overwrite a file.
#  A few methods you might find useful are File.exist? 
# (pass it a filename, and it will return true or false) 
# and exit (it stands; this is good for spitting out an error message and then quitting).

Dir.chdir '/Users/faisalmahmood/Projects/learn_to_program/learn_to_program/ch11-reading-and-writing/images1'

pic_names = Dir['/Users/faisalmahmood/Projects/learn_to_program/learn_to_program/ch11-reading-and-writing/images2/*.jpg']

puts 'What would you like to call this batch?'
 
 batch_name = gets.chomp

 puts
 
 print "Downloading #{pic_names.length} files: "
 
 # This will be our counter. We'll start at 1 today,
 
 # though normally I like to count from 0.
 
 pic_number = 1
 
 pic_names.each do |name|
   print '.' # This is our "progress bar".
   new_name = if pic_number < 10
     "#{batch_name}0#{pic_number}.jpg"
   else
     "#{batch_name}#{pic_number}.jpg"
   end
   
   if !File.exist?(new_name)
   	File.rename(name, new_name)
   else
   	puts "#{new_name} already exists in destination folder. Exiting" 
   	exit
   end
 
   # Finally, we increment the counter.
   pic_number = pic_number + 1
 
   end
 
 puts # This is so we aren't on progress bar line.
 
 puts 'Done, cutie!' 