.class public Lcom/coderpage/mine/app/tally/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final DAY_MILLSECONDS:I = 0x5265c00

.field private static mHourMinFormat:Ljava/text/SimpleDateFormat;

.field private static mMonthDayFormat:Ljava/text/SimpleDateFormat;

.field private static mYearMonthDayFormat:Ljava/text/SimpleDateFormat;

.field private static mYearMonthDayHourMinuteFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureFormat()V
    .locals 6

    .line 78
    sget-object v0, Lcom/coderpage/mine/app/tally/utils/TimeUtils;->mHourMinFormat:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v0

    const v1, 0x7f0e0031

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v1

    const v2, 0x7f0e002c

    invoke-static {v1, v2}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v2

    const v3, 0x7f0e002e

    invoke-static {v2, v3}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v3

    const v4, 0x7f0e0032

    invoke-static {v3, v4}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 83
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v4, Lcom/coderpage/mine/app/tally/utils/TimeUtils;->mYearMonthDayFormat:Ljava/text/SimpleDateFormat;

    .line 84
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/coderpage/mine/app/tally/utils/TimeUtils;->mMonthDayFormat:Ljava/text/SimpleDateFormat;

    .line 85
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/coderpage/mine/app/tally/utils/TimeUtils;->mHourMinFormat:Ljava/text/SimpleDateFormat;

    .line 86
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/coderpage/mine/app/tally/utils/TimeUtils;->mYearMonthDayHourMinuteFormat:Ljava/text/SimpleDateFormat;

    :cond_0
    return-void
.end method

.method public static declared-synchronized getDatePreciseMinute(J)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeMillis"
        }
    .end annotation

    const-class v0, Lcom/coderpage/mine/app/tally/utils/TimeUtils;

    monitor-enter v0

    .line 25
    :try_start_0
    invoke-static {}, Lcom/coderpage/mine/app/tally/utils/TimeUtils;->ensureFormat()V

    .line 26
    sget-object v1, Lcom/coderpage/mine/app/tally/utils/TimeUtils;->mYearMonthDayHourMinuteFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getDaysTotalOfMonth(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "year",
            "month"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 63
    rem-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 p0, 0x1d

    return p0

    :cond_1
    const/16 p0, 0x1c

    return p0

    :cond_2
    if-eq p1, v0, :cond_4

    const/4 p0, 0x3

    if-eq p1, p0, :cond_4

    const/4 p0, 0x5

    if-eq p1, p0, :cond_4

    const/4 p0, 0x7

    if-eq p1, p0, :cond_4

    const/16 p0, 0x8

    if-eq p1, p0, :cond_4

    const/16 p0, 0xa

    if-eq p1, p0, :cond_4

    const/16 p0, 0xc

    if-ne p1, p0, :cond_3

    goto :goto_1

    :cond_3
    const/16 p0, 0x1e

    return p0

    :cond_4
    :goto_1
    const/16 p0, 0x1f

    return p0
.end method

.method public static declared-synchronized getRecordDisplayDate(J)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeMillis"
        }
    .end annotation

    const-class v0, Lcom/coderpage/mine/app/tally/utils/TimeUtils;

    monitor-enter v0

    .line 30
    :try_start_0
    invoke-static {}, Lcom/coderpage/mine/app/tally/utils/TimeUtils;->ensureFormat()V

    .line 32
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    .line 33
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 34
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    .line 35
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 37
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    .line 39
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 40
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-le v3, p0, :cond_0

    .line 43
    sget-object p0, Lcom/coderpage/mine/app/tally/utils/TimeUtils;->mYearMonthDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    if-gt v5, p1, :cond_2

    if-le v7, v2, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    :try_start_1
    sget-object p0, Lcom/coderpage/mine/app/tally/utils/TimeUtils;->mHourMinFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 47
    :cond_2
    :goto_0
    :try_start_2
    sget-object p0, Lcom/coderpage/mine/app/tally/utils/TimeUtils;->mMonthDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
