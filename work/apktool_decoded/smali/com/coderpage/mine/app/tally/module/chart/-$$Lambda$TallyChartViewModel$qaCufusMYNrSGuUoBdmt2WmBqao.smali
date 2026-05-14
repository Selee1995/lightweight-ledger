.class public final synthetic Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$qaCufusMYNrSGuUoBdmt2WmBqao;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Consumer;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/base/utils/WrappedObject;

.field public final synthetic f$1:Lcom/coderpage/base/utils/WrappedLong;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/base/utils/WrappedObject;Lcom/coderpage/base/utils/WrappedLong;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$qaCufusMYNrSGuUoBdmt2WmBqao;->f$0:Lcom/coderpage/base/utils/WrappedObject;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$qaCufusMYNrSGuUoBdmt2WmBqao;->f$1:Lcom/coderpage/base/utils/WrappedLong;

    return-void
.end method


# virtual methods
.method public final accept(IILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$qaCufusMYNrSGuUoBdmt2WmBqao;->f$0:Lcom/coderpage/base/utils/WrappedObject;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$qaCufusMYNrSGuUoBdmt2WmBqao;->f$1:Lcom/coderpage/base/utils/WrappedLong;

    check-cast p3, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->lambda$displayMonthlyIncomeAmountTotal$10(Lcom/coderpage/base/utils/WrappedObject;Lcom/coderpage/base/utils/WrappedLong;IILcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;)V

    return-void
.end method
