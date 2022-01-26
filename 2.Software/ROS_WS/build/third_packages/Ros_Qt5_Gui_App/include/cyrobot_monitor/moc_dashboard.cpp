/****************************************************************************
** Meta object code from reading C++ file 'dashboard.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/third_packages/Ros_Qt5_Gui_App/include/cyrobot_monitor/dashboard.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'dashboard.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_DashBoard_t {
    QByteArrayData data[13];
    char stringdata0[98];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_DashBoard_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_DashBoard_t qt_meta_stringdata_DashBoard = {
    {
QT_MOC_LITERAL(0, 0, 9), // "DashBoard"
QT_MOC_LITERAL(1, 10, 8), // "set_gear"
QT_MOC_LITERAL(2, 19, 0), // ""
QT_MOC_LITERAL(3, 20, 4), // "Gear"
QT_MOC_LITERAL(4, 25, 4), // "gear"
QT_MOC_LITERAL(5, 30, 7), // "set_rpm"
QT_MOC_LITERAL(6, 38, 3), // "rpm"
QT_MOC_LITERAL(7, 42, 9), // "set_speed"
QT_MOC_LITERAL(8, 52, 5), // "speed"
QT_MOC_LITERAL(9, 58, 15), // "set_temperature"
QT_MOC_LITERAL(10, 74, 11), // "temperature"
QT_MOC_LITERAL(11, 86, 7), // "set_oil"
QT_MOC_LITERAL(12, 94, 3) // "oil"

    },
    "DashBoard\0set_gear\0\0Gear\0gear\0set_rpm\0"
    "rpm\0set_speed\0speed\0set_temperature\0"
    "temperature\0set_oil\0oil"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_DashBoard[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   39,    2, 0x0a /* Public */,
       5,    1,   42,    2, 0x0a /* Public */,
       7,    1,   45,    2, 0x0a /* Public */,
       9,    1,   48,    2, 0x0a /* Public */,
      11,    1,   51,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void, QMetaType::Int,    6,
    QMetaType::Void, QMetaType::Int,    8,
    QMetaType::Void, QMetaType::Double,   10,
    QMetaType::Void, QMetaType::Int,   12,

       0        // eod
};

void DashBoard::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        DashBoard *_t = static_cast<DashBoard *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->set_gear((*reinterpret_cast< const Gear(*)>(_a[1]))); break;
        case 1: _t->set_rpm((*reinterpret_cast< const int(*)>(_a[1]))); break;
        case 2: _t->set_speed((*reinterpret_cast< const int(*)>(_a[1]))); break;
        case 3: _t->set_temperature((*reinterpret_cast< const double(*)>(_a[1]))); break;
        case 4: _t->set_oil((*reinterpret_cast< const int(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject DashBoard::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_DashBoard.data,
      qt_meta_data_DashBoard,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *DashBoard::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *DashBoard::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_DashBoard.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int DashBoard::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
