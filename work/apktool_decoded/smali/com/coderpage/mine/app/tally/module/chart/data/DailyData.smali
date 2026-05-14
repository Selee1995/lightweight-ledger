.class public Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;
.super Ljava/lang/Object;
.source "DailyData.java"


# instance fields
.field private amount:F

.field private count:J

.field private dayOfMonth:I

.field private month:I

.field private timeMillis:J

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()F
    .locals 1

    .line 66
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->amount:F

    return v0
.end method

.method public getCount()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->count:J

    return-wide v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->dayOfMonth:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->month:I

    return v0
.end method

.method public getTimeMillis()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->timeMillis:J

    return-wide v0
.end method

.method public getYear()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->year:I

    return v0
.end method

.method public setAmount(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amount"
        }
    .end annotation

    .line 70
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->amount:F

    return-void
.end method

.method public setCount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 62
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->count:J

    return-void
.end method

.method public setDayOfMonth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dayOfMonth"
        }
    .end annotation

    .line 54
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->dayOfMonth:I

    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "month"
        }
    .end annotation

    .line 46
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->month:I

    return-void
.end method

.method public setTimeMillis(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeMillis"
        }
    .end annotation

    .line 30
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->timeMillis:J

    return-void
.end method

.method public setYear(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "year"
        }
    .end annotation

    .line 38
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;->year:I

    return-void
.end method
