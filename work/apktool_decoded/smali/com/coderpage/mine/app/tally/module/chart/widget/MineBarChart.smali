.class public Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;
.super Lcom/github/mikephil/charting/charts/BarChart;
.source "MineBarChart.java"


# instance fields
.field private mDrawMarkOnTop:Z


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

    .line 24
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mDrawMarkOnTop:Z

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

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mDrawMarkOnTop:Z

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

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mDrawMarkOnTop:Z

    return-void
.end method

.method private drawTopMarkers(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->isDrawMarkersEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->valuesToHighlight()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 75
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    aget-object v1, v1, v0

    .line 77
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v2, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    .line 79
    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v3, Lcom/github/mikephil/charting/data/BarData;

    iget-object v4, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarData;->getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    .line 80
    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v4

    if-eqz v3, :cond_5

    int-to-float v4, v4

    .line 83
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v5

    mul-float v2, v2, v5

    cmpl-float v2, v4, v2

    if-lez v2, :cond_2

    goto :goto_1

    .line 87
    :cond_2
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_5

    .line 88
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    check-cast v2, Landroid/view/View;

    .line 90
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 91
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 93
    invoke-virtual {v1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDrawX()F

    move-result v5

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 94
    iget-object v6, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v6, v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v6

    if-nez v6, :cond_3

    .line 95
    iget-object v5, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v5

    :cond_3
    int-to-float v2, v2

    add-float v6, v5, v2

    .line 97
    iget-object v7, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    .line 98
    iget-object v5, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v5

    sub-float/2addr v5, v2

    .line 101
    :cond_4
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 104
    iget-object v4, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    invoke-interface {v4, v3, v1}, Lcom/github/mikephil/charting/components/IMarker;->refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 107
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    invoke-interface {v1, p1, v5, v2}, Lcom/github/mikephil/charting/components/IMarker;->draw(Landroid/graphics/Canvas;FF)V

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method protected drawMarkers(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 57
    iget-boolean v0, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mDrawMarkOnTop:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->drawTopMarkers(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/BarChart;->drawMarkers(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected init()V
    .locals 3

    .line 37
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarChart;->init()V

    .line 38
    new-instance v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartTouchListener;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getMatrixTouch()Landroid/graphics/Matrix;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v0, p0, v1, v2}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartTouchListener;-><init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;Landroid/graphics/Matrix;F)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    .line 39
    new-instance v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->requestDisallowInterceptTouchEvent(Z)V

    .line 52
    :cond_0
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/BarChart;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDrawMarkOnTop(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawMarkOnTop"
        }
    .end annotation

    .line 43
    iput-boolean p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;->mDrawMarkOnTop:Z

    return-void
.end method
