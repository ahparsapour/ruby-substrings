module StringToolBox
    def StringToolBox.substrings(text, dictionary)
        string = String(text).downcase

        dictionary = Array(dictionary)

        resault = dictionary.reduce(Hash.new) do |all, now|
            tmp_string = string.dup

            next unless now != ' '

            tmp = all[now]
            tmp = 0 if tmp == nil
            counter = Integer(tmp)
            while tmp_string.include?(now)
                tmp_string.sub! now, ''
                counter += 1
            end
            all[now] = counter unless counter == 0
            all
        end

        return resault

    end
end