def caesar_cipher(string,number = 0)
    code = []
    output =""
    num = number%26

    string.split("").each do 
        |letter|
        code.push(letter.ord)
    end
    
    code.each do |order|
        if (65<=order&&order<=90) || (97 <= order && order<= 122)
            if (65<=(order+num)&&(order+num)<=90 && (order<=90 &&order>= 65)) || (97<=(order+num)&&(order+num)<=122 &&(order>=97&&order<=122))
                output += (order+num).ord.chr
            elsif 65>(order+num) && (order <=90 && order >= 65)
                output += (91-(65-(order+number))).ord.chr
            elsif 90<(order+num)&&(order<=90&&order>=65)
                output += (65+(order+num)-91).ord.chr            
            elsif 97>(order+num) && (order>=97 && order<=122)
                output += (123-(97-(order+num))).ord.chr
            elsif 122<(order+num)&&(order>=97&&order<=122)
                output += (97+((order+num)-123)).ord.chr
            end
        else output += order.ord.chr
        end
    end
    return output
end

p caesar_cipher('Hello, world!',29)