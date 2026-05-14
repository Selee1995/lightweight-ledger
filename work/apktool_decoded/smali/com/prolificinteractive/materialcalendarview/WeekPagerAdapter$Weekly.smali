.class public Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter$Weekly;
.super Ljava/lang/Object;
.source "WeekPagerAdapter.java"

# interfaces
.implements Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Weekly"
.end annotation


# static fields
.field private static final DAYS_IN_WEEK:I = 0x7


# instance fields
.field private final count:I

.field private final min:Lcom/prolificinteractive/materialcalendarview/CalendarDay;


# direct methods
.method public constructor <init>(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-direct {p0, p1, p3}, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter$Weekly;->getFirstDayOfWeek(Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter$Weekly;->min:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter$Weekly;->weekNumberDifference(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter$Weekly;->count:I

    return-void
.end method

.method private getFirstDayOfWeek(Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 2

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 83
    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->copyTo(Ljava/util/Calendar;)V

    :goto_0
    const/4 p1, 0x7

    .line 84
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_0

    const/4 v1, -0x1

    .line 85
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    return-object p1
.end method

.method private weekNumberDifference(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I
    .locals 5

    .line 69
    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 71
    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object p2

    const/16 v2, 0x10

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 72
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 74
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, p2

    add-long/2addr v0, v3

    int-to-long p1, p1

    sub-long/2addr v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    const-wide/16 v0, 0x7

    .line 75
    div-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter$Weekly;->count:I

    return v0
.end method

.method public getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter$Weekly;->min:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 61
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    mul-int/lit8 p1, p1, 0x7

    int-to-long v3, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 65
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter$Weekly;->min:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {p0, v0, p1}, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter$Weekly;->weekNumberDifference(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result p1

    return p1
.end method
