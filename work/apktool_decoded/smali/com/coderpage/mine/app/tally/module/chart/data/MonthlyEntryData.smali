.class public Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;
.super Ljava/lang/Object;
.source "MonthlyEntryData.java"


# instance fields
.field private expenseAmount:D

.field private incomeAmount:D

.field private month:Lcom/coderpage/mine/app/tally/module/chart/data/Month;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpenseAmount()D
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;->expenseAmount:D

    return-wide v0
.end method

.method public getIncomeAmount()D
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;->incomeAmount:D

    return-wide v0
.end method

.method public getMonth()Lcom/coderpage/mine/app/tally/module/chart/data/Month;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;->month:Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    return-object v0
.end method

.method public setExpenseAmount(D)Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expenseAmount"
        }
    .end annotation

    .line 28
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;->expenseAmount:D

    return-object p0
.end method

.method public setIncomeAmount(D)Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "incomeAmount"
        }
    .end annotation

    .line 37
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;->incomeAmount:D

    return-object p0
.end method

.method public setMonth(Lcom/coderpage/mine/app/tally/module/chart/data/Month;)Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "month"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyEntryData;->month:Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    return-object p0
.end method
