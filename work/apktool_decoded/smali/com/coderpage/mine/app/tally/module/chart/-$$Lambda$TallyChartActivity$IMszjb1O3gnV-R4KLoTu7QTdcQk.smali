.class public final synthetic Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$IMszjb1O3gnV-R4KLoTu7QTdcQk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IValueFormatter;


# instance fields
.field public final synthetic f$0:Ljava/text/DecimalFormat;


# direct methods
.method public synthetic constructor <init>(Ljava/text/DecimalFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$IMszjb1O3gnV-R4KLoTu7QTdcQk;->f$0:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public final getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$IMszjb1O3gnV-R4KLoTu7QTdcQk;->f$0:Ljava/text/DecimalFormat;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->lambda$showPieChart$14(Ljava/text/DecimalFormat;FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
