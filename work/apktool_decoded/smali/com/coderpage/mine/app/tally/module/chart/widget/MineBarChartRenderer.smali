.class public Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;
.super Lcom/github/mikephil/charting/renderer/BarChartRenderer;
.source "MineBarChartRenderer.java"


# instance fields
.field private mBarHighlightRectBuffer:Landroid/graphics/RectF;

.field private mBarRectBuffer:Landroid/graphics/RectF;

.field private mBarRectRadii:[F

.field private mBarShadowRectBuffer:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
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

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 32
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    .line 33
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarRectBuffer:Landroid/graphics/RectF;

    .line 34
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarHighlightRectBuffer:Landroid/graphics/RectF;

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 35
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarRectRadii:[F

    return-void
.end method


# virtual methods
.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "dataSet",
            "index"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 40
    iget-object v4, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v4

    .line 42
    iget-object v5, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarBorderColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v5, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarBorderWidth()F

    move-result v6

    invoke-static {v6}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarBorderWidth()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    .line 47
    iget-object v5, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v5

    .line 48
    iget-object v7, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v7

    .line 51
    iget-object v8, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isDrawBarShadowEnabled()Z

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x0

    if-eqz v8, :cond_2

    .line 52
    iget-object v8, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarShadowColor()I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v8, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v8

    .line 56
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v8

    div-float/2addr v8, v9

    .line 60
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v5

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_2

    .line 64
    invoke-interface {v2, v12}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v13

    check-cast v13, Lcom/github/mikephil/charting/data/BarEntry;

    .line 66
    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v13

    .line 68
    iget-object v14, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    sub-float v15, v13, v8

    iput v15, v14, Landroid/graphics/RectF;->left:F

    .line 69
    iget-object v14, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    add-float/2addr v13, v8

    iput v13, v14, Landroid/graphics/RectF;->right:F

    .line 71
    iget-object v13, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    invoke-virtual {v4, v13}, Lcom/github/mikephil/charting/utils/Transformer;->rectValueToPixel(Landroid/graphics/RectF;)V

    .line 73
    iget-object v13, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v14, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->right:F

    invoke-virtual {v13, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v13

    if-nez v13, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    iget-object v13, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v14, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    invoke-virtual {v13, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v13

    if-nez v13, :cond_1

    goto :goto_2

    .line 81
    :cond_1
    iget-object v13, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget-object v14, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v14

    iput v14, v13, Landroid/graphics/RectF;->top:F

    .line 82
    iget-object v13, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget-object v14, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v14

    iput v14, v13, Landroid/graphics/RectF;->bottom:F

    .line 84
    iget-object v13, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget v14, v13, Landroid/graphics/RectF;->left:F

    iget-object v15, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v15

    div-float/2addr v15, v9

    add-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    sub-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/RectF;->left:F

    .line 85
    iget-object v13, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget v14, v13, Landroid/graphics/RectF;->left:F

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/RectF;->right:F

    .line 87
    iget-object v13, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget-object v14, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 92
    :cond_2
    :goto_2
    iget-object v8, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    aget-object v8, v8, v3

    .line 93
    invoke-virtual {v8, v5, v7}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setPhases(FF)V

    .line 94
    invoke-virtual {v8, v3}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setDataSet(I)V

    .line 95
    iget-object v3, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v3

    invoke-virtual {v8, v3}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setInverted(Z)V

    .line 96
    iget-object v3, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v3

    invoke-virtual {v8, v3}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setBarWidth(F)V

    .line 98
    invoke-virtual {v8, v2}, Lcom/github/mikephil/charting/buffer/BarBuffer;->feed(Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V

    .line 100
    iget-object v3, v8, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 102
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getColors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_4

    .line 105
    iget-object v5, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getColor()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    :cond_4
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    const/4 v7, 0x0

    .line 109
    :goto_4
    invoke-virtual {v8}, Lcom/github/mikephil/charting/buffer/BarBuffer;->size()I

    move-result v11

    if-ge v7, v11, :cond_8

    .line 111
    iget-object v11, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v12, v8, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v13, v7, 0x2

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_5

    .line 115
    :cond_5
    iget-object v11, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v12, v8, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v12, v12, v7

    invoke-virtual {v11, v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_6

    :cond_6
    if-nez v3, :cond_7

    .line 122
    iget-object v11, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v12, v7, 0x4

    invoke-interface {v2, v12}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    :cond_7
    iget-object v11, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarRectBuffer:Landroid/graphics/RectF;

    iget-object v12, v8, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v12, v12, v7

    iget-object v14, v8, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v15, v7, 0x1

    aget v14, v14, v15

    iget-object v15, v8, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v13, v15, v13

    iget-object v15, v8, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v16, v7, 0x3

    aget v15, v15, v16

    invoke-virtual {v11, v12, v14, v13, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 129
    iget-object v11, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarRectBuffer:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    div-float/2addr v11, v9

    .line 130
    iget-object v12, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarRectRadii:[F

    aput v11, v12, v10

    .line 131
    aput v11, v12, v4

    const/4 v13, 0x2

    .line 132
    aput v11, v12, v13

    const/4 v13, 0x3

    .line 133
    aput v11, v12, v13

    const/4 v11, 0x4

    .line 134
    aput v6, v12, v11

    const/4 v11, 0x5

    .line 135
    aput v6, v12, v11

    const/4 v11, 0x6

    .line 136
    aput v6, v12, v11

    const/4 v11, 0x7

    .line 137
    aput v6, v12, v11

    .line 139
    iget-object v11, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarRectBuffer:Landroid/graphics/RectF;

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v11, v12, v13}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :goto_5
    add-int/lit8 v7, v7, 0x4

    goto :goto_4

    .line 141
    :cond_8
    :goto_6
    iget-object v2, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "indices"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 147
    iget-object v0, v6, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v8

    .line 149
    array-length v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_6

    aget-object v12, v7, v11

    .line 151
    invoke-virtual {v12}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    if-eqz v0, :cond_5

    .line 153
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isHighlightEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 157
    :cond_0
    invoke-virtual {v12}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v1

    invoke-virtual {v12}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForXValue(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarEntry;

    .line 159
    invoke-virtual {v6, v1, v0}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->isInBoundsX(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 163
    :cond_1
    iget-object v2, v6, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v5

    .line 165
    iget-object v2, v6, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getHighLightColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v2, v6, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getHighLightAlpha()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 168
    invoke-virtual {v12}, Lcom/github/mikephil/charting/highlight/Highlight;->getStackIndex()I

    move-result v0

    const/4 v13, 0x1

    if-ltz v0, :cond_2

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->isStacked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/4 v14, 0x0

    if-eqz v0, :cond_4

    .line 175
    iget-object v0, v6, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isHighlightFullBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->getPositiveSum()F

    move-result v0

    .line 178
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v2

    neg-float v2, v2

    move v3, v2

    move v2, v0

    goto :goto_2

    .line 182
    :cond_3
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->getRanges()[Lcom/github/mikephil/charting/highlight/Range;

    move-result-object v0

    invoke-virtual {v12}, Lcom/github/mikephil/charting/highlight/Highlight;->getStackIndex()I

    move-result v2

    aget-object v0, v0, v2

    .line 184
    iget v2, v0, Lcom/github/mikephil/charting/highlight/Range;->from:F

    .line 185
    iget v0, v0, Lcom/github/mikephil/charting/highlight/Range;->to:F

    move v3, v0

    goto :goto_2

    .line 189
    :cond_4
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v0

    move v2, v0

    const/4 v3, 0x0

    .line 193
    :goto_2
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v1

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v0

    const/high16 v15, 0x40000000    # 2.0f

    div-float v4, v0, v15

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->prepareBarHighlight(FFFFLcom/github/mikephil/charting/utils/Transformer;)V

    .line 195
    iget-object v0, v6, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v12, v0}, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->setHighlightDrawPos(Lcom/github/mikephil/charting/highlight/Highlight;Landroid/graphics/RectF;)V

    .line 197
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 198
    iget-object v1, v6, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v15

    .line 199
    iget-object v2, v6, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarRectRadii:[F

    aput v1, v2, v10

    .line 200
    aput v1, v2, v13

    const/4 v3, 0x2

    .line 201
    aput v1, v2, v3

    const/4 v3, 0x3

    .line 202
    aput v1, v2, v3

    const/4 v1, 0x4

    .line 203
    aput v14, v2, v1

    const/4 v1, 0x5

    .line 204
    aput v14, v2, v1

    const/4 v1, 0x6

    .line 205
    aput v14, v2, v1

    const/4 v1, 0x7

    .line 206
    aput v14, v2, v1

    .line 208
    iget-object v1, v6, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    iget-object v2, v6, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarRectRadii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 210
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v1

    div-float/2addr v1, v15

    .line 212
    iget-object v2, v6, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, v6, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v15

    add-float/2addr v2, v3

    .line 214
    iget-object v3, v6, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarHighlightRectBuffer:Landroid/graphics/RectF;

    iget-object v4, v6, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 215
    iget-object v3, v6, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarHighlightRectBuffer:Landroid/graphics/RectF;

    iget-object v4, v6, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 216
    iget-object v3, v6, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarHighlightRectBuffer:Landroid/graphics/RectF;

    sub-float v4, v2, v1

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 217
    iget-object v3, v6, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarHighlightRectBuffer:Landroid/graphics/RectF;

    add-float/2addr v2, v1

    iput v2, v3, Landroid/graphics/RectF;->right:F

    .line 218
    iget-object v1, v6, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mBarHighlightRectBuffer:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 220
    iget-object v1, v6, Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v2, p1

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method
