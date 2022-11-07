#include <pybind11/pybind11.h>
#include <smoke_test_message.h>

namespace py = pybind11;
constexpr auto byref = py::return_value_policy::reference_internal;

PYBIND11_MODULE(MessageLib, m) {
    m.doc() = "optional module docstring";

    py::class_<MessageClass>(m, "MessageClass")
    .def(py::init<>())
    .def("getMainMessage", &MessageClass::getMainMessage, py::call_guard<py::gil_scoped_release>())
    ;
}
