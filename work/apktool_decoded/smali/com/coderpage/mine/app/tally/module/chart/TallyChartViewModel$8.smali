.class Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$8;
.super Ljava/lang/Object;
.source "TallyChartViewModel.java"

# interfaces
.implements Lcom/coderpage/base/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->queryYearlyData(Lcom/coderpage/base/common/SimpleCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coderpage/base/common/Callback<",
        "Ljava/util/List<",
        "Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;",
        ">;",
        "Lcom/coderpage/base/common/IError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

.field final synthetic val$callback:Lcom/coderpage/base/common/SimpleCallback;

.field final synthetic val$endTime:J

.field final synthetic val$queryCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$queryModuleCount:I

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;JJLjava/util/concurrent/atomic/AtomicInteger;ILcom/coderpage/base/common/SimpleCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$startTime",
            "val$endTime",
            "val$queryCount",
            "val$queryModuleCount",
            "val$callback"
        }
    .end annotation

    .line 539
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$8;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    iput-wide p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$8;->val$startTime:J

    iput-wide p4, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$8;->val$endTime:J

    iput-object p6, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$8;->val$queryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p7, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$8;->val$queryModuleCount:I

    iput-object p8, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$8;->val$callback:Lcom/coderpage/base/common/SimpleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/coderpage/base/common/IError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iError"
        }
    .end annotation

    .line 553
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$8;->val$queryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$8;->val$queryModuleCount:I

    if-ne p1, v0, :cond_0

    .line 554
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$8;->val$callback:Lcom/coderpage/base/common/SimpleCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic failure(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "iError"
        }
    .end annotation

    .line 539
    check-cast p1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$8;->failure(Lcom/coderpage/base/common/IError;)V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "list"
        }
    .end annotation

    .line 539
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$8;->success(Ljava/util/List;)V

    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
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

    .line 543
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$8;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    iget-wide v1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$8;->val$startTime:J

    iget-wide v3, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$8;->val$endTime:J

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->access$1100(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;JJLjava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 544
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$8;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->access$1300(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 545
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$8;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->access$1300(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 546
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$8;->val$queryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$8;->val$queryModuleCount:I

    if-ne p1, v0, :cond_0

    .line 547
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$8;->val$callback:Lcom/coderpage/base/common/SimpleCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
