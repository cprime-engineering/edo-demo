#include <pybind11/pybind11.h>
#include <smoke_test_message.h>

namespace py = pybind11;

//module name must be same as generated .so file name
PYBIND11_MODULE(smoke_test_bdd, m) {

    m.doc() = "Python bindings for the messagelib library";

    py::class_<MessageClass>(m, "MessageClass")
    .def(py::init<>())
    .def("getMainMessage", &MessageClass::getMainMessage, py::call_guard<py::gil_scoped_release>())
    ;
}
