.class public final synthetic Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$CXPd-o5rfaHevzoi6-EmHIcfAoo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$CXPd-o5rfaHevzoi6-EmHIcfAoo;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$CXPd-o5rfaHevzoi6-EmHIcfAoo;->f$0:Ljava/util/List;

    check-cast p3, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;

    invoke-static {v0, p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->lambda$showPieChart$13(Ljava/util/List;IILcom/coderpage/mine/app/tally/module/chart/data/CategoryData;)V

    return-void
.end method
