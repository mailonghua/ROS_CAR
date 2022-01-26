/****************************************************************************
** Meta object code from reading C++ file 'robomap.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/third_packages/Ros_Qt5_Gui_App/include/cyrobot_monitor/robomap.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'robomap.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_cyrobot_monitor__roboMap_t {
    QByteArrayData data[17];
    char stringdata0[210];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_cyrobot_monitor__roboMap_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_cyrobot_monitor__roboMap_t qt_meta_stringdata_cyrobot_monitor__roboMap = {
    {
QT_MOC_LITERAL(0, 0, 24), // "cyrobot_monitor::roboMap"
QT_MOC_LITERAL(1, 25, 9), // "cursorPos"
QT_MOC_LITERAL(2, 35, 0), // ""
QT_MOC_LITERAL(3, 36, 14), // "signalPub2DPos"
QT_MOC_LITERAL(4, 51, 15), // "algo::RobotPose"
QT_MOC_LITERAL(5, 67, 4), // "pose"
QT_MOC_LITERAL(6, 72, 15), // "signalPub2DGoal"
QT_MOC_LITERAL(7, 88, 9), // "paintMaps"
QT_MOC_LITERAL(8, 98, 3), // "map"
QT_MOC_LITERAL(9, 102, 12), // "paintRoboPos"
QT_MOC_LITERAL(10, 115, 3), // "pos"
QT_MOC_LITERAL(11, 119, 10), // "paintImage"
QT_MOC_LITERAL(12, 130, 16), // "paintPlannerPath"
QT_MOC_LITERAL(13, 147, 14), // "paintLaserScan"
QT_MOC_LITERAL(14, 162, 13), // "slot_set2DPos"
QT_MOC_LITERAL(15, 176, 14), // "slot_set2DGoal"
QT_MOC_LITERAL(16, 191, 18) // "slot_setMoveCamera"

    },
    "cyrobot_monitor::roboMap\0cursorPos\0\0"
    "signalPub2DPos\0algo::RobotPose\0pose\0"
    "signalPub2DGoal\0paintMaps\0map\0"
    "paintRoboPos\0pos\0paintImage\0"
    "paintPlannerPath\0paintLaserScan\0"
    "slot_set2DPos\0slot_set2DGoal\0"
    "slot_setMoveCamera"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_cyrobot_monitor__roboMap[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      11,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   69,    2, 0x06 /* Public */,
       3,    1,   72,    2, 0x06 /* Public */,
       6,    1,   75,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       7,    1,   78,    2, 0x0a /* Public */,
       9,    1,   81,    2, 0x0a /* Public */,
      11,    2,   84,    2, 0x0a /* Public */,
      12,    1,   89,    2, 0x0a /* Public */,
      13,    1,   92,    2, 0x0a /* Public */,
      14,    0,   95,    2, 0x0a /* Public */,
      15,    0,   96,    2, 0x0a /* Public */,
      16,    0,   97,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QPointF,    2,
    QMetaType::Void, 0x80000000 | 4,    5,
    QMetaType::Void, 0x80000000 | 4,    5,

 // slots: parameters
    QMetaType::Void, QMetaType::QImage,    8,
    QMetaType::Void, 0x80000000 | 4,   10,
    QMetaType::Void, QMetaType::Int, QMetaType::QImage,    2,    2,
    QMetaType::Void, QMetaType::QPolygonF,    2,
    QMetaType::Void, QMetaType::QPolygonF,    2,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void cyrobot_monitor::roboMap::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        roboMap *_t = static_cast<roboMap *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->cursorPos((*reinterpret_cast< QPointF(*)>(_a[1]))); break;
        case 1: _t->signalPub2DPos((*reinterpret_cast< algo::RobotPose(*)>(_a[1]))); break;
        case 2: _t->signalPub2DGoal((*reinterpret_cast< algo::RobotPose(*)>(_a[1]))); break;
        case 3: _t->paintMaps((*reinterpret_cast< QImage(*)>(_a[1]))); break;
        case 4: _t->paintRoboPos((*reinterpret_cast< algo::RobotPose(*)>(_a[1]))); break;
        case 5: _t->paintImage((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QImage(*)>(_a[2]))); break;
        case 6: _t->paintPlannerPath((*reinterpret_cast< QPolygonF(*)>(_a[1]))); break;
        case 7: _t->paintLaserScan((*reinterpret_cast< QPolygonF(*)>(_a[1]))); break;
        case 8: _t->slot_set2DPos(); break;
        case 9: _t->slot_set2DGoal(); break;
        case 10: _t->slot_setMoveCamera(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            typedef void (roboMap::*_t)(QPointF );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&roboMap::cursorPos)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (roboMap::*_t)(algo::RobotPose );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&roboMap::signalPub2DPos)) {
                *result = 1;
                return;
            }
        }
        {
            typedef void (roboMap::*_t)(algo::RobotPose );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&roboMap::signalPub2DGoal)) {
                *result = 2;
                return;
            }
        }
    }
}

const QMetaObject cyrobot_monitor::roboMap::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_cyrobot_monitor__roboMap.data,
      qt_meta_data_cyrobot_monitor__roboMap,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *cyrobot_monitor::roboMap::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *cyrobot_monitor::roboMap::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_cyrobot_monitor__roboMap.stringdata0))
        return static_cast<void*>(this);
    if (!strcmp(_clname, "QGraphicsItem"))
        return static_cast< QGraphicsItem*>(this);
    return QObject::qt_metacast(_clname);
}

int cyrobot_monitor::roboMap::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 11)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 11;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 11)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 11;
    }
    return _id;
}

// SIGNAL 0
void cyrobot_monitor::roboMap::cursorPos(QPointF _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void cyrobot_monitor::roboMap::signalPub2DPos(algo::RobotPose _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void cyrobot_monitor::roboMap::signalPub2DGoal(algo::RobotPose _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
