.class public Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;
.super Lcom/github/mikephil/charting/renderer/PieChartRenderer;
.source "MinePieChartRenderer.java"


# instance fields
.field private mLineStartPointPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
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

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;-><init>(Lcom/github/mikephil/charting/charts/PieChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 36
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mLineStartPointPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    .line 37
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mLineStartPointPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 52
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 43
    iget-object v1, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v8

    .line 46
    iget-object v1, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v9

    .line 47
    iget-object v1, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v10

    .line 48
    iget-object v1, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v11

    .line 49
    iget-object v1, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    move-result-object v12

    .line 51
    iget-object v1, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v13

    .line 52
    iget-object v1, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v14

    .line 54
    iget-object v1, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v1

    const/high16 v15, 0x42c80000    # 100.0f

    div-float/2addr v1, v15

    const/high16 v2, 0x41200000    # 10.0f

    div-float v2, v9, v2

    const v3, 0x40666666    # 3.6f

    mul-float v2, v2, v3

    .line 57
    iget-object v3, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v3

    const/high16 v16, 0x40000000    # 2.0f

    if-eqz v3, :cond_0

    mul-float v1, v1, v9

    sub-float v1, v9, v1

    div-float v2, v1, v16

    :cond_0
    sub-float v17, v9, v2

    .line 63
    iget-object v1, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/github/mikephil/charting/data/PieData;

    .line 64
    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/data/PieData;->getDataSets()Ljava/util/List;

    move-result-object v6

    .line 66
    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/data/PieData;->getYValueSum()F

    move-result v19

    .line 68
    iget-object v1, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawEntryLabelsEnabled()Z

    move-result v20

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x41c00000    # 24.0f

    .line 75
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v21

    const/high16 v1, 0x41000000    # 8.0f

    .line 76
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v22

    const/high16 v1, 0x41400000    # 12.0f

    .line 77
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v23

    .line 78
    invoke-static/range {v16 .. v16}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v5

    const/high16 v24, 0x40800000    # 4.0f

    .line 79
    invoke-static/range {v24 .. v24}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 81
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 83
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 85
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isDrawValuesEnabled()Z

    move-result v26

    if-nez v26, :cond_1

    if-nez v20, :cond_1

    move/from16 v48, v2

    move/from16 v25, v5

    move-object/from16 v28, v6

    move-object v3, v7

    move-object/from16 v29, v8

    move/from16 v44, v9

    move/from16 v37, v10

    move-object/from16 v39, v11

    move-object/from16 v40, v12

    move/from16 v42, v13

    move/from16 v45, v14

    const/high16 v26, 0x42c80000    # 100.0f

    move v13, v4

    const/4 v4, 0x0

    goto/16 :goto_a

    .line 90
    :cond_1
    invoke-virtual {v0, v3}, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 92
    iget-object v15, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move/from16 v27, v1

    const-string v1, "Q"

    invoke-static {v15, v1}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    .line 93
    invoke-static/range {v24 .. v24}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v15

    add-float/2addr v15, v1

    .line 95
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    move-result-object v1

    move-object/from16 v28, v6

    .line 97
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v6

    move-object/from16 v29, v1

    .line 99
    iget-object v1, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    move/from16 v30, v2

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLineColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v1, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLineWidth()F

    move-result v2

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    iget-object v1, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 103
    invoke-virtual {v0, v3}, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->getSliceSpace(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)F

    move-result v31

    const/16 v32, 0x0

    const/4 v1, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    :goto_1
    if-ge v1, v6, :cond_e

    .line 114
    invoke-interface {v3, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v37

    move/from16 v38, v6

    move-object/from16 v6, v37

    check-cast v6, Lcom/github/mikephil/charting/data/PieEntry;

    if-nez v27, :cond_2

    const/16 v37, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v37, v27, -0x1

    .line 119
    aget v37, v12, v37

    mul-float v37, v37, v13

    .line 121
    :goto_2
    aget v39, v11, v27

    const v40, 0x3c8efa35

    mul-float v41, v17, v40

    div-float v41, v31, v41

    div-float v41, v41, v16

    sub-float v39, v39, v41

    div-float v39, v39, v16

    add-float v37, v37, v39

    mul-float v37, v37, v14

    move-object/from16 v39, v11

    add-float v11, v10, v37

    move/from16 v37, v10

    .line 131
    iget-object v10, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/PieChart;->isUsePercentValuesEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v10

    div-float v10, v10, v19

    const/high16 v26, 0x42c80000    # 100.0f

    mul-float v10, v10, v26

    goto :goto_3

    :cond_3
    const/high16 v26, 0x42c80000    # 100.0f

    .line 132
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v10

    :goto_3
    move-object/from16 v41, v6

    mul-float v6, v11, v40

    move-object/from16 v40, v12

    move/from16 v42, v13

    float-to-double v12, v6

    move/from16 v43, v5

    .line 134
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 135
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v6, v12

    add-float v12, v9, v22

    mul-float v13, v12, v5

    move/from16 v44, v9

    .line 142
    iget v9, v8, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v9, v13

    mul-float v13, v12, v6

    move/from16 v45, v14

    .line 143
    iget v14, v8, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v13, v14

    add-float v12, v12, v23

    mul-float v5, v5, v12

    .line 145
    iget v14, v8, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v14, v5

    mul-float v12, v12, v6

    .line 146
    iget v5, v8, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v12, v5

    sub-float v46, v12, v15

    float-to-double v5, v11

    const-wide v47, 0x4076800000000000L    # 360.0

    .line 152
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    rem-double v5, v5, v47

    const-wide v47, 0x4056800000000000L    # 90.0

    cmpl-double v49, v5, v47

    if-ltz v49, :cond_4

    const-wide v47, 0x4070e00000000000L    # 270.0

    cmpg-double v49, v5, v47

    if-gtz v49, :cond_4

    const/16 v47, 0x1

    goto :goto_4

    :cond_4
    const/16 v47, 0x0

    :goto_4
    if-eqz v47, :cond_5

    .line 157
    iget-object v5, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move/from16 v11, v21

    goto :goto_5

    .line 161
    :cond_5
    iget-object v5, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v5

    sub-float v5, v5, v21

    .line 163
    iget-object v6, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move v11, v5

    :goto_5
    add-float v5, v46, v12

    .line 168
    iget v6, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v5, v6

    iget v6, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v5, v6

    div-float v6, v5, v16

    if-eqz v47, :cond_9

    cmpl-float v5, v46, v34

    if-ltz v5, :cond_6

    cmpg-float v5, v46, v36

    if-lez v5, :cond_7

    :cond_6
    cmpl-float v5, v12, v34

    if-ltz v5, :cond_8

    cmpg-float v5, v12, v36

    if-gtz v5, :cond_8

    :cond_7
    :goto_6
    const/16 v48, 0x1

    goto :goto_7

    :cond_8
    const/16 v48, 0x0

    goto :goto_7

    :cond_9
    cmpl-float v5, v46, v33

    if-ltz v5, :cond_a

    cmpg-float v5, v46, v35

    if-lez v5, :cond_7

    :cond_a
    cmpl-float v5, v12, v33

    if-ltz v5, :cond_8

    cmpg-float v5, v12, v35

    if-gtz v5, :cond_8

    goto :goto_6

    :goto_7
    if-nez v48, :cond_d

    .line 183
    invoke-interface {v3, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v5

    const v48, 0xffffff

    and-int v48, v5, v48

    const/high16 v49, 0x32000000

    move/from16 v50, v1

    or-int v1, v48, v49

    move-object/from16 v48, v2

    .line 188
    iget-object v2, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mLineStartPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-object v1, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mLineStartPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v13, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 190
    iget-object v1, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mLineStartPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v1, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mLineStartPointPaint:Landroid/graphics/Paint;

    move/from16 v2, v43

    invoke-virtual {v7, v9, v13, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 194
    iget-object v1, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    iget-object v5, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    move/from16 v43, v15

    move-object/from16 v15, v29

    move-object/from16 v29, v8

    move/from16 v8, v50

    move-object/from16 v1, p1

    move-object/from16 v49, v48

    move/from16 v48, v30

    move/from16 v30, v2

    move v2, v9

    move-object v9, v3

    const/4 v7, 0x0

    move v3, v13

    move v13, v4

    move v4, v14

    move/from16 v25, v30

    move-object/from16 v30, v5

    move v5, v12

    move/from16 v51, v6

    move-object/from16 v6, v30

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 196
    iget-object v6, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    move v2, v14

    move v3, v12

    move v4, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 199
    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/data/PieData;->getEntryCount()I

    move-result v1

    if-ge v8, v1, :cond_b

    invoke-virtual/range {v41 .. v41}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual/range {v41 .. v41}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_b
    const-string v1, ""

    .line 200
    :goto_8
    iget-object v2, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-interface {v9}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLineColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v3, v41

    invoke-interface {v15, v10, v3, v7, v1}, Lcom/github/mikephil/charting/formatter/IValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move/from16 v5, v51

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v11, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v47, :cond_c

    move/from16 v36, v12

    move/from16 v34, v46

    goto :goto_9

    :cond_c
    move/from16 v35, v12

    move/from16 v33, v46

    goto :goto_9

    :cond_d
    move-object/from16 v49, v2

    move-object v9, v3

    move v13, v4

    move-object v3, v7

    move/from16 v48, v30

    move/from16 v25, v43

    const/4 v4, 0x0

    move/from16 v43, v15

    move-object/from16 v15, v29

    move-object/from16 v29, v8

    move v8, v1

    :goto_9
    add-int/lit8 v27, v27, 0x1

    add-int/lit8 v1, v8, 0x1

    move-object v7, v3

    move-object v3, v9

    move v4, v13

    move/from16 v5, v25

    move-object/from16 v8, v29

    move/from16 v10, v37

    move/from16 v6, v38

    move-object/from16 v11, v39

    move-object/from16 v12, v40

    move/from16 v13, v42

    move/from16 v9, v44

    move/from16 v14, v45

    move/from16 v30, v48

    move-object/from16 v2, v49

    move-object/from16 v29, v15

    move/from16 v15, v43

    goto/16 :goto_1

    :cond_e
    move/from16 v25, v5

    move-object v3, v7

    move-object/from16 v29, v8

    move/from16 v44, v9

    move/from16 v37, v10

    move-object/from16 v39, v11

    move-object/from16 v40, v12

    move/from16 v42, v13

    move/from16 v45, v14

    move/from16 v48, v30

    const/high16 v26, 0x42c80000    # 100.0f

    move v13, v4

    const/4 v4, 0x0

    move/from16 v1, v27

    :goto_a
    add-int/lit8 v2, v48, 0x1

    move-object v7, v3

    move v4, v13

    move/from16 v5, v25

    move-object/from16 v6, v28

    move-object/from16 v8, v29

    move/from16 v10, v37

    move-object/from16 v11, v39

    move-object/from16 v12, v40

    move/from16 v13, v42

    move/from16 v9, v44

    move/from16 v14, v45

    const/high16 v15, 0x42c80000    # 100.0f

    goto/16 :goto_0

    :cond_f
    move-object v3, v7

    move-object/from16 v29, v8

    .line 214
    invoke-static/range {v29 .. v29}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
