.class Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;
.super Lcom/github/mikephil/charting/renderer/LineChartRenderer;
.source "MineLineChartRender.java"


# instance fields
.field private mValueGridLineBuffer:[F

.field private mValueGridLineColor:I

.field private mValueGridLinePaint:Landroid/graphics/Paint;

.field private mValueGridLineRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "chart",
            "animator",
            "viewPortHandler"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    const p1, -0x777778

    .line 25
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mValueGridLineColor:I

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 26
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mValueGridLineBuffer:[F

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mValueGridLinePaint:Landroid/graphics/Paint;

    .line 28
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mValueGridLineRect:Landroid/graphics/RectF;

    .line 33
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mValueGridLinePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mValueGridLineColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mValueGridLinePaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private drawValueGridLine(Landroid/graphics/Canvas;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mValueGridLineBuffer:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v4, 0x1

    .line 59
    aput v3, v1, v4

    .line 61
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    .line 63
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 65
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .line 67
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawCirclesEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 68
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryCount()I

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_3

    .line 72
    :cond_0
    iget-object v6, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    .line 74
    iget-object v7, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget-object v8, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-virtual {v7, v8, v5}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 76
    iget-object v7, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v7, v7, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    iget-object v8, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v8, v8, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v7, v8

    .line 78
    iget-object v8, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v8, v8, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    :goto_1
    if-gt v8, v7, :cond_5

    .line 80
    invoke-interface {v5, v8}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_3

    .line 86
    :cond_1
    iget-object v10, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mValueGridLineBuffer:[F

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v11

    aput v11, v10, v2

    .line 87
    iget-object v10, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mValueGridLineBuffer:[F

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v9

    mul-float v9, v9, v0

    aput v9, v10, v4

    .line 89
    iget-object v9, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mValueGridLineBuffer:[F

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 91
    iget-object v9, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v10, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mValueGridLineBuffer:[F

    aget v10, v10, v2

    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_3

    .line 95
    :cond_2
    iget-object v9, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v10, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mValueGridLineBuffer:[F

    aget v10, v10, v2

    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v10, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mValueGridLineBuffer:[F

    aget v10, v10, v4

    .line 96
    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    .line 100
    :cond_3
    iget-object v9, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mValueGridLineBuffer:[F

    aget v9, v9, v2

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float/2addr v9, v10

    .line 101
    iget-object v10, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v11, v9

    .line 103
    iget-object v12, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v12

    .line 104
    iget-object v13, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mValueGridLineRect:Landroid/graphics/RectF;

    invoke-virtual {v13, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 105
    iget-object v9, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mValueGridLineRect:Landroid/graphics/RectF;

    iget-object v10, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mValueGridLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method protected drawCircles(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawCircles(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->drawValueGridLine(Landroid/graphics/Canvas;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->drawCircles(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setValueGridLineColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 38
    iput p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mValueGridLineColor:I

    .line 39
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChartRender;->mValueGridLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
