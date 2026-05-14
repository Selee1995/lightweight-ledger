.class public Lcom/prolificinteractive/materialcalendarview/CalendarUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyDateTo(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 2

    .line 61
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getYear(Ljava/util/Calendar;)I

    move-result v0

    .line 62
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getMonth(Ljava/util/Calendar;)I

    move-result v1

    .line 63
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getDay(Ljava/util/Calendar;)I

    move-result p0

    .line 64
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 65
    invoke-virtual {p1, v0, v1, p0}, Ljava/util/Calendar;->set(III)V

    return-void
.end method

.method public static getDay(Ljava/util/Calendar;)I
    .locals 1

    const/4 v0, 0x5

    .line 77
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getDayOfWeek(Ljava/util/Calendar;)I
    .locals 1

    const/4 v0, 0x7

    .line 81
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getInstance()Ljava/util/Calendar;
    .locals 1

    .line 37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 38
    invoke-static {v0, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->copyDateTo(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 1

    .line 24
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 28
    :cond_0
    invoke-static {v0, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->copyDateTo(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static getMonth(Ljava/util/Calendar;)I
    .locals 1

    const/4 v0, 0x2

    .line 73
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getYear(Ljava/util/Calendar;)I
    .locals 1

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static setToFirstDay(Ljava/util/Calendar;)V
    .locals 3

    .line 48
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getYear(Ljava/util/Calendar;)I

    move-result v0

    .line 49
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getMonth(Ljava/util/Calendar;)I

    move-result v1

    .line 50
    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    const/4 v2, 0x1

    .line 51
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    return-void
.end method
