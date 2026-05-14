.class public Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;
.super Ljava/lang/Object;
.source "MonthlyData.java"


# instance fields
.field private amount:F

.field private count:J

.field private month:Lcom/coderpage/mine/app/tally/module/chart/data/Month;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()F
    .locals 1

    .line 28
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->amount:F

    return v0
.end method

.method public getCount()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->count:J

    return-wide v0
.end method

.method public getMonth()Lcom/coderpage/mine/app/tally/module/chart/data/Month;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->month:Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    return-object v0
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

    .line 32
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->amount:F

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

    .line 40
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->count:J

    return-void
.end method

.method public setMonth(Lcom/coderpage/mine/app/tally/module/chart/data/Month;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "month"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->month:Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 45
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->month:Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;->amount:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "[month=%s,total=%f]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
