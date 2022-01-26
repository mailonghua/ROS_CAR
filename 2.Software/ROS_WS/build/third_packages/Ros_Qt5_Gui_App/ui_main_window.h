/********************************************************************************
** Form generated from reading UI file 'main_window.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAIN_WINDOW_H
#define UI_MAIN_WINDOW_H

#include <QtCore/QLocale>
#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QFrame>
#include <QtWidgets/QGraphicsView>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QListView>
#include <QtWidgets/QListWidget>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QProgressBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSlider>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QStackedWidget>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindowDesign
{
public:
    QAction *action_Quit;
    QAction *action_Preferences;
    QAction *actionAbout;
    QAction *actionAbout_Qt;
    QAction *action_2;
    QWidget *centralwidget;
    QVBoxLayout *verticalLayout_10;
    QVBoxLayout *verticalLayout_6;
    QHBoxLayout *horizontalLayout_4;
    QStackedWidget *stackedWidget_left;
    QWidget *page_6;
    QVBoxLayout *verticalLayout_8;
    QVBoxLayout *verticalLayout_2;
    QHBoxLayout *horizontalLayout_6;
    QSpacerItem *horizontalSpacer_8;
    QLabel *label_speed;
    QSpacerItem *horizontalSpacer_7;
    QHBoxLayout *horizontalLayout_8;
    QSpacerItem *horizontalSpacer_9;
    QLabel *label_4;
    QSpacerItem *horizontalSpacer_10;
    QFrame *frame_2;
    QLabel *label_carback;
    QWidget *page_7;
    QVBoxLayout *verticalLayout_7;
    QVBoxLayout *verticalLayout_3;
    QHBoxLayout *horizontalLayout_2;
    QPushButton *pushButton_u;
    QPushButton *pushButton_i;
    QPushButton *pushButton_o;
    QHBoxLayout *horizontalLayout_18;
    QPushButton *pushButton_j;
    QCheckBox *checkBox_use_all;
    QPushButton *pushButton_l;
    QHBoxLayout *horizontalLayout_19;
    QPushButton *pushButton_m;
    QPushButton *pushButton_back;
    QPushButton *pushButton_backr;
    QHBoxLayout *horizontalLayout_20;
    QLabel *label_14;
    QSlider *horizontalSlider_raw;
    QLabel *label_raw;
    QHBoxLayout *horizontalLayout_21;
    QLabel *label_9;
    QSlider *horizontalSlider_linear;
    QLabel *label_linear;
    QHBoxLayout *horizontalLayout_23;
    QSpacerItem *horizontalSpacer_5;
    QWidget *JoyStick_widget;
    QHBoxLayout *horizontalLayout_22;
    QSpacerItem *horizontalSpacer_6;
    QSpacerItem *verticalSpacer_4;
    QPushButton *pushButton;
    QVBoxLayout *verticalLayout_5;
    QWidget *widget_3;
    QHBoxLayout *horizontalLayout_5;
    QHBoxLayout *horizontalLayout_3;
    QLabel *label_time;
    QLabel *label_19;
    QLabel *label_18;
    QPushButton *pushButton_status;
    QSpacerItem *horizontalSpacer;
    QLabel *label_10;
    QLabel *label_6;
    QProgressBar *progressBar;
    QLabel *label_11;
    QLabel *label_power;
    QPushButton *min_btn;
    QPushButton *max_btn;
    QPushButton *close_btn;
    QStackedWidget *stackedWidget_main;
    QWidget *page_3;
    QVBoxLayout *verticalLayout_12;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout;
    QLabel *label_turnLeft;
    QWidget *widget_dashboard;
    QLabel *label_turnRight;
    QFrame *frame;
    QHBoxLayout *horizontalLayout_7;
    QGridLayout *gridLayout_3;
    QLabel *label_video1;
    QLabel *label_video0;
    QWidget *widget_chart;
    QWidget *page_4;
    QVBoxLayout *verticalLayout_14;
    QVBoxLayout *verticalLayout_13;
    QHBoxLayout *horizontalLayout_11;
    QPushButton *set_pos_btn;
    QPushButton *set_goal_btn;
    QPushButton *set_mutil_goal_btn;
    QPushButton *return_btn;
    QSpacerItem *horizontalSpacer_2;
    QLabel *label_2;
    QComboBox *comboBox_mapType;
    QVBoxLayout *verticalLayout_build_map;
    QGraphicsView *mapViz;
    QWidget *widget_rviz;
    QVBoxLayout *verticalLayout_16;
    QVBoxLayout *verticalLayout_rviz;
    QHBoxLayout *horizontalLayout_12;
    QLabel *label;
    QLabel *label_pos_map;
    QLabel *label_5;
    QLabel *label_pos_scene;
    QSpacerItem *horizontalSpacer_3;
    QWidget *page_5;
    QVBoxLayout *verticalLayout_9;
    QVBoxLayout *verticalLayout_4;
    QHBoxLayout *horizontalLayout_9;
    QVBoxLayout *verticalLayout_11;
    QLabel *label_video2;
    QVBoxLayout *verticalLayout_19;
    QLabel *label_video3;
    QVBoxLayout *verticalLayout_20;
    QHBoxLayout *horizontalLayout_15;
    QLabel *label_29;
    QPushButton *refreash_topic_btn;
    QSpacerItem *horizontalSpacer_4;
    QListWidget *topic_listWidget;
    QListView *view_logging;
    QWidget *widget_2;
    QHBoxLayout *horizontalLayout_24;
    QHBoxLayout *horizontalLayout_menu;
    QPushButton *btn_status;
    QPushButton *btn_control;
    QPushButton *btn_dash;
    QPushButton *btn_map;
    QPushButton *btn_other;
    QPushButton *settings_btn;

    void setupUi(QMainWindow *MainWindowDesign)
    {
        if (MainWindowDesign->objectName().isEmpty())
            MainWindowDesign->setObjectName(QStringLiteral("MainWindowDesign"));
        MainWindowDesign->resize(1266, 656);
        MainWindowDesign->setAcceptDrops(false);
        QIcon icon;
        icon.addFile(QStringLiteral(":/images/robot.png"), QSize(), QIcon::Normal, QIcon::Off);
        MainWindowDesign->setWindowIcon(icon);
        MainWindowDesign->setStyleSheet(QLatin1String("background-color:rgb(255, 255, 255);\n"
"padding:0;\n"
""));
        MainWindowDesign->setLocale(QLocale(QLocale::English, QLocale::Australia));
        action_Quit = new QAction(MainWindowDesign);
        action_Quit->setObjectName(QStringLiteral("action_Quit"));
        action_Quit->setShortcutContext(Qt::ApplicationShortcut);
        action_Preferences = new QAction(MainWindowDesign);
        action_Preferences->setObjectName(QStringLiteral("action_Preferences"));
        actionAbout = new QAction(MainWindowDesign);
        actionAbout->setObjectName(QStringLiteral("actionAbout"));
        actionAbout_Qt = new QAction(MainWindowDesign);
        actionAbout_Qt->setObjectName(QStringLiteral("actionAbout_Qt"));
        action_2 = new QAction(MainWindowDesign);
        action_2->setObjectName(QStringLiteral("action_2"));
        centralwidget = new QWidget(MainWindowDesign);
        centralwidget->setObjectName(QStringLiteral("centralwidget"));
        centralwidget->setStyleSheet(QStringLiteral("margin:0"));
        verticalLayout_10 = new QVBoxLayout(centralwidget);
        verticalLayout_10->setSpacing(0);
        verticalLayout_10->setObjectName(QStringLiteral("verticalLayout_10"));
        verticalLayout_10->setContentsMargins(0, 0, 0, 0);
        verticalLayout_6 = new QVBoxLayout();
        verticalLayout_6->setSpacing(0);
        verticalLayout_6->setObjectName(QStringLiteral("verticalLayout_6"));
        horizontalLayout_4 = new QHBoxLayout();
        horizontalLayout_4->setObjectName(QStringLiteral("horizontalLayout_4"));
        stackedWidget_left = new QStackedWidget(centralwidget);
        stackedWidget_left->setObjectName(QStringLiteral("stackedWidget_left"));
        stackedWidget_left->setMinimumSize(QSize(400, 0));
        stackedWidget_left->setMaximumSize(QSize(600, 16777215));
        stackedWidget_left->setStyleSheet(QLatin1String("QStackedWidget{\n"
"border-right: 10px solid qlineargradient(x0:0, x1:1,stop:  0 white, stop: 1 #ececef);\n"
"background-color: transparent;\n"
"}\n"
""));
        page_6 = new QWidget();
        page_6->setObjectName(QStringLiteral("page_6"));
        verticalLayout_8 = new QVBoxLayout(page_6);
        verticalLayout_8->setObjectName(QStringLiteral("verticalLayout_8"));
        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        horizontalLayout_6 = new QHBoxLayout();
        horizontalLayout_6->setObjectName(QStringLiteral("horizontalLayout_6"));
        horizontalSpacer_8 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_6->addItem(horizontalSpacer_8);

        label_speed = new QLabel(page_6);
        label_speed->setObjectName(QStringLiteral("label_speed"));
        label_speed->setMinimumSize(QSize(100, 100));
        label_speed->setMaximumSize(QSize(150, 150));
        QFont font;
        font.setFamily(QStringLiteral("TakaoPGothic"));
        font.setPointSize(66);
        label_speed->setFont(font);
        label_speed->setStyleSheet(QLatin1String("QLabel{qproperty-alignment:AlignHCenter;\n"
"}"));

        horizontalLayout_6->addWidget(label_speed);

        horizontalSpacer_7 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_6->addItem(horizontalSpacer_7);


        verticalLayout_2->addLayout(horizontalLayout_6);

        horizontalLayout_8 = new QHBoxLayout();
        horizontalLayout_8->setObjectName(QStringLiteral("horizontalLayout_8"));
        horizontalSpacer_9 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_8->addItem(horizontalSpacer_9);

        label_4 = new QLabel(page_6);
        label_4->setObjectName(QStringLiteral("label_4"));
        label_4->setMaximumSize(QSize(40, 17));
        label_4->setStyleSheet(QStringLiteral("border-color:rgb(239, 41, 41)"));

        horizontalLayout_8->addWidget(label_4);

        horizontalSpacer_10 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_8->addItem(horizontalSpacer_10);


        verticalLayout_2->addLayout(horizontalLayout_8);

        frame_2 = new QFrame(page_6);
        frame_2->setObjectName(QStringLiteral("frame_2"));
        frame_2->setStyleSheet(QStringLiteral(""));
        frame_2->setFrameShape(QFrame::HLine);
        frame_2->setFrameShadow(QFrame::Raised);
        frame_2->setLineWidth(3);

        verticalLayout_2->addWidget(frame_2);

        label_carback = new QLabel(page_6);
        label_carback->setObjectName(QStringLiteral("label_carback"));
        label_carback->setMinimumSize(QSize(300, 400));
        label_carback->setStyleSheet(QStringLiteral(""));

        verticalLayout_2->addWidget(label_carback);


        verticalLayout_8->addLayout(verticalLayout_2);

        stackedWidget_left->addWidget(page_6);
        page_7 = new QWidget();
        page_7->setObjectName(QStringLiteral("page_7"));
        verticalLayout_7 = new QVBoxLayout(page_7);
        verticalLayout_7->setObjectName(QStringLiteral("verticalLayout_7"));
        verticalLayout_3 = new QVBoxLayout();
        verticalLayout_3->setObjectName(QStringLiteral("verticalLayout_3"));
        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        pushButton_u = new QPushButton(page_7);
        pushButton_u->setObjectName(QStringLiteral("pushButton_u"));
        pushButton_u->setMinimumSize(QSize(64, 64));
        pushButton_u->setMaximumSize(QSize(64, 64));
        pushButton_u->setStyleSheet(QLatin1String("QPushButton{border-image: url(://images/up_left.png);}\n"
"QPushButton{border:none;}\n"
"QPushButton:pressed{border-image: url(://images/up_left_2.png);}"));

        horizontalLayout_2->addWidget(pushButton_u);

        pushButton_i = new QPushButton(page_7);
        pushButton_i->setObjectName(QStringLiteral("pushButton_i"));
        pushButton_i->setMinimumSize(QSize(64, 64));
        pushButton_i->setMaximumSize(QSize(64, 64));
        pushButton_i->setStyleSheet(QLatin1String("QPushButton{border-image: url(://images/up.png);}\n"
"QPushButton{border:none;}\n"
"QPushButton:pressed{border-image: url(://images/up_2.png);}"));

        horizontalLayout_2->addWidget(pushButton_i);

        pushButton_o = new QPushButton(page_7);
        pushButton_o->setObjectName(QStringLiteral("pushButton_o"));
        pushButton_o->setMinimumSize(QSize(64, 64));
        pushButton_o->setMaximumSize(QSize(64, 64));
        pushButton_o->setStyleSheet(QLatin1String("QPushButton{border-image: url(://images/up_right.png);}\n"
"QPushButton{border:none;}\n"
"QPushButton:pressed{border-image: url(://images/up_right_2.png);}"));

        horizontalLayout_2->addWidget(pushButton_o);


        verticalLayout_3->addLayout(horizontalLayout_2);

        horizontalLayout_18 = new QHBoxLayout();
        horizontalLayout_18->setObjectName(QStringLiteral("horizontalLayout_18"));
        pushButton_j = new QPushButton(page_7);
        pushButton_j->setObjectName(QStringLiteral("pushButton_j"));
        pushButton_j->setMinimumSize(QSize(64, 64));
        pushButton_j->setMaximumSize(QSize(64, 64));
        pushButton_j->setStyleSheet(QLatin1String("QPushButton{border-image: url(://images/left.png);}\n"
"QPushButton{border:none;}\n"
"QPushButton:pressed{border-image: url(://images/left_2.png);}"));

        horizontalLayout_18->addWidget(pushButton_j);

        checkBox_use_all = new QCheckBox(page_7);
        checkBox_use_all->setObjectName(QStringLiteral("checkBox_use_all"));
        checkBox_use_all->setMaximumSize(QSize(90, 16777215));

        horizontalLayout_18->addWidget(checkBox_use_all);

        pushButton_l = new QPushButton(page_7);
        pushButton_l->setObjectName(QStringLiteral("pushButton_l"));
        pushButton_l->setMinimumSize(QSize(64, 64));
        pushButton_l->setMaximumSize(QSize(64, 64));
        pushButton_l->setStyleSheet(QLatin1String("QPushButton{border-image: url(://images/right.png);}\n"
"QPushButton{border:none;}\n"
"QPushButton:pressed{border-image: url(://images/right_2.png);}"));

        horizontalLayout_18->addWidget(pushButton_l);


        verticalLayout_3->addLayout(horizontalLayout_18);

        horizontalLayout_19 = new QHBoxLayout();
        horizontalLayout_19->setObjectName(QStringLiteral("horizontalLayout_19"));
        pushButton_m = new QPushButton(page_7);
        pushButton_m->setObjectName(QStringLiteral("pushButton_m"));
        pushButton_m->setMinimumSize(QSize(64, 64));
        pushButton_m->setMaximumSize(QSize(64, 64));
        pushButton_m->setStyleSheet(QLatin1String("QPushButton{border-image: url(://images/down_left.png);}\n"
"QPushButton{border:none;}\n"
"QPushButton:pressed{border-image: url(://images/down_left_2.png);}"));

        horizontalLayout_19->addWidget(pushButton_m);

        pushButton_back = new QPushButton(page_7);
        pushButton_back->setObjectName(QStringLiteral("pushButton_back"));
        pushButton_back->setMinimumSize(QSize(64, 64));
        pushButton_back->setMaximumSize(QSize(64, 64));
        pushButton_back->setStyleSheet(QLatin1String("QPushButton{border-image: url(://images/down.png);}\n"
"QPushButton{border:none;}\n"
"QPushButton:pressed{border-image: url(://images/down_2.png);}"));

        horizontalLayout_19->addWidget(pushButton_back);

        pushButton_backr = new QPushButton(page_7);
        pushButton_backr->setObjectName(QStringLiteral("pushButton_backr"));
        pushButton_backr->setMinimumSize(QSize(64, 64));
        pushButton_backr->setMaximumSize(QSize(64, 64));
        pushButton_backr->setStyleSheet(QLatin1String("QPushButton{border-image: url(://images/down_right.png);}\n"
"QPushButton{border:none;}\n"
"QPushButton:pressed{border-image: url(://images/down_right_2.png);}"));

        horizontalLayout_19->addWidget(pushButton_backr);


        verticalLayout_3->addLayout(horizontalLayout_19);

        horizontalLayout_20 = new QHBoxLayout();
        horizontalLayout_20->setObjectName(QStringLiteral("horizontalLayout_20"));
        label_14 = new QLabel(page_7);
        label_14->setObjectName(QStringLiteral("label_14"));

        horizontalLayout_20->addWidget(label_14);

        horizontalSlider_raw = new QSlider(page_7);
        horizontalSlider_raw->setObjectName(QStringLiteral("horizontalSlider_raw"));
        horizontalSlider_raw->setMaximum(100);
        horizontalSlider_raw->setValue(100);
        horizontalSlider_raw->setOrientation(Qt::Horizontal);

        horizontalLayout_20->addWidget(horizontalSlider_raw);

        label_raw = new QLabel(page_7);
        label_raw->setObjectName(QStringLiteral("label_raw"));

        horizontalLayout_20->addWidget(label_raw);


        verticalLayout_3->addLayout(horizontalLayout_20);

        horizontalLayout_21 = new QHBoxLayout();
        horizontalLayout_21->setObjectName(QStringLiteral("horizontalLayout_21"));
        label_9 = new QLabel(page_7);
        label_9->setObjectName(QStringLiteral("label_9"));

        horizontalLayout_21->addWidget(label_9);

        horizontalSlider_linear = new QSlider(page_7);
        horizontalSlider_linear->setObjectName(QStringLiteral("horizontalSlider_linear"));
        horizontalSlider_linear->setMaximum(100);
        horizontalSlider_linear->setSingleStep(1);
        horizontalSlider_linear->setValue(50);
        horizontalSlider_linear->setOrientation(Qt::Horizontal);

        horizontalLayout_21->addWidget(horizontalSlider_linear);

        label_linear = new QLabel(page_7);
        label_linear->setObjectName(QStringLiteral("label_linear"));

        horizontalLayout_21->addWidget(label_linear);


        verticalLayout_3->addLayout(horizontalLayout_21);

        horizontalLayout_23 = new QHBoxLayout();
        horizontalLayout_23->setObjectName(QStringLiteral("horizontalLayout_23"));
        horizontalSpacer_5 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_23->addItem(horizontalSpacer_5);

        JoyStick_widget = new QWidget(page_7);
        JoyStick_widget->setObjectName(QStringLiteral("JoyStick_widget"));
        JoyStick_widget->setMinimumSize(QSize(200, 200));
        horizontalLayout_22 = new QHBoxLayout(JoyStick_widget);
        horizontalLayout_22->setObjectName(QStringLiteral("horizontalLayout_22"));

        horizontalLayout_23->addWidget(JoyStick_widget);

        horizontalSpacer_6 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_23->addItem(horizontalSpacer_6);


        verticalLayout_3->addLayout(horizontalLayout_23);

        verticalSpacer_4 = new QSpacerItem(385, 21, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_3->addItem(verticalSpacer_4);

        pushButton = new QPushButton(page_7);
        pushButton->setObjectName(QStringLiteral("pushButton"));

        verticalLayout_3->addWidget(pushButton);


        verticalLayout_7->addLayout(verticalLayout_3);

        stackedWidget_left->addWidget(page_7);

        horizontalLayout_4->addWidget(stackedWidget_left);

        verticalLayout_5 = new QVBoxLayout();
        verticalLayout_5->setObjectName(QStringLiteral("verticalLayout_5"));
        widget_3 = new QWidget(centralwidget);
        widget_3->setObjectName(QStringLiteral("widget_3"));
        widget_3->setStyleSheet(QStringLiteral(""));
        horizontalLayout_5 = new QHBoxLayout(widget_3);
        horizontalLayout_5->setSpacing(0);
        horizontalLayout_5->setObjectName(QStringLiteral("horizontalLayout_5"));
        horizontalLayout_5->setContentsMargins(0, 3, 0, 0);
        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QStringLiteral("horizontalLayout_3"));
        label_time = new QLabel(widget_3);
        label_time->setObjectName(QStringLiteral("label_time"));
        label_time->setMinimumSize(QSize(60, 0));
        QFont font1;
        font1.setPointSize(13);
        label_time->setFont(font1);

        horizontalLayout_3->addWidget(label_time);

        label_19 = new QLabel(widget_3);
        label_19->setObjectName(QStringLiteral("label_19"));
        label_19->setMinimumSize(QSize(32, 32));
        label_19->setMaximumSize(QSize(32, 32));
        label_19->setPixmap(QPixmap(QString::fromUtf8(":/images/robot2.png")));

        horizontalLayout_3->addWidget(label_19);

        label_18 = new QLabel(widget_3);
        label_18->setObjectName(QStringLiteral("label_18"));
        label_18->setStyleSheet(QStringLiteral(""));

        horizontalLayout_3->addWidget(label_18);

        pushButton_status = new QPushButton(widget_3);
        pushButton_status->setObjectName(QStringLiteral("pushButton_status"));
        pushButton_status->setMinimumSize(QSize(20, 20));
        pushButton_status->setMaximumSize(QSize(20, 20));
        pushButton_status->setCursor(QCursor(Qt::PointingHandCursor));
        pushButton_status->setStyleSheet(QLatin1String("QPushButton{\n"
"border:none; \n"
"padding:0px 0px 0px 0px;\n"
"margin:0px 0px 0px 0px;\n"
"}"));

        horizontalLayout_3->addWidget(pushButton_status);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_3->addItem(horizontalSpacer);

        label_10 = new QLabel(widget_3);
        label_10->setObjectName(QStringLiteral("label_10"));
        label_10->setStyleSheet(QStringLiteral(""));

        horizontalLayout_3->addWidget(label_10);

        label_6 = new QLabel(widget_3);
        label_6->setObjectName(QStringLiteral("label_6"));
        label_6->setMaximumSize(QSize(30, 30));
        label_6->setPixmap(QPixmap(QString::fromUtf8(":/images/power.png")));

        horizontalLayout_3->addWidget(label_6);

        progressBar = new QProgressBar(widget_3);
        progressBar->setObjectName(QStringLiteral("progressBar"));
        progressBar->setMaximumSize(QSize(90, 16777215));
        progressBar->setStyleSheet(QString::fromUtf8("QProgressBar#progressBar\n"
"{\n"
"      border:none;   /*\346\227\240\350\276\271\346\241\206*/\n"
"      background:rgb(211, 215, 207);\n"
"      border-radius:5px;\n"
"      text-align:center;   /*\346\226\207\346\234\254\347\232\204\344\275\215\347\275\256*/\n"
"      color: rgb(229, 229, 229);  /*\346\226\207\346\234\254\351\242\234\350\211\262*/\n"
"}\n"
" \n"
"QProgressBar::chunk \n"
"{\n"
"      background-color:rgb(115, 210, 22);\n"
"      border-radius:4px;\n"
"}\n"
""));
        progressBar->setValue(70);

        horizontalLayout_3->addWidget(progressBar);

        label_11 = new QLabel(widget_3);
        label_11->setObjectName(QStringLiteral("label_11"));
        label_11->setMinimumSize(QSize(32, 32));
        label_11->setMaximumSize(QSize(32, 32));
        label_11->setPixmap(QPixmap(QString::fromUtf8(":/images/power-v.png")));

        horizontalLayout_3->addWidget(label_11);

        label_power = new QLabel(widget_3);
        label_power->setObjectName(QStringLiteral("label_power"));
        label_power->setMinimumSize(QSize(50, 32));
        label_power->setMaximumSize(QSize(50, 32));
        label_power->setStyleSheet(QStringLiteral(""));

        horizontalLayout_3->addWidget(label_power);

        min_btn = new QPushButton(widget_3);
        min_btn->setObjectName(QStringLiteral("min_btn"));
        min_btn->setCursor(QCursor(Qt::PointingHandCursor));
        min_btn->setStyleSheet(QStringLiteral("border:none"));
        QIcon icon1;
        QString iconThemeName = QStringLiteral("://images/min.png");
        if (QIcon::hasThemeIcon(iconThemeName)) {
            icon1 = QIcon::fromTheme(iconThemeName);
        } else {
            icon1.addFile(QStringLiteral("."), QSize(), QIcon::Normal, QIcon::Off);
        }
        min_btn->setIcon(icon1);

        horizontalLayout_3->addWidget(min_btn);

        max_btn = new QPushButton(widget_3);
        max_btn->setObjectName(QStringLiteral("max_btn"));
        max_btn->setCursor(QCursor(Qt::PointingHandCursor));
        max_btn->setStyleSheet(QStringLiteral("border:none"));
        QIcon icon2;
        iconThemeName = QStringLiteral("://images/max.png");
        if (QIcon::hasThemeIcon(iconThemeName)) {
            icon2 = QIcon::fromTheme(iconThemeName);
        } else {
            icon2.addFile(QStringLiteral("."), QSize(), QIcon::Normal, QIcon::Off);
        }
        max_btn->setIcon(icon2);

        horizontalLayout_3->addWidget(max_btn);

        close_btn = new QPushButton(widget_3);
        close_btn->setObjectName(QStringLiteral("close_btn"));
        close_btn->setCursor(QCursor(Qt::PointingHandCursor));
        close_btn->setStyleSheet(QStringLiteral("border:none"));
        QIcon icon3;
        iconThemeName = QStringLiteral("://images/close.png");
        if (QIcon::hasThemeIcon(iconThemeName)) {
            icon3 = QIcon::fromTheme(iconThemeName);
        } else {
            icon3.addFile(QStringLiteral("."), QSize(), QIcon::Normal, QIcon::Off);
        }
        close_btn->setIcon(icon3);

        horizontalLayout_3->addWidget(close_btn);


        horizontalLayout_5->addLayout(horizontalLayout_3);


        verticalLayout_5->addWidget(widget_3);

        stackedWidget_main = new QStackedWidget(centralwidget);
        stackedWidget_main->setObjectName(QStringLiteral("stackedWidget_main"));
        page_3 = new QWidget();
        page_3->setObjectName(QStringLiteral("page_3"));
        verticalLayout_12 = new QVBoxLayout(page_3);
        verticalLayout_12->setObjectName(QStringLiteral("verticalLayout_12"));
        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        label_turnLeft = new QLabel(page_3);
        label_turnLeft->setObjectName(QStringLiteral("label_turnLeft"));
        label_turnLeft->setMinimumSize(QSize(250, 250));
        label_turnLeft->setMaximumSize(QSize(250, 16777215));
        label_turnLeft->setStyleSheet(QStringLiteral(""));

        horizontalLayout->addWidget(label_turnLeft);

        widget_dashboard = new QWidget(page_3);
        widget_dashboard->setObjectName(QStringLiteral("widget_dashboard"));
        widget_dashboard->setMinimumSize(QSize(300, 300));
        widget_dashboard->setStyleSheet(QStringLiteral(""));

        horizontalLayout->addWidget(widget_dashboard);

        label_turnRight = new QLabel(page_3);
        label_turnRight->setObjectName(QStringLiteral("label_turnRight"));
        label_turnRight->setMinimumSize(QSize(250, 250));
        label_turnRight->setMaximumSize(QSize(250, 456546));
        label_turnRight->setLayoutDirection(Qt::RightToLeft);
        label_turnRight->setStyleSheet(QStringLiteral(""));

        horizontalLayout->addWidget(label_turnRight);


        verticalLayout->addLayout(horizontalLayout);

        frame = new QFrame(page_3);
        frame->setObjectName(QStringLiteral("frame"));
        frame->setContextMenuPolicy(Qt::NoContextMenu);
        frame->setFrameShape(QFrame::HLine);
        frame->setFrameShadow(QFrame::Raised);

        verticalLayout->addWidget(frame);

        horizontalLayout_7 = new QHBoxLayout();
        horizontalLayout_7->setObjectName(QStringLiteral("horizontalLayout_7"));
        gridLayout_3 = new QGridLayout();
        gridLayout_3->setObjectName(QStringLiteral("gridLayout_3"));
        label_video1 = new QLabel(page_3);
        label_video1->setObjectName(QStringLiteral("label_video1"));
        label_video1->setMinimumSize(QSize(200, 200));
        label_video1->setMaximumSize(QSize(400, 400));
        label_video1->setStyleSheet(QLatin1String("QLabel{\n"
"border-top: 5px solid qlineargradient(y0:0, y1:1,stop: 0 #ececef, stop: 1 white);\n"
"border-left: 5px solid qlineargradient(x0:0, x1:1,stop: 0 #ececef, stop: 1 white);\n"
" border-bottom: 5px solid qlineargradient(y0:0, y1:1,stop: 0 white, stop: 1  #ececef);\n"
"border-right: 5px solid qlineargradient(x0:0, x1:1,stop:  0 white, stop: 1 #ececef);\n"
"background-color: rgb(255,255,255);\n"
"}\n"
""));

        gridLayout_3->addWidget(label_video1, 0, 1, 1, 1);

        label_video0 = new QLabel(page_3);
        label_video0->setObjectName(QStringLiteral("label_video0"));
        label_video0->setMinimumSize(QSize(200, 200));
        label_video0->setMaximumSize(QSize(400, 400));
        label_video0->setStyleSheet(QLatin1String("QLabel{\n"
"border-top: 5px solid qlineargradient(y0:0, y1:1,stop: 0 #ececef, stop: 1 white);\n"
"border-left: 5px solid qlineargradient(x0:0, x1:1,stop: 0 #ececef, stop: 1 white);\n"
" border-bottom: 5px solid qlineargradient(y0:0, y1:1,stop: 0 white, stop: 1  #ececef);\n"
"border-right: 5px solid qlineargradient(x0:0, x1:1,stop:  0 white, stop: 1 #ececef);\n"
"background-color: rgb(255,255,255);\n"
"}\n"
""));

        gridLayout_3->addWidget(label_video0, 0, 0, 1, 1);

        widget_chart = new QWidget(page_3);
        widget_chart->setObjectName(QStringLiteral("widget_chart"));
        widget_chart->setMinimumSize(QSize(400, 200));
        widget_chart->setStyleSheet(QLatin1String("QWidget{\n"
"border-top: 5px solid qlineargradient(y0:0, y1:1,stop: 0 #ececef, stop: 1 white);\n"
"border-left: 5px solid qlineargradient(x0:0, x1:1,stop: 0 #ececef, stop: 1 white);\n"
" border-bottom: 5px solid qlineargradient(y0:0, y1:1,stop: 0 white, stop: 1  #ececef);\n"
"border-right: 5px solid qlineargradient(x0:0, x1:1,stop:  0 white, stop: 1 #ececef);\n"
"background-color: rgb(255,255,255);\n"
"}\n"
""));

        gridLayout_3->addWidget(widget_chart, 0, 2, 1, 1);


        horizontalLayout_7->addLayout(gridLayout_3);


        verticalLayout->addLayout(horizontalLayout_7);


        verticalLayout_12->addLayout(verticalLayout);

        stackedWidget_main->addWidget(page_3);
        page_4 = new QWidget();
        page_4->setObjectName(QStringLiteral("page_4"));
        verticalLayout_14 = new QVBoxLayout(page_4);
        verticalLayout_14->setObjectName(QStringLiteral("verticalLayout_14"));
        verticalLayout_13 = new QVBoxLayout();
        verticalLayout_13->setObjectName(QStringLiteral("verticalLayout_13"));
        horizontalLayout_11 = new QHBoxLayout();
        horizontalLayout_11->setSpacing(0);
        horizontalLayout_11->setObjectName(QStringLiteral("horizontalLayout_11"));
        set_pos_btn = new QPushButton(page_4);
        set_pos_btn->setObjectName(QStringLiteral("set_pos_btn"));
        set_pos_btn->setMinimumSize(QSize(0, 25));
        set_pos_btn->setMaximumSize(QSize(16777215, 16777215));
        set_pos_btn->setStyleSheet(QLatin1String("QPushButton:hover{\n"
"background-color:rgb(186, 189, 182);\n"
"border-bottom:2px solid rgb(67, 154, 246);\n"
"}\n"
"QPushButton:checked{\n"
"background-color:cyan;\n"
"border-bottom:2px solid white \n"
"}\n"
"QPushButton:pressed{\n"
"background-color:rgb(67, 154, 246)\n"
"}\n"
"QPushButton{\n"
"background-color:rgb(238, 238, 236);\n"
"border:none; \n"
"padding:0px 0px 0px 0px;\n"
"margin:0px 0px 0px 0px;\n"
"}"));
        QIcon icon4;
        icon4.addFile(QStringLiteral(":/images/classes/SetInitialPose.png"), QSize(), QIcon::Normal, QIcon::Off);
        set_pos_btn->setIcon(icon4);

        horizontalLayout_11->addWidget(set_pos_btn);

        set_goal_btn = new QPushButton(page_4);
        set_goal_btn->setObjectName(QStringLiteral("set_goal_btn"));
        set_goal_btn->setMinimumSize(QSize(0, 25));
        set_goal_btn->setStyleSheet(QLatin1String("QPushButton:hover{\n"
"background-color:rgb(186, 189, 182);\n"
"border-bottom:2px solid rgb(67, 154, 246);\n"
"}\n"
"QPushButton:checked{\n"
"background-color:cyan;\n"
"border-bottom:2px solid white \n"
"}\n"
"QPushButton:pressed{\n"
"background-color:rgb(67, 154, 246)\n"
"}\n"
"QPushButton{\n"
"background-color:rgb(238, 238, 236);\n"
"border:none; \n"
"padding:0px 0px 0px 0px;\n"
"margin:0px 0px 0px 0px;\n"
"}"));
        QIcon icon5;
        icon5.addFile(QStringLiteral(":/images/classes/SetGoal.png"), QSize(), QIcon::Normal, QIcon::Off);
        set_goal_btn->setIcon(icon5);

        horizontalLayout_11->addWidget(set_goal_btn);

        set_mutil_goal_btn = new QPushButton(page_4);
        set_mutil_goal_btn->setObjectName(QStringLiteral("set_mutil_goal_btn"));
        set_mutil_goal_btn->setStyleSheet(QLatin1String("QPushButton:hover{\n"
"background-color:rgb(186, 189, 182);\n"
"border-bottom:2px solid rgb(67, 154, 246);\n"
"}\n"
"QPushButton:checked{\n"
"background-color:cyan;\n"
"border-bottom:2px solid white \n"
"}\n"
"QPushButton:pressed{\n"
"background-color:rgb(67, 154, 246)\n"
"}\n"
"QPushButton{\n"
"background-color:rgb(238, 238, 236);\n"
"border:none; \n"
"padding:0px 0px 0px 0px;\n"
"margin:0px 0px 0px 0px;\n"
"}"));
        QIcon icon6(QIcon::fromTheme(QStringLiteral("://images/mutil_pose.png")));
        set_mutil_goal_btn->setIcon(icon6);

        horizontalLayout_11->addWidget(set_mutil_goal_btn);

        return_btn = new QPushButton(page_4);
        return_btn->setObjectName(QStringLiteral("return_btn"));
        return_btn->setMaximumSize(QSize(16777215, 25));
        return_btn->setStyleSheet(QLatin1String("QPushButton:hover{\n"
"background-color:rgb(186, 189, 182);\n"
"border-bottom:2px solid rgb(67, 154, 246);\n"
"}\n"
"QPushButton:checked{\n"
"background-color:cyan;\n"
"border-bottom:2px solid white \n"
"}\n"
"QPushButton:pressed{\n"
"background-color:rgb(67, 154, 246)\n"
"}\n"
"QPushButton{\n"
"background-color:rgb(238, 238, 236);\n"
"border:none; \n"
"padding:0px 0px 0px 0px;\n"
"margin:0px 0px 0px 0px;\n"
"}"));
        QIcon icon7;
        icon7.addFile(QStringLiteral(":/images/return.png"), QSize(), QIcon::Normal, QIcon::Off);
        return_btn->setIcon(icon7);

        horizontalLayout_11->addWidget(return_btn);

        horizontalSpacer_2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_11->addItem(horizontalSpacer_2);

        label_2 = new QLabel(page_4);
        label_2->setObjectName(QStringLiteral("label_2"));

        horizontalLayout_11->addWidget(label_2);

        comboBox_mapType = new QComboBox(page_4);
        comboBox_mapType->setObjectName(QStringLiteral("comboBox_mapType"));
        comboBox_mapType->setStyleSheet(QStringLiteral("background-color:none"));

        horizontalLayout_11->addWidget(comboBox_mapType);


        verticalLayout_13->addLayout(horizontalLayout_11);

        verticalLayout_build_map = new QVBoxLayout();
        verticalLayout_build_map->setSpacing(0);
        verticalLayout_build_map->setObjectName(QStringLiteral("verticalLayout_build_map"));
        mapViz = new QGraphicsView(page_4);
        mapViz->setObjectName(QStringLiteral("mapViz"));
        mapViz->setLayoutDirection(Qt::LeftToRight);
        mapViz->setStyleSheet(QLatin1String("QGraphicsView{\n"
"border-top: 5px solid qlineargradient(y0:0, y1:1,stop: 0 #ececef, stop: 1 white);\n"
"border-left: 5px solid qlineargradient(x0:0, x1:1,stop: 0 #ececef, stop: 1 white);\n"
" border-bottom: 5px solid qlineargradient(y0:0, y1:1,stop: 0 white, stop: 1  #ececef);\n"
"border-right: 5px solid qlineargradient(x0:0, x1:1,stop:  0 white, stop: 1 #ececef);\n"
"background-color: rgb(255,255,255);\n"
"}\n"
""));
        mapViz->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOff);
        mapViz->setHorizontalScrollBarPolicy(Qt::ScrollBarAlwaysOff);

        verticalLayout_build_map->addWidget(mapViz);

        widget_rviz = new QWidget(page_4);
        widget_rviz->setObjectName(QStringLiteral("widget_rviz"));
        widget_rviz->setMinimumSize(QSize(0, 100));
        widget_rviz->setStyleSheet(QLatin1String("QWidget{\n"
"border-top: 5px solid qlineargradient(y0:0, y1:1,stop: 0 #ececef, stop: 1 white);\n"
"border-left: 5px solid qlineargradient(x0:0, x1:1,stop: 0 #ececef, stop: 1 white);\n"
" border-bottom: 5px solid qlineargradient(y0:0, y1:1,stop: 0 white, stop: 1  #ececef);\n"
"border-right: 5px solid qlineargradient(x0:0, x1:1,stop:  0 white, stop: 1 #ececef);\n"
"background-color: rgb(255,255,255);\n"
"}\n"
""));
        verticalLayout_16 = new QVBoxLayout(widget_rviz);
        verticalLayout_16->setObjectName(QStringLiteral("verticalLayout_16"));
        verticalLayout_rviz = new QVBoxLayout();
        verticalLayout_rviz->setObjectName(QStringLiteral("verticalLayout_rviz"));

        verticalLayout_16->addLayout(verticalLayout_rviz);


        verticalLayout_build_map->addWidget(widget_rviz);


        verticalLayout_13->addLayout(verticalLayout_build_map);

        horizontalLayout_12 = new QHBoxLayout();
        horizontalLayout_12->setObjectName(QStringLiteral("horizontalLayout_12"));
        label = new QLabel(page_4);
        label->setObjectName(QStringLiteral("label"));
        label->setMinimumSize(QSize(40, 20));
        label->setMaximumSize(QSize(40, 20));

        horizontalLayout_12->addWidget(label);

        label_pos_map = new QLabel(page_4);
        label_pos_map->setObjectName(QStringLiteral("label_pos_map"));
        label_pos_map->setMinimumSize(QSize(200, 20));
        label_pos_map->setMaximumSize(QSize(200, 20));
        label_pos_map->setStyleSheet(QStringLiteral(""));

        horizontalLayout_12->addWidget(label_pos_map);

        label_5 = new QLabel(page_4);
        label_5->setObjectName(QStringLiteral("label_5"));
        label_5->setMinimumSize(QSize(40, 20));
        label_5->setMaximumSize(QSize(40, 20));

        horizontalLayout_12->addWidget(label_5);

        label_pos_scene = new QLabel(page_4);
        label_pos_scene->setObjectName(QStringLiteral("label_pos_scene"));
        label_pos_scene->setMinimumSize(QSize(200, 20));
        label_pos_scene->setMaximumSize(QSize(200, 20));

        horizontalLayout_12->addWidget(label_pos_scene);

        horizontalSpacer_3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_12->addItem(horizontalSpacer_3);


        verticalLayout_13->addLayout(horizontalLayout_12);


        verticalLayout_14->addLayout(verticalLayout_13);

        stackedWidget_main->addWidget(page_4);
        page_5 = new QWidget();
        page_5->setObjectName(QStringLiteral("page_5"));
        verticalLayout_9 = new QVBoxLayout(page_5);
        verticalLayout_9->setObjectName(QStringLiteral("verticalLayout_9"));
        verticalLayout_4 = new QVBoxLayout();
        verticalLayout_4->setObjectName(QStringLiteral("verticalLayout_4"));
        horizontalLayout_9 = new QHBoxLayout();
        horizontalLayout_9->setObjectName(QStringLiteral("horizontalLayout_9"));
        verticalLayout_11 = new QVBoxLayout();
        verticalLayout_11->setObjectName(QStringLiteral("verticalLayout_11"));
        label_video2 = new QLabel(page_5);
        label_video2->setObjectName(QStringLiteral("label_video2"));
        label_video2->setMinimumSize(QSize(200, 195));
        label_video2->setMaximumSize(QSize(200, 200));
        label_video2->setStyleSheet(QLatin1String("QLabel{\n"
"border-top: 5px solid qlineargradient(y0:0, y1:1,stop: 0 #ececef, stop: 1 white);\n"
"border-left: 5px solid qlineargradient(x0:0, x1:1,stop: 0 #ececef, stop: 1 white);\n"
" border-bottom: 5px solid qlineargradient(y0:0, y1:1,stop: 0 white, stop: 1  #ececef);\n"
"border-right: 5px solid qlineargradient(x0:0, x1:1,stop:  0 white, stop: 1 #ececef);\n"
"background-color: rgb(255,255,255);\n"
"}\n"
""));

        verticalLayout_11->addWidget(label_video2);


        horizontalLayout_9->addLayout(verticalLayout_11);

        verticalLayout_19 = new QVBoxLayout();
        verticalLayout_19->setObjectName(QStringLiteral("verticalLayout_19"));
        label_video3 = new QLabel(page_5);
        label_video3->setObjectName(QStringLiteral("label_video3"));
        label_video3->setMinimumSize(QSize(200, 200));
        label_video3->setMaximumSize(QSize(200, 200));
        label_video3->setStyleSheet(QLatin1String("QLabel{\n"
"border-top: 5px solid qlineargradient(y0:0, y1:1,stop: 0 #ececef, stop: 1 white);\n"
"border-left: 5px solid qlineargradient(x0:0, x1:1,stop: 0 #ececef, stop: 1 white);\n"
" border-bottom: 5px solid qlineargradient(y0:0, y1:1,stop: 0 white, stop: 1  #ececef);\n"
"border-right: 5px solid qlineargradient(x0:0, x1:1,stop:  0 white, stop: 1 #ececef);\n"
"background-color: rgb(255,255,255);\n"
"}\n"
""));

        verticalLayout_19->addWidget(label_video3);


        horizontalLayout_9->addLayout(verticalLayout_19);

        verticalLayout_20 = new QVBoxLayout();
        verticalLayout_20->setObjectName(QStringLiteral("verticalLayout_20"));
        horizontalLayout_15 = new QHBoxLayout();
        horizontalLayout_15->setObjectName(QStringLiteral("horizontalLayout_15"));
        label_29 = new QLabel(page_5);
        label_29->setObjectName(QStringLiteral("label_29"));
        label_29->setMaximumSize(QSize(90, 30));

        horizontalLayout_15->addWidget(label_29);

        refreash_topic_btn = new QPushButton(page_5);
        refreash_topic_btn->setObjectName(QStringLiteral("refreash_topic_btn"));
        refreash_topic_btn->setMinimumSize(QSize(90, 25));
        refreash_topic_btn->setMaximumSize(QSize(90, 25));
        refreash_topic_btn->setCursor(QCursor(Qt::ArrowCursor));
        refreash_topic_btn->setStyleSheet(QStringLiteral(""));
        QIcon icon8;
        icon8.addFile(QStringLiteral(":/images/refreash.png"), QSize(), QIcon::Normal, QIcon::Off);
        refreash_topic_btn->setIcon(icon8);

        horizontalLayout_15->addWidget(refreash_topic_btn);

        horizontalSpacer_4 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_15->addItem(horizontalSpacer_4);


        verticalLayout_20->addLayout(horizontalLayout_15);

        topic_listWidget = new QListWidget(page_5);
        topic_listWidget->setObjectName(QStringLiteral("topic_listWidget"));
        topic_listWidget->setStyleSheet(QLatin1String("QListWidget{\n"
"border-top: 5px solid qlineargradient(y0:0, y1:1,stop: 0 #ececef, stop: 1 white);\n"
"border-left: 5px solid qlineargradient(x0:0, x1:1,stop: 0 #ececef, stop: 1 white);\n"
" border-bottom: 5px solid qlineargradient(y0:0, y1:1,stop: 0 white, stop: 1  #ececef);\n"
"border-right: 5px solid qlineargradient(x0:0, x1:1,stop:  0 white, stop: 1 #ececef);\n"
"background-color: rgb(255,255,255);\n"
"}\n"
""));

        verticalLayout_20->addWidget(topic_listWidget);


        horizontalLayout_9->addLayout(verticalLayout_20);


        verticalLayout_4->addLayout(horizontalLayout_9);

        view_logging = new QListView(page_5);
        view_logging->setObjectName(QStringLiteral("view_logging"));
        view_logging->setMinimumSize(QSize(300, 0));
        view_logging->setMaximumSize(QSize(12312312, 12312312));
        view_logging->setStyleSheet(QLatin1String("QListView{\n"
"border-top: 5px solid qlineargradient(y0:0, y1:1,stop: 0 #ececef, stop: 1 white);\n"
"border-left: 5px solid qlineargradient(x0:0, x1:1,stop: 0 #ececef, stop: 1 white);\n"
" border-bottom: 5px solid qlineargradient(y0:0, y1:1,stop: 0 white, stop: 1  #ececef);\n"
"border-right: 5px solid qlineargradient(x0:0, x1:1,stop:  0 white, stop: 1 #ececef);\n"
"background-color: rgb(255,255,255);\n"
"}\n"
""));

        verticalLayout_4->addWidget(view_logging);


        verticalLayout_9->addLayout(verticalLayout_4);

        stackedWidget_main->addWidget(page_5);

        verticalLayout_5->addWidget(stackedWidget_main);


        horizontalLayout_4->addLayout(verticalLayout_5);


        verticalLayout_6->addLayout(horizontalLayout_4);

        widget_2 = new QWidget(centralwidget);
        widget_2->setObjectName(QStringLiteral("widget_2"));
        widget_2->setMinimumSize(QSize(0, 60));
        widget_2->setStyleSheet(QLatin1String("QWidget{\n"
"background-color:rgb(211, 215, 207);\n"
"}"));
        horizontalLayout_24 = new QHBoxLayout(widget_2);
        horizontalLayout_24->setSpacing(0);
        horizontalLayout_24->setObjectName(QStringLiteral("horizontalLayout_24"));
        horizontalLayout_24->setContentsMargins(0, 0, 0, 0);
        horizontalLayout_menu = new QHBoxLayout();
        horizontalLayout_menu->setSpacing(0);
        horizontalLayout_menu->setObjectName(QStringLiteral("horizontalLayout_menu"));
        btn_status = new QPushButton(widget_2);
        btn_status->setObjectName(QStringLiteral("btn_status"));
        btn_status->setMinimumSize(QSize(0, 60));
        btn_status->setStyleSheet(QLatin1String("QPushButton:hover{\n"
"background-color:rgb(186, 189, 182);\n"
"border-bottom:2px solid rgb(67, 154, 246);\n"
"}\n"
"QPushButton:checked{\n"
"background-color:cyan;\n"
"border-bottom:2px solid white \n"
"}\n"
"QPushButton:pressed{\n"
"background-color:rgb(67, 154, 246)\n"
"}\n"
"QPushButton{\n"
"background-color:rgb(238, 238, 236);\n"
"border:none; \n"
"padding:0px 0px 0px 0px;\n"
"margin:0px 0px 0px 0px;\n"
"}"));
        btn_status->setIconSize(QSize(32, 32));

        horizontalLayout_menu->addWidget(btn_status);

        btn_control = new QPushButton(widget_2);
        btn_control->setObjectName(QStringLiteral("btn_control"));
        btn_control->setMinimumSize(QSize(0, 60));
        btn_control->setStyleSheet(QLatin1String("QPushButton:hover{\n"
"background-color:rgb(186, 189, 182);\n"
"border-bottom:2px solid rgb(67, 154, 246);\n"
"}\n"
"QPushButton:checked{\n"
"background-color:cyan;\n"
"border-bottom:2px solid white \n"
"}\n"
"QPushButton:pressed{\n"
"background-color:rgb(67, 154, 246)\n"
"}\n"
"QPushButton{\n"
"background-color:rgb(238, 238, 236);\n"
"border:none; \n"
"padding:0px 0px 0px 0px;\n"
"margin:0px 0px 0px 0px;\n"
"}"));
        btn_control->setIconSize(QSize(32, 32));

        horizontalLayout_menu->addWidget(btn_control);

        btn_dash = new QPushButton(widget_2);
        btn_dash->setObjectName(QStringLiteral("btn_dash"));
        btn_dash->setMinimumSize(QSize(0, 60));
        btn_dash->setCursor(QCursor(Qt::PointingHandCursor));
        btn_dash->setStyleSheet(QLatin1String("QPushButton:hover{\n"
"background-color:rgb(186, 189, 182); \n"
"border-bottom:2px solid rgb(67, 154, 246);\n"
"}\n"
"QPushButton:checked{\n"
"background-color:cyan;\n"
"border-bottom:2px solid white \n"
"}\n"
"QPushButton:pressed{\n"
"background-color:rgb(67, 154, 246)\n"
"}\n"
"QPushButton{\n"
"background-color:rgb(238, 238, 236);\n"
"border:none; \n"
"padding:0px 0px 0px 0px;\n"
"margin:0px 0px 0px 0px;\n"
"}"));
        QIcon icon9;
        iconThemeName = QStringLiteral("://images/toolbar_dash.png");
        if (QIcon::hasThemeIcon(iconThemeName)) {
            icon9 = QIcon::fromTheme(iconThemeName);
        } else {
            icon9.addFile(QStringLiteral("."), QSize(), QIcon::Normal, QIcon::Off);
        }
        btn_dash->setIcon(icon9);
        btn_dash->setIconSize(QSize(32, 32));

        horizontalLayout_menu->addWidget(btn_dash);

        btn_map = new QPushButton(widget_2);
        btn_map->setObjectName(QStringLiteral("btn_map"));
        btn_map->setMinimumSize(QSize(0, 60));
        btn_map->setCursor(QCursor(Qt::PointingHandCursor));
        btn_map->setStyleSheet(QLatin1String("QPushButton:hover{\n"
"background-color:rgb(186, 189, 182);\n"
"border-bottom:2px solid rgb(67, 154, 246);\n"
"}\n"
"QPushButton:checked{\n"
"background-color:cyan;\n"
"border-bottom:2px solid white \n"
"}\n"
"QPushButton:pressed{\n"
"background-color:rgb(67, 154, 246)\n"
"}\n"
"QPushButton{\n"
"background-color:rgb(238, 238, 236);\n"
"border:none; \n"
"padding:0px 0px 0px 0px;\n"
"margin:0px 0px 0px 0px;\n"
"}"));
        QIcon icon10;
        iconThemeName = QStringLiteral("://images/toolbar_map.png");
        if (QIcon::hasThemeIcon(iconThemeName)) {
            icon10 = QIcon::fromTheme(iconThemeName);
        } else {
            icon10.addFile(QStringLiteral("."), QSize(), QIcon::Normal, QIcon::Off);
        }
        btn_map->setIcon(icon10);
        btn_map->setIconSize(QSize(32, 32));

        horizontalLayout_menu->addWidget(btn_map);

        btn_other = new QPushButton(widget_2);
        btn_other->setObjectName(QStringLiteral("btn_other"));
        btn_other->setMinimumSize(QSize(0, 60));
        btn_other->setCursor(QCursor(Qt::PointingHandCursor));
        btn_other->setStyleSheet(QLatin1String("QPushButton:hover{\n"
"background-color:rgb(186, 189, 182);\n"
"border-bottom:2px solid rgb(67, 154, 246);\n"
"}\n"
"QPushButton:checked{\n"
"background-color:cyan;\n"
"border-bottom:2px solid white \n"
"}\n"
"QPushButton:pressed{\n"
"background-color:rgb(67, 154, 246)\n"
"}\n"
"QPushButton{\n"
"background-color:rgb(238, 238, 236);\n"
"border:none; \n"
"padding:0px 0px 0px 0px;\n"
"margin:0px 0px 0px 0px;\n"
"}"));
        QIcon icon11;
        iconThemeName = QStringLiteral("://images/toolbar_other.png");
        if (QIcon::hasThemeIcon(iconThemeName)) {
            icon11 = QIcon::fromTheme(iconThemeName);
        } else {
            icon11.addFile(QStringLiteral("."), QSize(), QIcon::Normal, QIcon::Off);
        }
        btn_other->setIcon(icon11);
        btn_other->setIconSize(QSize(32, 32));

        horizontalLayout_menu->addWidget(btn_other);

        settings_btn = new QPushButton(widget_2);
        settings_btn->setObjectName(QStringLiteral("settings_btn"));
        settings_btn->setMinimumSize(QSize(0, 60));
        settings_btn->setCursor(QCursor(Qt::PointingHandCursor));
        settings_btn->setStyleSheet(QLatin1String("QPushButton:hover{\n"
"background-color:rgb(186, 189, 182);\n"
"border-bottom:2px solid rgb(67, 154, 246);\n"
"}\n"
"QPushButton:checked{\n"
"background-color:cyan;\n"
"border-bottom:2px solid white \n"
"}\n"
"QPushButton:pressed{\n"
"background-color:rgb(67, 154, 246)\n"
"}\n"
"QPushButton{\n"
"background-color:rgb(238, 238, 236);\n"
"border:none; \n"
"padding:0px 0px 0px 0px;\n"
"margin:0px 0px 0px 0px;\n"
"}"));
        QIcon icon12;
        iconThemeName = QStringLiteral("://images/setting.png");
        if (QIcon::hasThemeIcon(iconThemeName)) {
            icon12 = QIcon::fromTheme(iconThemeName);
        } else {
            icon12.addFile(QStringLiteral("."), QSize(), QIcon::Normal, QIcon::Off);
        }
        settings_btn->setIcon(icon12);
        settings_btn->setIconSize(QSize(32, 32));

        horizontalLayout_menu->addWidget(settings_btn);


        horizontalLayout_24->addLayout(horizontalLayout_menu);


        verticalLayout_6->addWidget(widget_2);


        verticalLayout_10->addLayout(verticalLayout_6);

        MainWindowDesign->setCentralWidget(centralwidget);

        retranslateUi(MainWindowDesign);
        QObject::connect(action_Quit, SIGNAL(triggered()), MainWindowDesign, SLOT(close()));

        stackedWidget_left->setCurrentIndex(0);
        stackedWidget_main->setCurrentIndex(1);


        QMetaObject::connectSlotsByName(MainWindowDesign);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindowDesign)
    {
        MainWindowDesign->setWindowTitle(QApplication::translate("MainWindowDesign", "ROS\344\272\272\346\234\272\344\272\244\344\272\222\350\275\257\344\273\266", Q_NULLPTR));
        action_Quit->setText(QApplication::translate("MainWindowDesign", "&Quit", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        action_Quit->setShortcut(QApplication::translate("MainWindowDesign", "Ctrl+Q", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        action_Preferences->setText(QApplication::translate("MainWindowDesign", "&\345\212\237\350\203\275", Q_NULLPTR));
        actionAbout->setText(QApplication::translate("MainWindowDesign", "&About", Q_NULLPTR));
        actionAbout_Qt->setText(QApplication::translate("MainWindowDesign", "About &Qt", Q_NULLPTR));
        action_2->setText(QApplication::translate("MainWindowDesign", "\350\256\276\347\275\256", Q_NULLPTR));
        label_speed->setText(QApplication::translate("MainWindowDesign", "0", Q_NULLPTR));
        label_4->setText(QApplication::translate("MainWindowDesign", "CM/S", Q_NULLPTR));
        label_carback->setText(QString());
        pushButton_u->setText(QApplication::translate("MainWindowDesign", "u", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        pushButton_u->setShortcut(QApplication::translate("MainWindowDesign", "U", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        pushButton_i->setText(QApplication::translate("MainWindowDesign", "i", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        pushButton_i->setShortcut(QApplication::translate("MainWindowDesign", "I", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        pushButton_o->setText(QApplication::translate("MainWindowDesign", "o", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        pushButton_o->setShortcut(QApplication::translate("MainWindowDesign", "O", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        pushButton_j->setText(QApplication::translate("MainWindowDesign", "j", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        pushButton_j->setShortcut(QApplication::translate("MainWindowDesign", "J", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        checkBox_use_all->setText(QApplication::translate("MainWindowDesign", "\345\205\250\345\220\221\346\250\241\345\274\217\357\274\210k\357\274\211", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        checkBox_use_all->setShortcut(QApplication::translate("MainWindowDesign", "K", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        pushButton_l->setText(QApplication::translate("MainWindowDesign", "l", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        pushButton_l->setShortcut(QApplication::translate("MainWindowDesign", "L", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        pushButton_m->setText(QApplication::translate("MainWindowDesign", "m", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        pushButton_m->setShortcut(QApplication::translate("MainWindowDesign", "M", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        pushButton_back->setText(QApplication::translate("MainWindowDesign", ",", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        pushButton_back->setShortcut(QApplication::translate("MainWindowDesign", ",", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        pushButton_backr->setText(QApplication::translate("MainWindowDesign", ".", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        pushButton_backr->setShortcut(QApplication::translate("MainWindowDesign", ".", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        label_14->setText(QApplication::translate("MainWindowDesign", "\350\247\222\351\200\237\345\272\246(cm/s)\357\274\232", Q_NULLPTR));
        label_raw->setText(QApplication::translate("MainWindowDesign", "100", Q_NULLPTR));
        label_9->setText(QApplication::translate("MainWindowDesign", "\347\272\277\351\200\237\345\272\246(cm/s)\357\274\232", Q_NULLPTR));
        label_linear->setText(QApplication::translate("MainWindowDesign", "50", Q_NULLPTR));
        pushButton->setText(QApplication::translate("MainWindowDesign", "\360\237\224\227\346\226\255\345\274\200", Q_NULLPTR));
        label_time->setText(QApplication::translate("MainWindowDesign", "00:00:00", Q_NULLPTR));
        label_19->setText(QString());
        label_18->setText(QApplication::translate("MainWindowDesign", "\347\263\273\347\273\237\347\212\266\346\200\201\357\274\232", Q_NULLPTR));
        pushButton_status->setText(QString());
        label_10->setText(QString());
        label_6->setText(QString());
        label_11->setText(QString());
        label_power->setText(QApplication::translate("MainWindowDesign", "00.00V", Q_NULLPTR));
        min_btn->setText(QString());
        max_btn->setText(QString());
        close_btn->setText(QString());
        label_turnLeft->setText(QString());
        label_turnRight->setText(QString());
        label_video1->setText(QApplication::translate("MainWindowDesign", "No Video", Q_NULLPTR));
        label_video0->setText(QApplication::translate("MainWindowDesign", "No Video", Q_NULLPTR));
        set_pos_btn->setText(QApplication::translate("MainWindowDesign", "\350\256\276\347\275\256\345\257\274\350\210\252\345\210\235\345\247\213\347\202\271", Q_NULLPTR));
        set_goal_btn->setText(QApplication::translate("MainWindowDesign", "\350\256\276\347\275\256\345\215\225\347\202\271\345\257\274\350\210\252", Q_NULLPTR));
        set_mutil_goal_btn->setText(QApplication::translate("MainWindowDesign", "\350\256\276\347\275\256\345\244\232\347\202\271\345\257\274\350\210\252", Q_NULLPTR));
        return_btn->setText(QApplication::translate("MainWindowDesign", "\350\277\224\345\233\236\344\274\221\346\201\257\347\202\271", Q_NULLPTR));
        label_2->setText(QApplication::translate("MainWindowDesign", "\346\240\267\345\274\217\357\274\232", Q_NULLPTR));
        comboBox_mapType->clear();
        comboBox_mapType->insertItems(0, QStringList()
         << QApplication::translate("MainWindowDesign", "\347\273\217\345\205\270", Q_NULLPTR)
         << QApplication::translate("MainWindowDesign", "rviz", Q_NULLPTR)
        );
        label->setText(QApplication::translate("MainWindowDesign", "map:", Q_NULLPTR));
        label_pos_map->setText(QString());
        label_5->setText(QApplication::translate("MainWindowDesign", "scene:", Q_NULLPTR));
        label_pos_scene->setText(QString());
        label_video2->setText(QApplication::translate("MainWindowDesign", "No Video", Q_NULLPTR));
        label_video3->setText(QApplication::translate("MainWindowDesign", "No Video", Q_NULLPTR));
        label_29->setText(QApplication::translate("MainWindowDesign", "\350\257\235\351\242\230\345\210\227\350\241\250\357\274\232", Q_NULLPTR));
        refreash_topic_btn->setText(QApplication::translate("MainWindowDesign", "\345\210\267\346\226\260", Q_NULLPTR));
        btn_status->setText(QString());
        btn_control->setText(QString());
        btn_dash->setText(QString());
        btn_map->setText(QString());
        btn_other->setText(QString());
        settings_btn->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class MainWindowDesign: public Ui_MainWindowDesign {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAIN_WINDOW_H
