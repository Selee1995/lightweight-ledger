.class public Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;
.super Ljava/lang/Object;
.source "HomeTodayDayRecordsModel.java"


# instance fields
.field private recent3DayRecordsCount:I

.field private todayBudgetDisplayAmount:Ljava/lang/String;

.field private toadyExpenseAmount:D

.field private todayIncomeAmount:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayExpenseAmount()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\uFFE5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;->toadyExpenseAmount:D

    invoke-static {v1, v2}, Lcom/coderpage/mine/app/tally/common/utils/TallyUtils;->formatDisplayMoney(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayBudgetAmount()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;->todayBudgetDisplayAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayIncomeAmount()Ljava/lang/String;
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\uFFE5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;->todayIncomeAmount:D

    invoke-static {v1, v2}, Lcom/coderpage/mine/app/tally/common/utils/TallyUtils;->formatDisplayMoney(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecent3DayRecordsCount()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;->recent3DayRecordsCount:I

    return v0
.end method

.method public setDisplayBudgetAmount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "todayBudgetDisplayAmount"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;->todayBudgetDisplayAmount:Ljava/lang/String;

    return-void
.end method

.method public getToadyExpenseAmount()D
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;->toadyExpenseAmount:D

    return-wide v0
.end method

.method public getTodayIncomeAmount()D
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;->todayIncomeAmount:D

    return-wide v0
.end method

.method public setRecent3DayRecordsCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recent3DayRecordsCount"
        }
    .end annotation

    .line 26
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;->recent3DayRecordsCount:I

    return-void
.end method

.method public setToadyExpenseAmount(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toadyExpenseAmount"
        }
    .end annotation

    .line 34
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;->toadyExpenseAmount:D

    return-void
.end method

.method public setTodayIncomeAmount(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "todayIncomeAmount"
        }
    .end annotation

    .line 42
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;->todayIncomeAmount:D

    return-void
.end method
