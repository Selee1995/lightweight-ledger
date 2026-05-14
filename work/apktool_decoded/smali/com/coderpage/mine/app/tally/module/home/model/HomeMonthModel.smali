.class public Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;
.super Ljava/lang/Object;
.source "HomeMonthModel.java"


# instance fields
.field private monthCategoryExpenseData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private monthExpenseAmount:D

.field private monthInComeAmount:D

.field private todayExpenseAmount:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMonthCategoryExpenseData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;->monthCategoryExpenseData:Ljava/util/List;

    return-object v0
.end method

.method public getMonthExpenseAmount()D
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;->monthExpenseAmount:D

    return-wide v0
.end method

.method public getMonthInComeAmount()D
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;->monthInComeAmount:D

    return-wide v0
.end method

.method public getTodayExpenseAmount()D
    .locals 2

    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;->todayExpenseAmount:D

    return-wide v0
.end method

.method public setMonthCategoryExpenseData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monthCategoryExpenseData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;->monthCategoryExpenseData:Ljava/util/List;

    return-void
.end method

.method public setMonthExpenseAmount(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monthExpenseAmount"
        }
    .end annotation

    .line 30
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;->monthExpenseAmount:D

    return-void
.end method

.method public setMonthInComeAmount(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monthInComeAmount"
        }
    .end annotation

    .line 38
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;->monthInComeAmount:D

    return-void
.end method

.method public setTodayExpenseAmount(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "todayExpenseAmount"
        }
    .end annotation

    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;->todayExpenseAmount:D

    return-void
.end method
