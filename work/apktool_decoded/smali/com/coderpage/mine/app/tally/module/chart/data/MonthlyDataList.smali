.class public Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyDataList;
.super Ljava/lang/Object;
.source "MonthlyDataList.java"


# instance fields
.field private expenseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;",
            ">;"
        }
    .end annotation
.end field

.field private incomeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpenseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyDataList;->expenseList:Ljava/util/List;

    return-object v0
.end method

.method public getIncomeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyDataList;->incomeList:Ljava/util/List;

    return-object v0
.end method

.method public setExpenseList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expenseList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyDataList;->expenseList:Ljava/util/List;

    return-void
.end method

.method public setIncomeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "incomeList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyDataList;->incomeList:Ljava/util/List;

    return-void
.end method
