.class Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;
.super Ljava/lang/Object;
.source "TallyChartViewModel.java"

# interfaces
.implements Lcom/coderpage/base/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->queryDailyData(Lcom/coderpage/base/common/SimpleCallback;)V
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
        "Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;",
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

    .line 417
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    iput-wide p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;->val$startTime:J

    iput-wide p4, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;->val$endTime:J

    iput-object p6, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;->val$queryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p7, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;->val$queryModuleCount:I

    iput-object p8, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;->val$callback:Lcom/coderpage/base/common/SimpleCallback;

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

    .line 430
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->access$800(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 431
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;->val$queryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;->val$queryModuleCount:I

    if-ne p1, v0, :cond_0

    .line 432
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;->val$callback:Lcom/coderpage/base/common/SimpleCallback;

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

    .line 417
    check-cast p1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;->failure(Lcom/coderpage/base/common/IError;)V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "dailyDataList"
        }
    .end annotation

    .line 417
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;->success(Ljava/util/List;)V

    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dailyDataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/DailyData;",
            ">;)V"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    iget-wide v1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;->val$startTime:J

    iget-wide v3, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;->val$endTime:J

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->access$600(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;JJLjava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 421
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->access$800(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 422
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->access$800(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 423
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;->val$queryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;->val$queryModuleCount:I

    if-ne p1, v0, :cond_0

    .line 424
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$4;->val$callback:Lcom/coderpage/base/common/SimpleCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
