#include <glibmm.h>
#include <iostream>

int on_compare(const Glib::ValueBase& v1, const Glib::ValueBase& v2)
{
  const Glib::Value<int> intVal1 = static_cast< const Glib::Value<int>& >(v1);
  const Glib::Value<int> intVal2 = static_cast< const Glib::Value<int>& >(v2);

  int int1 = intVal1.get();
  int int2 = intVal2.get();

  if(int1 < int2)
    return -1;
  else if(int1 == int2)
    return 0;
  else
    return 1;
}

int main(int, char**)
{
  const int VALUES = 10;

  Glib::init();

  Glib::Value<int> value[VALUES];
  Glib::ValueArray array;

  for(int i = 0; i < VALUES; i++)
  {
    value[i].init(Glib::Value<int>::value_type());
    value[i].set(i + 1); //  (i + 1) ==> Set to natural counting numbers.
    array.prepend(value[i]);
  }

  std::cout << "Array members before sorting:" << std::endl;

  for(int i = 0; i < VALUES; i++)
  {
    Glib::ValueBase value;

    if(!array.get_nth(i, value))
    {
      std::cerr << "Error getting element " << i << " of value array." <<
        std::endl;
      break;
    }

    Glib::Value<int> int_val = static_cast< Glib::Value<int>& >(value);
    std::cout << int_val.get() << " ";
  }
  std::cout << std::endl; // End of line for list of array elements.

  // Sort array and remove last element:
  array.sort(sigc::ptr_fun(&on_compare)).remove(VALUES - 1);

  std::cout << "Array members after sorting without last element:" <<
    std::endl;

  for(int i = 0; i < VALUES - 1; i++)
  {
    Glib::ValueBase value;

    if(!array.get_nth(i, value))
    {
      std::cerr << "Error getting element " << i << " of value array." <<
        std::endl;
      break;
    }

    Glib::Value<int> int_val = static_cast< Glib::Value<int>& >(value);
    std::cout << int_val.get() << " ";
  }
  std::cout << std::endl; // End of line for list of array elements.

  return 0;
}
