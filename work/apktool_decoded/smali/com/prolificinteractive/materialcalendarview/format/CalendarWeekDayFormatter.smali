.class public Lcom/prolificinteractive/materialcalendarview/format/CalendarWeekDayFormatter;
.super Ljava/lang/Object;
.source "CalendarWeekDayFormatter.java"

# interfaces
.implements Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;


# instance fields
.field private final calendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/prolificinteractive/materialcalendarview/format/CalendarWeekDayFormatter;-><init>(Ljava/util/Calendar;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 26
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 27
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/format/CalendarWeekDayFormatter;->calendar:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/CharSequence;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/format/CalendarWeekDayFormatter;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 44
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/format/CalendarWeekDayFormatter;->calendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
