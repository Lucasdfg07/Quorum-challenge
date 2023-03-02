## Quorum Code Challenge
Quorum Code Challenge is a technical challenge made in Ruby to generate data based on legislators info and the projects they supported.

## Technology 
Here are the technologies used in this project.

* Ruby

## Services Used
* Github

## Ruby Gems

* CSV

## Getting started

* Dependency
  - Ruby

* To bundle install.
>    $ gem install csv

* To run the code.
>    $ ruby challenge.rb

## Where are the files generated?
  - They are in `./public/answers` folder.

## Code Challenge Questions
  -  Discuss your solution’s time complexity. What tradeoffs did you make?
    - A: Made this application thinking in a better architecture to read, understand and use this in the future. So I built a CSV reader to read and write csv data. And also separated all the classes in models to have a better understanding and logic in the code.
  
  -  How would you change your solution to account for future columns that might be requested, such as “Bill Voted On Date” or “Co-Sponsors”?
    - A: I built a generic method in `csv_reader.rb` that set dynamically the columns and you only have to change the columns in the model. So If you want to generate more csv files to other models, or want to add more columns, It's only call `save_csv_of` method setting the property `file_name`, `file_title` (First line of csv) and `columns`, updating it in the property model.
  
  - How would you change your solution if instead of receiving CSVs of data, you were given a list of legislators or bills that you should generate a CSV for?
    - I would use the ruby File reader method (that also could be used in this solution), and specify the file extension in the method. Also would change jumping the first line in `CSV.read` method because of the csv title.
  
  - How long did you spend working on the assignment?
    - Between 2 and 3 hours.

## Links
  - Repository: https://github.com/Lucasdfg07/Quorum-challenge/
    - In case of sensitive bugs like security vulnerabilities, please contact
      Lucassiqueiraferandes07@gmail.com directly instead of using issue tracker. We value your effort
      to improve the security and privacy of this project!

  ## Versioning

  1.0.0.0


  ## Authors

  * **Lucas Siqueira Fernandes** 

  Please follow github and join us!
  Thanks to visiting me and good coding!
