.class public Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartTouchListener;
.super Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;
.source "MineLineChartTouchListener.java"


# instance fields
.field private mDownX:F

.field private mDownY:F

.field private mHandlerByMarkerView:Z


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;Landroid/graphics/Matrix;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "chart",
            "touchMatrix",
            "dragTriggerDistance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/charts/BarLineChartBase<",
            "+",
            "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData<",
            "+",
            "Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet<",
            "+",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;>;>;",
            "Landroid/graphics/Matrix;",
            "F)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;-><init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;Landroid/graphics/Matrix;F)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartTouchListener;->mHandlerByMarkerView:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getMarker()Lcom/github/mikephil/charting/components/IMarker;

    move-result-object v0

    .line 34
    instance-of v1, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkViewMine;

    if-eqz v1, :cond_4

    .line 35
    check-cast v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkViewMine;

    .line 36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-boolean v0, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartTouchListener;->mHandlerByMarkerView:Z

    if-eqz v0, :cond_4

    return v2

    .line 55
    :cond_1
    iget-boolean v1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartTouchListener;->mHandlerByMarkerView:Z

    if-eqz v1, :cond_4

    .line 56
    iget p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartTouchListener;->mDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_2

    iget p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartTouchListener;->mDownY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_2

    .line 57
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkViewMine;->performClick()Z

    :cond_2
    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartTouchListener;->mHandlerByMarkerView:Z

    return v2

    .line 40
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartTouchListener;->mDownX:F

    .line 41
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartTouchListener;->mDownY:F

    .line 42
    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/module/chart/widget/MarkViewMine;->getBound()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartTouchListener;->mHandlerByMarkerView:Z

    if-eqz v0, :cond_4

    return v2

    .line 68
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
