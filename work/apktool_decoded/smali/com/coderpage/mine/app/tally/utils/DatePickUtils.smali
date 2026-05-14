.class public Lcom/coderpage/mine/app/tally/utils/DatePickUtils;
.super Ljava/lang/Object;
.source "DatePickUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$showDatePickDialog_Lollipop$4(Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;->onCancelClick(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showDatePickDialog_Lollipop$5(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/util/Calendar;Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 118
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 119
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p5, 0x0

    .line 120
    invoke-static {p0, p5}, Lcom/coderpage/base/utils/CommonUtils;->string2int(Ljava/lang/String;I)I

    move-result p0

    .line 121
    invoke-static {p1, p5}, Lcom/coderpage/base/utils/CommonUtils;->string2int(Ljava/lang/String;I)I

    move-result p1

    const/16 p5, 0x17

    .line 122
    invoke-static {p0, p5}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 p5, 0x3b

    .line 123
    invoke-static {p1, p5}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 p5, 0xb

    .line 125
    invoke-virtual {p2, p5, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 126
    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->set(II)V

    if-eqz p3, :cond_0

    .line 129
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-virtual {p3, p4, p0, p1}, Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;->onConfirmClick(Landroid/content/DialogInterface;J)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showDatePickDialog_Lollipop$6(Ljava/util/Calendar;Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;Landroid/support/v7/app/AlertDialog;Landroid/widget/CalendarView;III)V
    .locals 0

    const/4 p3, 0x1

    .line 137
    invoke-virtual {p0, p3, p4}, Ljava/util/Calendar;->set(II)V

    const/4 p3, 0x2

    .line 138
    invoke-virtual {p0, p3, p5}, Ljava/util/Calendar;->set(II)V

    const/4 p3, 0x5

    .line 139
    invoke-virtual {p0, p3, p6}, Ljava/util/Calendar;->set(II)V

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;->onDatePick(Landroid/content/DialogInterface;III)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showDatePickDialog_Low$0(Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;->onCancelClick(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showDatePickDialog_Low$1(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 58
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p5, 0x0

    .line 60
    invoke-static {p0, p5}, Lcom/coderpage/base/utils/CommonUtils;->string2int(Ljava/lang/String;I)I

    move-result p0

    .line 61
    invoke-static {p1, p5}, Lcom/coderpage/base/utils/CommonUtils;->string2int(Ljava/lang/String;I)I

    move-result p1

    const/16 p5, 0x17

    .line 62
    invoke-static {p0, p5}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 p5, 0x3b

    .line 63
    invoke-static {p1, p5}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 65
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p5

    .line 66
    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getSelectedDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p2, 0xb

    .line 67
    invoke-virtual {p5, p2, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 68
    invoke-virtual {p5, p0, p1}, Ljava/util/Calendar;->set(II)V

    if-eqz p3, :cond_0

    .line 71
    invoke-virtual {p5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-virtual {p3, p4, p0, p1}, Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;->onConfirmClick(Landroid/content/DialogInterface;J)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showDatePickDialog_Low$2(Ljava/lang/String;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 78
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result p1

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$showDatePickDialog_Low$3(Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;Landroid/support/v7/app/AlertDialog;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result p2

    invoke-virtual {p3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result p4

    invoke-virtual {p3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDay()I

    move-result p3

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;->onDatePick(Landroid/content/DialogInterface;III)V

    :cond_0
    return-void
.end method

.method public static showDatePickDialog(Landroid/app/Activity;JLcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "activity",
            "selectedDate",
            "listener"
        }
    .end annotation

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 29
    invoke-static {p0, p1, p2, p3}, Lcom/coderpage/mine/app/tally/utils/DatePickUtils;->showDatePickDialog_Lollipop(Landroid/app/Activity;JLcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/coderpage/mine/app/tally/utils/DatePickUtils;->showDatePickDialog_Low(Landroid/app/Activity;JLcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;)V

    :goto_0
    return-void
.end method

.method private static showDatePickDialog_Lollipop(Landroid/app/Activity;JLcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "activity",
            "selectedDate",
            "listener"
        }
    .end annotation

    .line 92
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002f

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 93
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090029

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CalendarView;

    const v2, 0x7f090053

    .line 96
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f090054

    .line 97
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 99
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 100
    invoke-virtual {v4, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v5, 0xb

    .line 101
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0xc

    .line 102
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {v1, p1, p2}, Landroid/widget/CalendarView;->setDate(J)V

    .line 106
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 107
    invoke-virtual {v4, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 109
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, ""

    .line 110
    invoke-virtual {p1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 111
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$FqRoORBpEgEM4D1NczGolCXxwU0;

    invoke-direct {p1, p3}, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$FqRoORBpEgEM4D1NczGolCXxwU0;-><init>(Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;)V

    const p2, 0x7f0e0027

    .line 112
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$6RikfBNrbSABT23VDojBtOSpuJU;

    invoke-direct {p1, v2, v3, v4, p3}, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$6RikfBNrbSABT23VDojBtOSpuJU;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/util/Calendar;Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;)V

    const p2, 0x7f0e002a

    .line 117
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p0

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    .line 135
    new-instance p1, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$OhscM-FMRFZtRKlxL6RAVH-IM-M;

    invoke-direct {p1, v4, p3, p0}, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$OhscM-FMRFZtRKlxL6RAVH-IM-M;-><init>(Ljava/util/Calendar;Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v1, p1}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    .line 144
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private static showDatePickDialog_Low(Landroid/app/Activity;JLcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "activity",
            "selectedDate",
            "listener"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002f

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 37
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090029

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    const v2, 0x7f090053

    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f090054

    .line 41
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 43
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 44
    invoke-virtual {v4, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v5, 0xb

    .line 45
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0xc

    .line 46
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 47
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Ljava/util/Date;)V

    .line 49
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, ""

    .line 50
    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 51
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$8fAElcX7O0A_SnmN0A_Feg5Mm9c;

    invoke-direct {p2, p3}, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$8fAElcX7O0A_SnmN0A_Feg5Mm9c;-><init>(Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;)V

    const v0, 0x7f0e0027

    .line 52
    invoke-virtual {p1, v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$uZwET955haZo28isB_CJaUUYdHI;

    invoke-direct {p2, v2, v3, v1, p3}, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$uZwET955haZo28isB_CJaUUYdHI;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;)V

    const v0, 0x7f0e002a

    .line 57
    invoke-virtual {p1, v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const p2, 0x7f0e00c4

    .line 76
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 77
    new-instance p2, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$axbo0k2UldUznnSa_30yCKhOviM;

    invoke-direct {p2, p0}, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$axbo0k2UldUznnSa_30yCKhOviM;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V

    .line 79
    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->state()Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->edit()Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->setMaximumDate(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->commit()V

    .line 80
    new-instance p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$5neANcxel3D49qlmZXoN1n7bLO0;

    invoke-direct {p0, p3, p1}, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$5neANcxel3D49qlmZXoN1n7bLO0;-><init>(Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v1, p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setOnDateChangedListener(Lcom/prolificinteractive/materialcalendarview/OnDateSelectedListener;)V

    .line 86
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method
