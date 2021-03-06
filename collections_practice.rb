def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort do |a, b|
        if a == b
            0
        elsif a < b
            1
        elsif a > b
            -1
        end
    end
end

def sort_array_char_count(array)
    array.sort do |a, b|
        if a.length == b.length
            0
        elsif a.length < b.length
            -1
        elsif a.length > b.length
            1
        end
    end
end

def swap_elements(array)
    array[1], array[2] = array[2], array[1]
    array
end

def swap_elements_from_to(array, index, destination_index)
    array[index], array[destination_index] = array[destination_index], array[index]
    array
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    kesha_style = []
    array.each do |element|
        element[2] = "$"
        kesha_style << element
    end
    kesha_style
end

def find_a(array)
    starts_with_a = []
    array.each do |element|
        if element.start_with? "a"
            starts_with_a << element
        end
    end
    starts_with_a
end

def sum_array(array)
    array.inject(:+)
end

def add_s(array)
    array.each_with_index.collect do |element, index|
        if index == 1
            element
        else
            element + 's'
        end
    end
end