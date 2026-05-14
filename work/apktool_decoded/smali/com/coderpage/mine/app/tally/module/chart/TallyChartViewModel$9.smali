.class Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$9;
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
        "Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;",
        ">;",
        "Lcom/coderpage/base/common/IError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

.field final synthetic val$callback:Lcom/coderpage/base/common/SimpleCallback;

.field final synthetic val$queryCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$queryModuleCount:I


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;Ljava/util/concurrent/atomic/AtomicInteger;ILcom/coderpage/base/common/SimpleCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$queryCount",
            "val$queryModuleCount",
            "val$callback"
        }
    .end annotation

    .line 566
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$9;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$9;->val$queryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p3, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$9;->val$queryModuleCount:I

    iput-object p4, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$9;->val$callback:Lcom/coderpage/base/common/SimpleCallback;

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

    .line 580
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$9;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->access$1400(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 581
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$9;->val$queryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$9;->val$queryModuleCount:I

    if-ne p1, v0, :cond_0

    .line 582
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$9;->val$callback:Lcom/coderpage/base/common/SimpleCallback;

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

    .line 566
    check-cast p1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$9;->failure(Lcom/coderpage/base/common/IError;)V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "categoryData"
        }
    .end annotation

    .line 566
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$9;->success(Ljava/util/List;)V

    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;",
            ">;)V"
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$9;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->access$1400(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 571
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$9;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->access$1400(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 573
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$9;->val$queryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$9;->val$queryModuleCount:I

    if-ne p1, v0, :cond_1

    .line 574
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel$9;->val$callback:Lcom/coderpage/base/common/SimpleCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/coderpage/base/common/SimpleCallback;->success(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
