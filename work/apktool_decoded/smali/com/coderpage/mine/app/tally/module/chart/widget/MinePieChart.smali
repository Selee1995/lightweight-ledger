.class public Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;
.super Lcom/github/mikephil/charting/charts/PieChart;
.source "MinePieChart.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/PieChart;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/PieChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 3

    .line 30
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/PieChart;->init()V

    .line 31
    new-instance v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;-><init>(Lcom/github/mikephil/charting/charts/PieChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    return-void
.end method
