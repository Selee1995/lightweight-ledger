.class public final synthetic Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$eCgIkei0ZqVWtxOWLpQ9LB0W0FI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/coderpage/base/common/Callback;


# direct methods
.method public synthetic constructor <init>(JJLcom/coderpage/base/common/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$eCgIkei0ZqVWtxOWLpQ9LB0W0FI;->f$0:J

    iput-wide p3, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$eCgIkei0ZqVWtxOWLpQ9LB0W0FI;->f$1:J

    iput-object p5, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$eCgIkei0ZqVWtxOWLpQ9LB0W0FI;->f$2:Lcom/coderpage/base/common/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$eCgIkei0ZqVWtxOWLpQ9LB0W0FI;->f$0:J

    iget-wide v2, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$eCgIkei0ZqVWtxOWLpQ9LB0W0FI;->f$1:J

    iget-object v4, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$eCgIkei0ZqVWtxOWLpQ9LB0W0FI;->f$2:Lcom/coderpage/base/common/Callback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;->lambda$queryCategoryExpense$5(JJLcom/coderpage/base/common/Callback;)V

    return-void
.end method
