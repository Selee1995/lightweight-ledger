.class public final synthetic Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$tPLrIwFrWUl6dqY5KSs6jz6GCEo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$tPLrIwFrWUl6dqY5KSs6jz6GCEo;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getFormattedValue(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$tPLrIwFrWUl6dqY5KSs6jz6GCEo;->f$0:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->lambda$showDailyBarChart$7(Ljava/util/List;FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
