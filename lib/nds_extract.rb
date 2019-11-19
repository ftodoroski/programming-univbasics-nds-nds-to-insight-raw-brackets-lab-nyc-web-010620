$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'


def directors_totals(nds)
    result = {}

    i = 0
    while i < nds.length
        director_movies = nds[i][:movies]
        director_name = nds[i][:name]
        gross_total = 0

        j = 0
        while j < director_movies.length
            worldwide_gross = director_movies[j][:worldwide_gross]
            gross_total += worldwide_gross

            j += 1
        end

        result[director_name] = gross_total
        i += 1
    end

    result
end
