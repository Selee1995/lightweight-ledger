.class public Lcom/prolificinteractive/materialcalendarview/format/DateFormatDayFormatter;
.super Ljava/lang/Object;
.source "DateFormatDayFormatter.java"

# interfaces
.implements Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "d"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/format/DateFormatDayFormatter;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/text/DateFormat;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/format/DateFormatDayFormatter;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public format(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/format/DateFormatDayFormatter;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
