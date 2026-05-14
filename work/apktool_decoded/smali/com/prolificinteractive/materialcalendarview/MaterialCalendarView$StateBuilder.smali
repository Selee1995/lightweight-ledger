.class public Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
.super Ljava/lang/Object;
.source "MaterialCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateBuilder"
.end annotation


# instance fields
.field private cacheCurrentPosition:Z

.field private calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

.field private firstDayOfWeek:I

.field private maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field final synthetic this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;


# direct methods
.method public constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V
    .locals 0

    .line 1838
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1832
    sget-object p1, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->MONTHS:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    .line 1833
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->firstDayOfWeek:I

    const/4 p1, 0x0

    .line 1834
    iput-boolean p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->cacheCurrentPosition:Z

    const/4 p1, 0x0

    .line 1835
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1836
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-void
.end method

.method private constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)V
    .locals 0

    .line 1841
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1832
    sget-object p1, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->MONTHS:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    .line 1833
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->firstDayOfWeek:I

    const/4 p1, 0x0

    .line 1834
    iput-boolean p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->cacheCurrentPosition:Z

    const/4 p1, 0x0

    .line 1835
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1836
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1842
    invoke-static {p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$1500(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    move-result-object p1

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    .line 1843
    invoke-static {p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$1600(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)I

    move-result p1

    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->firstDayOfWeek:I

    .line 1844
    invoke-static {p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$1700(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1845
    invoke-static {p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$1800(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1846
    invoke-static {p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$700(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->cacheCurrentPosition:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;)V
    .locals 0

    .line 1831
    invoke-direct {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;)I
    .locals 0

    .line 1831
    iget p0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->firstDayOfWeek:I

    return p0
.end method

.method static synthetic access$1100(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 0

    .line 1831
    iget-object p0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 0

    .line 1831
    iget-object p0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;)Z
    .locals 0

    .line 1831
    iget-boolean p0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->cacheCurrentPosition:Z

    return p0
.end method

.method static synthetic access$900(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;)Lcom/prolificinteractive/materialcalendarview/CalendarMode;
    .locals 0

    .line 1831
    iget-object p0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    return-object p0
.end method


# virtual methods
.method public commit()V
    .locals 3

    .line 1937
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    new-instance v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;)V

    invoke-static {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$2000(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)V

    return-void
.end method

.method public isCacheCalendarPositionEnabled(Z)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 0

    .line 1932
    iput-boolean p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->cacheCurrentPosition:Z

    return-object p0
.end method

.method public setCalendarDisplayMode(Lcom/prolificinteractive/materialcalendarview/CalendarMode;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 0

    .line 1870
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    return-object p0
.end method

.method public setFirstDayOfWeek(I)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 0

    .line 1858
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->firstDayOfWeek:I

    return-object p0
.end method

.method public setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 0

    .line 1919
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object p0
.end method

.method public setMaximumDate(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 0

    .line 1903
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    return-object p0
.end method

.method public setMaximumDate(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 0

    .line 1911
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    return-object p0
.end method

.method public setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 0

    .line 1895
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object p0
.end method

.method public setMinimumDate(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 0

    .line 1879
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    return-object p0
.end method

.method public setMinimumDate(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 0

    .line 1887
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    return-object p0
.end method
