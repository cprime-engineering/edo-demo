#include <pybind11/pybind11.h>
#include <smoke_test_message.h>

namespace py = pybind11;
constexpr auto byref = py::return_value_policy::reference_internal;

PYBIND11_MODULE(MyLib, m) {
    m.doc() = "optional module docstring";

    py::class_<MyClass>(m, "MyClass")
    .def(py::init<>())
    .def("get_message", &MyClass::get_message, byref)
    ;
}
