.class public Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;
.super Landroid/view/View;
.source "ViewPagerFocusView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageAdapterChangeListener;,
        Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageDataObserver;,
        Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PagerChangeListener;
    }
.end annotation


# instance fields
.field private mIndicatorHeight:I

.field private mIndicatorInterval:I

.field private mIndicatorNormalColor:I

.field private mIndicatorPaint:Landroid/graphics/Paint;

.field private mIndicatorRect:Landroid/graphics/RectF;

.field private mIndicatorSelectColor:I

.field private mIndicatorWidth:I

.field private mPageAdapterChangeListener:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageAdapterChangeListener;

.field private mPageChangeListener:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PagerChangeListener;

.field private mPageDataObserver:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageDataObserver;

.field private mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


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

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, -0x777778

    .line 28
    iput p3, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorNormalColor:I

    const/high16 p3, -0x1000000

    .line 30
    iput p3, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorSelectColor:I

    const/16 p3, 0x9

    .line 32
    iput p3, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorWidth:I

    .line 34
    iput p3, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorHeight:I

    const/16 p3, 0x12

    .line 37
    iput p3, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorInterval:I

    .line 58
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorRect:Landroid/graphics/RectF;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$300(Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->update()V

    return-void
.end method

.method static synthetic access$400(Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;Landroid/support/v4/view/PagerAdapter;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->setViewPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 66
    sget-object v0, Lcom/coderpage/mine/R$styleable;->ViewPagerFocusView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 68
    iget p2, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorWidth:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorWidth:I

    .line 69
    iget p2, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorHeight:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorHeight:I

    .line 70
    iget p2, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorInterval:I

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorInterval:I

    .line 71
    iget p2, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorNormalColor:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorNormalColor:I

    .line 72
    iget p2, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorSelectColor:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorSelectColor:I

    .line 74
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setViewPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mPageDataObserver:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageDataObserver;

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz p1, :cond_2

    .line 122
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mPageDataObserver:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageDataObserver;

    if-nez p1, :cond_1

    .line 123
    new-instance p1, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageDataObserver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageDataObserver;-><init>(Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$1;)V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mPageDataObserver:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageDataObserver;

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mPageDataObserver:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageDataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 127
    :cond_2
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->update()V

    return-void
.end method

.method private update()V
    .locals 0

    .line 149
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->postInvalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 154
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 156
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_2

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorNormalColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorWidth:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 162
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorWidth:I

    iget v5, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorInterval:I

    add-int/2addr v5, v4

    mul-int v5, v5, v2

    add-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 168
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->getPaddingTop()I

    move-result v5

    .line 169
    iget v6, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorHeight:I

    add-int/2addr v6, v5

    .line 171
    iget-object v7, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorRect:Landroid/graphics/RectF;

    int-to-float v3, v3

    int-to-float v5, v5

    int-to-float v4, v4

    int-to-float v6, v6

    invoke-virtual {v7, v3, v5, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 173
    iget-object v3, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    if-ne v2, v0, :cond_1

    iget v4, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorSelectColor:I

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorNormalColor:I

    :goto_1
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v3, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorHeight:I

    int-to-float v5, v4

    int-to-float v4, v4

    iget-object v6, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v0, :cond_0

    .line 133
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void

    .line 137
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_1

    const/4 p1, 0x0

    .line 139
    invoke-virtual {p0, p1, p1}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->setMeasuredDimension(II)V

    return-void

    .line 143
    :cond_1
    iget v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorWidth:I

    mul-int v0, v0, p1

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorInterval:I

    mul-int p1, p1, p2

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->getPaddingLeft()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->getPaddingRight()I

    move-result p1

    add-int/2addr v0, p1

    .line 144
    iget p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mIndicatorHeight:I

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 145
    invoke-virtual {p0, v0, p1}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewPager"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 84
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mPageChangeListener:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PagerChangeListener;

    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mPageDataObserver:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageDataObserver;

    if-eqz v2, :cond_2

    .line 88
    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mPageAdapterChangeListener:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageAdapterChangeListener;

    if-eqz v0, :cond_3

    .line 91
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->removeOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 94
    :cond_3
    iput-object v1, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 98
    :cond_4
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz p1, :cond_5

    .line 100
    new-instance p1, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PagerChangeListener;

    invoke-direct {p1, p0, v1}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PagerChangeListener;-><init>(Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$1;)V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mPageChangeListener:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PagerChangeListener;

    .line 101
    new-instance p1, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageAdapterChangeListener;

    invoke-direct {p1, p0, v1}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageAdapterChangeListener;-><init>(Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$1;)V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mPageAdapterChangeListener:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageAdapterChangeListener;

    .line 103
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mPageChangeListener:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PagerChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 104
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mPageAdapterChangeListener:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageAdapterChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 106
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz p1, :cond_5

    .line 108
    new-instance p1, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageDataObserver;

    invoke-direct {p1, p0, v1}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageDataObserver;-><init>(Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$1;)V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mPageDataObserver:Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView$PageDataObserver;

    .line 109
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 113
    :cond_5
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/ui/widget/ViewPagerFocusView;->update()V

    return-void
.end method
