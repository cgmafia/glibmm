dnl
dnl _ENUM(cpp_type, c_type, value_suffix, `element_list', `no_gtype', `conv_to_int',
dnl          $1       $2         $3             $4           $5            $6
dnl in_class, `optional_refdoc_comment', 'deprecated')
dnl   $7                $8                    $9
dnl
m4_define(`_ENUM',`dnl
_PUSH()

m4_define(`__ENUM_CPPNAME__',`$1')
m4_define(`__ENUM_CNAME__',`$2')
m4_define(`__ENUM_CLASS_CPPNAME__',m4_ifelse($7,0,,`__CPPNAME__::')`__ENUM_CPPNAME__')
m4_define(`__ENUM_INDENT1__',m4_ifelse($7,0,,`  '))
m4_define(`__ENUM_INDENT2__',__ENUM_INDENT1__`'m4_ifelse($6,,,`  '))
m4_define(`__ENUM_VALUE_BASE__',`Glib::Value_$3<__NAMESPACE__::__ENUM_CLASS_CPPNAME__>')

_POP()
dnl
dnl // Define a new Doxygen group if this is the first enum in the file.
dnl
m4_ifdef(`__DOCGROUP_'__MODULE_CANONICAL__`_ENUMS__',,`dnl else
m4_define(`__DOCGROUP_'__MODULE_CANONICAL__`_ENUMS__')dnl
/** @addtogroup '__MODULE_CANONICAL__`Enums __MODULE_CANONICAL__ Enums and Flags */

__ENUM_INDENT1__')`'dnl endif
dnl
dnl
ifelse(`$9',,,`_DEPRECATE_IFDEF_START'`'__ENUM_INDENT1__)`'dnl The expansion of _DEPRECATE_IFDEF_START ends with a newline
ifelse($6,,,`/** Wrapper for enum __ENUM_CPPNAME__.
__ENUM_INDENT1__ * __ENUM_CPPNAME__ enumerators are scoped and can be implicitly converted to int.
__ENUM_INDENT1__ * The scope is __NAMESPACE__::__ENUM_CLASS_CPPNAME__::
__ENUM_INDENT1__ *
__ENUM_INDENT1__ * @ingroup __MODULE_CANONICAL__`'Enums
__ENUM_INDENT1__ */
__ENUM_INDENT1__`'class __ENUM_CPPNAME__`'_Wrapper final
__ENUM_INDENT1__{
__ENUM_INDENT1__`'public:
__ENUM_INDENT2__')`'dnl endif conv_to_int
/** $8
__ENUM_INDENT2__ *
__ENUM_INDENT2__ * @ingroup __MODULE_CANONICAL__`'Enums
m4_ifelse($3,`Flags',`dnl
__ENUM_INDENT2__ * @par Bitwise operators:
__ENUM_INDENT2__ * <tt>__ENUM_CLASS_CPPNAME__ operator|(__ENUM_CLASS_CPPNAME__, __ENUM_CLASS_CPPNAME__)</tt><br>
__ENUM_INDENT2__ * <tt>__ENUM_CLASS_CPPNAME__ operator&(__ENUM_CLASS_CPPNAME__, __ENUM_CLASS_CPPNAME__)</tt><br>
__ENUM_INDENT2__ * <tt>__ENUM_CLASS_CPPNAME__ operator^(__ENUM_CLASS_CPPNAME__, __ENUM_CLASS_CPPNAME__)</tt><br>
__ENUM_INDENT2__ * <tt>__ENUM_CLASS_CPPNAME__ operator~(__ENUM_CLASS_CPPNAME__)</tt><br>
__ENUM_INDENT2__ * <tt>__ENUM_CLASS_CPPNAME__& operator|=(__ENUM_CLASS_CPPNAME__&, __ENUM_CLASS_CPPNAME__)</tt><br>
__ENUM_INDENT2__ * <tt>__ENUM_CLASS_CPPNAME__& operator&=(__ENUM_CLASS_CPPNAME__&, __ENUM_CLASS_CPPNAME__)</tt><br>
__ENUM_INDENT2__ * <tt>__ENUM_CLASS_CPPNAME__& operator^=(__ENUM_CLASS_CPPNAME__&, __ENUM_CLASS_CPPNAME__)</tt><br>
')dnl endif
__ENUM_INDENT2__ */
__ENUM_INDENT2__`'enum ifelse($6,,`class ',)`'__ENUM_CPPNAME__
__ENUM_INDENT2__{
$4
__ENUM_INDENT2__};
ifelse($6,,,`__ENUM_INDENT2__`'#ifndef DOXYGEN_SHOULD_SKIP_THIS
__ENUM_INDENT2__`'__ENUM_CPPNAME__`'_Wrapper`'() = delete;
__ENUM_INDENT2__`'#endif
__ENUM_INDENT1__};
__ENUM_INDENT1__/** __ENUM_CPPNAME__ enumerators are scoped by the wrapper class
__ENUM_INDENT1__ * and can be implicitly converted to int.
__ENUM_INDENT1__ *
__ENUM_INDENT1__ * @ingroup __MODULE_CANONICAL__`'Enums
__ENUM_INDENT1__ */
__ENUM_INDENT1__`'using __ENUM_CPPNAME__ = __ENUM_CPPNAME__`'_Wrapper::__ENUM_CPPNAME__;
')`'dnl endif conv_to_int
m4_ifelse($3,`Flags',`dnl
m4_ifelse($7,0,,`dnl  in_class
_PUSH(SECTION_HEADER3)
__NAMESPACE_BEGIN__
ifelse(`$9',,,`_DEPRECATE_IFDEF_START')`'dnl
')dnl endif

/** @ingroup __MODULE_CANONICAL__`'Enums */
inline __ENUM_CLASS_CPPNAME__ operator|(__ENUM_CLASS_CPPNAME__ lhs, __ENUM_CLASS_CPPNAME__ rhs)
  { return static_cast<__ENUM_CLASS_CPPNAME__>(static_cast<unsigned>(lhs) | static_cast<unsigned>(rhs)); }

/** @ingroup __MODULE_CANONICAL__`'Enums */
inline __ENUM_CLASS_CPPNAME__ operator&(__ENUM_CLASS_CPPNAME__ lhs, __ENUM_CLASS_CPPNAME__ rhs)
  { return static_cast<__ENUM_CLASS_CPPNAME__>(static_cast<unsigned>(lhs) & static_cast<unsigned>(rhs)); }

/** @ingroup __MODULE_CANONICAL__`'Enums */
inline __ENUM_CLASS_CPPNAME__ operator^(__ENUM_CLASS_CPPNAME__ lhs, __ENUM_CLASS_CPPNAME__ rhs)
  { return static_cast<__ENUM_CLASS_CPPNAME__>(static_cast<unsigned>(lhs) ^ static_cast<unsigned>(rhs)); }

/** @ingroup __MODULE_CANONICAL__`'Enums */
inline __ENUM_CLASS_CPPNAME__ operator~(__ENUM_CLASS_CPPNAME__ flags)
  { return static_cast<__ENUM_CLASS_CPPNAME__>(~static_cast<unsigned>(flags)); }

/** @ingroup __MODULE_CANONICAL__`'Enums */
inline __ENUM_CLASS_CPPNAME__& operator|=(__ENUM_CLASS_CPPNAME__& lhs, __ENUM_CLASS_CPPNAME__ rhs)
  { return (lhs = static_cast<__ENUM_CLASS_CPPNAME__>(static_cast<unsigned>(lhs) | static_cast<unsigned>(rhs))); }

/** @ingroup __MODULE_CANONICAL__`'Enums */
inline __ENUM_CLASS_CPPNAME__& operator&=(__ENUM_CLASS_CPPNAME__& lhs, __ENUM_CLASS_CPPNAME__ rhs)
  { return (lhs = static_cast<__ENUM_CLASS_CPPNAME__>(static_cast<unsigned>(lhs) & static_cast<unsigned>(rhs))); }

/** @ingroup __MODULE_CANONICAL__`'Enums */
inline __ENUM_CLASS_CPPNAME__& operator^=(__ENUM_CLASS_CPPNAME__& lhs, __ENUM_CLASS_CPPNAME__ rhs)
  { return (lhs = static_cast<__ENUM_CLASS_CPPNAME__>(static_cast<unsigned>(lhs) ^ static_cast<unsigned>(rhs))); }
m4_ifelse($7,0,,`dnl  in_class
ifelse(`$9',,,`_DEPRECATE_IFDEF_END')`'dnl
__NAMESPACE_END__
_POP()
')dnl endif
')dnl endif Flags

ifelse(`$9',,,`_DEPRECATE_IFDEF_END')`'dnl The expansion of _DEPRECATE_IFDEF_END ends with a newline

m4_ifelse($5,`NO_GTYPE',,`dnl else
m4_ifelse($7,0,`dnl  not in_class
__NAMESPACE_END__
',`dnl else
_PUSH(SECTION_HEADER3)
')dnl endif

#ifndef DOXYGEN_SHOULD_SKIP_THIS
namespace Glib
{

ifelse(`$9',,,`_DEPRECATE_IFDEF_START')`'dnl
template <>
class Value<__NAMESPACE__::__ENUM_CLASS_CPPNAME__> : public __ENUM_VALUE_BASE__
{
public:
  static GType value_type() G_GNUC_CONST;
};
ifelse(`$9',,,`_DEPRECATE_IFDEF_END')`'dnl

} // namespace Glib
#endif /* DOXYGEN_SHOULD_SKIP_THIS */

m4_ifelse($7,0,`dnl  not in_class
__NAMESPACE_BEGIN__
',`dnl else
_POP()
')dnl endif
_PUSH(SECTION_SRC_GENERATED)
ifelse(`$9',,,`_DEPRECATE_IFDEF_START')`'dnl
// static
GType Glib::Value<__NAMESPACE__::__ENUM_CLASS_CPPNAME__>::value_type()
{
  return _GET_TYPE_FUNC(__ENUM_CNAME__);
}
ifelse(`$9',,,`_DEPRECATE_IFDEF_END')`'dnl

_POP()
')dnl endif !NO_GTYPE
')dnl enddef _ENUM
