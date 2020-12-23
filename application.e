-- MIT License

-- Copyright (c) 2020 Jean-Jacques François Reibel

-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.

class
    APPLICATION
inherit
    ARGUMENTS_32
create
    make
feature
    subaru : CAR
    make
        do
            create subaru.make(4, 4, 4)
            subaru.printInfo
            --access to class variables outside of class in Eiffel is not possible
            --due to Certified Attachment Patterns (CAPs)
            print ("Adding wheel using object method. %N")
            subaru.addWheels(1)
            subaru.printInfo
            print ("Removing wheel using object method. %N")
            subaru.deleteWheels(1)
            subaru.printInfo
        end
end
