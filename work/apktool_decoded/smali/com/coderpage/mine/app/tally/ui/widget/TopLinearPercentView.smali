.class public Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;
.super Landroid/widget/FrameLayout;
.source "TopLinearPercentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView$LabelFormatter;
    }
.end annotation


# instance fields
.field private mChartPaint:Landroid/graphics/Paint;

.field private mColorArray:[I

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDrawRectF:Landroid/graphics/RectF;

.field private mDrawTopCount:I

.field private mEmptyTextColor:I

.field private mEmptyTextSize:I

.field private mLabelFormatter:Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView$LabelFormatter;

.field private mLabelTextColor:I

.field private mLabelTextSize:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTopTotalAmount:D

.field private mTotalAmount:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
            "defStyleAttr"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xe

    .line 29
    iput p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mEmptyTextSize:I

    const/16 p1, 0xb

    .line 30
    iput p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mLabelTextSize:I

    const p1, -0x777778

    .line 32
    iput p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mEmptyTextColor:I

    .line 33
    iput p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mLabelTextColor:I

    const/4 p1, 0x3

    .line 35
    iput p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawTopCount:I

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mColorArray:[I

    .line 46
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawRectF:Landroid/graphics/RectF;

    .line 48
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDataList:Ljava/util/List;

    .line 50
    new-instance p2, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView$LabelFormatter;

    invoke-direct {p2, p0, p1}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView$LabelFormatter;-><init>(Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView$1;)V

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mLabelFormatter:Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView$LabelFormatter;

    .line 63
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0xe

    .line 29
    iput p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mEmptyTextSize:I

    const/16 p1, 0xb

    .line 30
    iput p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mLabelTextSize:I

    const p1, -0x777778

    .line 32
    iput p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mEmptyTextColor:I

    .line 33
    iput p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mLabelTextColor:I

    const/4 p1, 0x3

    .line 35
    iput p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawTopCount:I

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mColorArray:[I

    .line 46
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawRectF:Landroid/graphics/RectF;

    .line 48
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDataList:Ljava/util/List;

    .line 50
    new-instance p2, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView$LabelFormatter;

    invoke-direct {p2, p0, p1}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView$LabelFormatter;-><init>(Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView$1;)V

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mLabelFormatter:Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView$LabelFormatter;

    .line 70
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->initView()V

    return-void
.end method

.method private dip2px(Landroid/content/Context;F)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "dpValue"
        }
    .end annotation

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private initView()V
    .locals 3

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->setWillNotDraw(Z)V

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mChartPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 76
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mChartPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTextPaint:Landroid/text/TextPaint;

    .line 80
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 136
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 139
    iget v2, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawTopCount:I

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_b

    iget-wide v4, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTopTotalAmount:D

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-nez v2, :cond_0

    goto/16 :goto_a

    .line 153
    :cond_0
    iget v2, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mLabelTextSize:I

    invoke-virtual/range {p0 .. p0}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {v0, v4, v5}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->dip2px(Landroid/content/Context;F)I

    move-result v4

    add-int/2addr v2, v4

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->getPaddingLeft()I

    move-result v4

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->getPaddingTop()I

    move-result v5

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->getHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    .line 160
    iget-object v8, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawRectF:Landroid/graphics/RectF;

    int-to-float v9, v4

    int-to-float v5, v5

    int-to-float v7, v7

    invoke-virtual {v8, v9, v5, v9, v7}, Landroid/graphics/RectF;->set(FFFF)V

    sub-int/2addr v6, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 163
    :goto_0
    iget v7, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawTopCount:I

    if-ge v5, v7, :cond_3

    .line 164
    iget-object v7, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mColorArray:[I

    if-eqz v7, :cond_2

    array-length v10, v7

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    array-length v8, v7

    rem-int v8, v5, v8

    aget v8, v7, v8

    goto :goto_2

    :cond_2
    :goto_1
    const v8, -0x777778

    .line 165
    :goto_2
    iget-object v7, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mChartPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget-object v7, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDataList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 168
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    iget-wide v10, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTotalAmount:D

    div-double/2addr v7, v10

    .line 170
    iget-object v10, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawRectF:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->right:F

    iput v11, v10, Landroid/graphics/RectF;->left:F

    .line 171
    iget-object v10, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawRectF:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    int-to-double v12, v6

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v7

    double-to-int v7, v12

    int-to-float v7, v7

    add-float/2addr v11, v7

    iput v11, v10, Landroid/graphics/RectF;->right:F

    .line 172
    iget-object v7, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mChartPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 175
    :cond_3
    iget-object v5, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mColorArray:[I

    if-eqz v5, :cond_5

    array-length v10, v5

    if-nez v10, :cond_4

    goto :goto_3

    :cond_4
    array-length v10, v5

    rem-int/2addr v7, v10

    aget v5, v5, v7

    goto :goto_4

    :cond_5
    :goto_3
    const v5, -0x777778

    .line 176
    :goto_4
    iget-object v7, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mChartPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-wide v10, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTotalAmount:D

    iget-wide v12, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTopTotalAmount:D

    sub-double v12, v10, v12

    div-double/2addr v12, v10

    .line 178
    iget-object v5, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawRectF:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->right:F

    iput v7, v5, Landroid/graphics/RectF;->left:F

    .line 179
    iget-object v5, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawRectF:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->left:F

    int-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v12

    double-to-int v6, v10

    int-to-float v6, v6

    add-float/2addr v7, v6

    iput v7, v5, Landroid/graphics/RectF;->right:F

    .line 180
    iget-object v5, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mChartPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 183
    iget-object v5, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTextPaint:Landroid/text/TextPaint;

    iget v6, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mLabelTextColor:I

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 184
    iget-object v5, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTextPaint:Landroid/text/TextPaint;

    iget v6, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mLabelTextSize:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 185
    iget-object v5, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 186
    iget-object v5, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    .line 187
    iget v6, v5, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 188
    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 189
    iget-object v7, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawRectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    int-to-float v10, v2

    add-float/2addr v7, v10

    iget-object v10, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawRectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v10

    sub-float/2addr v7, v5

    sub-float/2addr v7, v6

    float-to-int v5, v7

    div-int/lit8 v5, v5, 0x2

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-direct {v0, v6, v7}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->dip2px(Landroid/content/Context;F)I

    move-result v6

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7, v3}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 195
    iget-object v7, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawRectF:Landroid/graphics/RectF;

    iput v9, v7, Landroid/graphics/RectF;->left:F

    .line 196
    iget-object v7, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawRectF:Landroid/graphics/RectF;

    iget v9, v7, Landroid/graphics/RectF;->bottom:F

    sub-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v9, v2

    iput v9, v7, Landroid/graphics/RectF;->top:F

    .line 197
    iget-object v2, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawRectF:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->left:F

    int-to-float v9, v6

    add-float/2addr v7, v9

    iput v7, v2, Landroid/graphics/RectF;->right:F

    .line 198
    iget-object v2, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawRectF:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v9

    iput v7, v2, Landroid/graphics/RectF;->bottom:F

    .line 201
    :goto_5
    iget v2, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawTopCount:I

    if-ge v4, v2, :cond_8

    .line 202
    iget-object v2, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDataList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 204
    iget-object v7, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mColorArray:[I

    if-eqz v7, :cond_7

    array-length v10, v7

    if-nez v10, :cond_6

    goto :goto_6

    :cond_6
    array-length v10, v7

    rem-int v10, v4, v10

    aget v7, v7, v10

    goto :goto_7

    :cond_7
    :goto_6
    const v7, -0x777778

    .line 205
    :goto_7
    iget-object v10, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mChartPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    iget-object v7, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v10, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mChartPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 207
    iget-object v11, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mLabelFormatter:Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView$LabelFormatter;

    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v7

    check-cast v12, Ljava/lang/String;

    iget-object v7, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    move v10, v9

    iget-wide v8, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTotalAmount:D

    div-double/2addr v15, v8

    invoke-virtual/range {v11 .. v16}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView$LabelFormatter;->formatLabel(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v2

    .line 208
    iget-object v8, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    int-to-float v9, v3

    add-float/2addr v8, v9

    int-to-float v9, v5

    iget-object v11, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v8, v9, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 210
    iget-object v8, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 211
    iget-object v8, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawRectF:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->right:F

    mul-int/lit8 v11, v6, 0x3

    int-to-float v11, v11

    add-float/2addr v9, v11

    add-float/2addr v9, v2

    iput v9, v8, Landroid/graphics/RectF;->left:F

    .line 212
    iget-object v2, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawRectF:Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v10

    iput v8, v2, Landroid/graphics/RectF;->right:F

    add-int/lit8 v4, v4, 0x1

    move v9, v10

    goto :goto_5

    .line 216
    :cond_8
    iget-object v4, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mColorArray:[I

    if-eqz v4, :cond_a

    array-length v6, v4

    if-nez v6, :cond_9

    goto :goto_8

    :cond_9
    array-length v6, v4

    rem-int/2addr v2, v6

    aget v8, v4, v2

    goto :goto_9

    :cond_a
    :goto_8
    const v8, -0x777778

    .line 217
    :goto_9
    iget-object v2, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mChartPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    iget-object v2, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mChartPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 219
    iget-object v6, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mLabelFormatter:Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView$LabelFormatter;

    iget-wide v7, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTotalAmount:D

    iget-wide v9, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTopTotalAmount:D

    sub-double v11, v7, v9

    sub-double v9, v7, v9

    div-double v13, v9, v7

    const-string v7, "\u5176\u4ed6"

    move-wide v8, v11

    move-wide v10, v13

    invoke-virtual/range {v6 .. v11}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView$LabelFormatter;->formatLabel(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v2

    .line 220
    iget-object v4, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v3, v3

    add-float/2addr v4, v3

    int-to-float v3, v5

    iget-object v5, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    .line 140
    :cond_b
    :goto_a
    iget-object v2, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 141
    iget-object v2, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTextPaint:Landroid/text/TextPaint;

    iget v4, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mEmptyTextSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 142
    iget-object v2, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTextPaint:Landroid/text/TextPaint;

    iget v4, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mEmptyTextColor:I

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 143
    iget-object v2, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 144
    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 145
    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    div-float/2addr v4, v3

    sub-float/2addr v5, v4

    div-float/2addr v2, v3

    sub-float/2addr v5, v2

    float-to-int v2, v5

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    int-to-float v2, v2

    iget-object v4, v0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTextPaint:Landroid/text/TextPaint;

    const-string v5, "\u6682\u65e0\u6570\u636e~"

    invoke-virtual {v1, v5, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public varargs setColorArray([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mColorArray:[I

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 115
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawTopCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawTopCount:I

    const-wide/16 v0, 0x0

    .line 117
    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTopTotalAmount:D

    .line 118
    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTotalAmount:D

    const/4 v0, 0x0

    .line 119
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 120
    iget-wide v1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTotalAmount:D

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTotalAmount:D

    .line 121
    iget v1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawTopCount:I

    if-ge v0, v1, :cond_1

    .line 122
    iget-wide v1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTopTotalAmount:D

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mTopTotalAmount:D

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->postInvalidate()V

    return-void
.end method

.method public setDrawTopCount(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawTopCount"
        }
    .end annotation

    .line 131
    iget v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawTopCount:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mDrawTopCount:I

    return-void
.end method

.method public setEmptyTextColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 85
    iput p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mEmptyTextColor:I

    return-void
.end method

.method public setEmptyTextSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 90
    iput p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mEmptyTextSize:I

    return-void
.end method

.method public setLabelTextColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 95
    iput p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mLabelTextColor:I

    return-void
.end method

.method public setLabelTextSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 100
    iput p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;->mLabelTextSize:I

    return-void
.end method
