.class Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "MTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/base/widget/MTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabStrip"
.end annotation


# instance fields
.field private mIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mIndicatorLeft:I

.field private final mIndicatorRectF:Landroid/graphics/RectF;

.field private mIndicatorRight:I

.field private mLayoutDirection:I

.field private mSelectedIndicatorHeight:I

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private mSelectedIndicatorWidth:I

.field mSelectedPosition:I

.field mSelectionOffset:F

.field final synthetic this$0:Lcom/coderpage/base/widget/MTabLayout;


# direct methods
.method constructor <init>(Lcom/coderpage/base/widget/MTabLayout;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1721
    iput-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    .line 1722
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 1711
    iput p1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 1714
    iput p1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mLayoutDirection:I

    .line 1716
    iput p1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1717
    iput p1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 2007
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorRectF:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 1723
    invoke-virtual {p0, p1}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->setWillNotDraw(Z)V

    .line 1724
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 1725
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private updateIndicatorPosition()V
    .locals 8

    .line 1863
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    .line 1866
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_4

    .line 1867
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1868
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1870
    iget v3, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedIndicatorWidth:I

    if-eq v3, v1, :cond_0

    sub-int v4, v0, v2

    if-le v4, v3, :cond_0

    sub-int/2addr v4, v3

    .line 1871
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sub-int/2addr v0, v4

    .line 1876
    :cond_0
    iget v3, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectionOffset:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget v3, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3

    .line 1878
    iget v3, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1879
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 1880
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1882
    iget v5, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedIndicatorWidth:I

    if-eq v5, v1, :cond_1

    sub-int v1, v3, v4

    if-le v1, v5, :cond_1

    sub-int/2addr v1, v5

    .line 1883
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v4, v1

    sub-int/2addr v3, v1

    .line 1891
    :cond_1
    iget v1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectionOffset:F

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x3f000000    # 0.5f

    cmpg-float v7, v1, v6

    if-gtz v7, :cond_2

    int-to-float v4, v0

    sub-int/2addr v3, v0

    int-to-float v0, v3

    mul-float v0, v0, v1

    mul-float v0, v0, v5

    add-float/2addr v4, v0

    float-to-int v0, v4

    goto :goto_0

    :cond_2
    int-to-float v0, v2

    sub-int/2addr v4, v2

    int-to-float v2, v4

    sub-float/2addr v1, v6

    mul-float v2, v2, v1

    mul-float v2, v2, v5

    add-float/2addr v0, v2

    float-to-int v0, v0

    move v1, v0

    move v0, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    .line 1903
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "position",
            "duration"
        }
    .end annotation

    .line 1916
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1917
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1920
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1923
    :goto_0
    invoke-virtual {p0, p1}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1926
    invoke-direct {p0}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    return-void

    .line 1931
    :cond_2
    iget v4, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedIndicatorWidth:I

    const/4 v5, -0x1

    const/4 v6, 0x2

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedIndicatorWidth:I

    if-le v4, v5, :cond_3

    .line 1932
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v4, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedIndicatorWidth:I

    sub-int/2addr v1, v4

    div-int/2addr v1, v6

    .line 1935
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int v10, v4, v1

    .line 1936
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v12, v3, v1

    .line 1941
    iget v1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedPosition:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v2, :cond_4

    .line 1943
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1944
    iget v1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorRight:I

    move v9, v0

    move v11, v1

    goto :goto_3

    .line 1947
    :cond_4
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/coderpage/base/widget/MTabLayout;->dpToPx(I)I

    move-result v1

    .line 1948
    iget v2, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedPosition:I

    if-ge p1, v2, :cond_5

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_7

    :cond_6
    add-int/2addr v1, v12

    move v9, v1

    goto :goto_2

    :cond_7
    :goto_1
    sub-int v0, v10, v1

    move v9, v0

    :goto_2
    move v11, v9

    :goto_3
    if-ne v9, v10, :cond_8

    if-eq v11, v12, :cond_9

    .line 1966
    :cond_8
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 1967
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    iget-object v1, v1, Lcom/coderpage/base/widget/MTabLayout;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, p2

    .line 1968
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array p2, v6, [F

    .line 1969
    fill-array-data p2, :array_0

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1970
    new-instance p2, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$1;

    move-object v7, p2

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$1;-><init>(Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;IIII)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1995
    new-instance p2, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$2;

    invoke-direct {p2, p0, p1}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip$2;-><init>(Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;I)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2002
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_9
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method childrenNeedLayout()Z
    .locals 4

    .line 1750
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1751
    invoke-virtual {p0, v2}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1752
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 2011
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2014
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorRight:I

    if-le v1, v0, :cond_0

    .line 2015
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorRectF:Landroid/graphics/RectF;

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorRight:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2016
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method getIndicatorPosition()F
    .locals 2

    .line 1770
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectionOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    .line 1847
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1849
    iget-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1852
    iget-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1853
    iget-object p1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide p1

    .line 1854
    iget p3, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedPosition:I

    const/high16 p4, 0x3f800000    # 1.0f

    iget-object p5, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 1855
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p5

    sub-float/2addr p4, p5

    long-to-float p1, p1

    mul-float p4, p4, p1

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 1854
    invoke-virtual {p0, p3, p1}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V

    goto :goto_0

    .line 1858
    :cond_0
    invoke-direct {p0}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1790
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1792
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return-void

    .line 1798
    :cond_0
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    iget v0, v0, Lcom/coderpage/base/widget/MTabLayout;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    iget v0, v0, Lcom/coderpage/base/widget/MTabLayout;->mTabGravity:I

    if-ne v0, v1, :cond_8

    .line 1799
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 1804
    invoke-virtual {p0, v3}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1805
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 1806
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-gtz v4, :cond_3

    return-void

    .line 1815
    :cond_3
    iget-object v3, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Lcom/coderpage/base/widget/MTabLayout;->dpToPx(I)I

    move-result v3

    mul-int v5, v4, v0

    .line 1818
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getMeasuredWidth()I

    move-result v6

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v6, v3

    if-gt v5, v6, :cond_7

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v0, :cond_6

    .line 1823
    invoke-virtual {p0, v2}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1824
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v7, 0x0

    if-ne v6, v4, :cond_4

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_5

    .line 1825
    :cond_4
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1826
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v3, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_2

    .line 1833
    :cond_7
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    iput v2, v0, Lcom/coderpage/base/widget/MTabLayout;->mTabGravity:I

    .line 1834
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->this$0:Lcom/coderpage/base/widget/MTabLayout;

    invoke-virtual {v0, v2}, Lcom/coderpage/base/widget/MTabLayout;->updateTabViews(Z)V

    :goto_2
    if-eqz v1, :cond_8

    .line 1840
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_8
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutDirection"
        }
    .end annotation

    .line 1775
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 1779
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 1781
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mLayoutDirection:I

    if-eq v0, p1, :cond_0

    .line 1782
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->requestLayout()V

    .line 1783
    iput p1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mLayoutDirection:I

    :cond_0
    return-void
.end method

.method setIndicatorPosition(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 1907
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorRight:I

    if-eq p2, v0, :cond_1

    .line 1909
    :cond_0
    iput p1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1910
    iput p2, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 1911
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset"
        }
    .end annotation

    .line 1760
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1764
    :cond_0
    iput p1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 1765
    iput p2, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectionOffset:F

    .line 1766
    invoke-direct {p0}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    return-void
.end method

.method setSelectedIndicatorColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1729
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1730
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1731
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 1743
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    if-eq v0, p1, :cond_0

    .line 1744
    iput p1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    .line 1745
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method setSelectedIndicatorWidth(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 1736
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedIndicatorWidth:I

    if-eq v0, p1, :cond_0

    .line 1737
    iput p1, p0, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->mSelectedIndicatorWidth:I

    .line 1738
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method
