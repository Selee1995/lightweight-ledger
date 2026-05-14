.class public Lcom/coderpage/base/widget/MTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "MTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/base/widget/MTabLayout$AdapterChangeListener;,
        Lcom/coderpage/base/widget/MTabLayout$PagerAdapterObserver;,
        Lcom/coderpage/base/widget/MTabLayout$ViewPagerOnTabSelectedListener;,
        Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;,
        Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;,
        Lcom/coderpage/base/widget/MTabLayout$TabView;,
        Lcom/coderpage/base/widget/MTabLayout$Tab;,
        Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;,
        Lcom/coderpage/base/widget/MTabLayout$TabGravity;,
        Lcom/coderpage/base/widget/MTabLayout$Mode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field static final DEFAULT_GAP_TEXT_ICON:I = 0x8

.field private static final DEFAULT_HEIGHT:I = 0x30

.field private static final DEFAULT_HEIGHT_WITH_TEXT_ICON:I = 0x48

.field static final FIXED_WRAP_GUTTER_MIN:I = 0x10

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field private static final INVALID_WIDTH:I = -0x1

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field static final MOTION_NON_ADJACENT_OFFSET:I = 0x18

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38

.field private static final sTabPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/coderpage/base/widget/MTabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final APPCOMPAT_CHECK_ATTRS:[I

.field final FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private mAdapterChangeListener:Lcom/coderpage/base/widget/MTabLayout$AdapterChangeListener;

.field private mContentInsetStart:I

.field private mCurrentVpSelectedListener:Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;

.field mMode:I

.field private mPageChangeListener:Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;

.field private mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mPagerAdapterObserver:Landroid/database/DataSetObserver;

.field private final mRequestedTabMaxWidth:I

.field private final mRequestedTabMinWidth:I

.field private mScrollAnimator:Landroid/animation/ValueAnimator;

.field private final mScrollableTabMinWidth:I

.field private mSelectedListener:Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;

.field private final mSelectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedTab:Lcom/coderpage/base/widget/MTabLayout$Tab;

.field private mSetupViewPagerImplicitly:Z

.field final mTabBackgroundResId:I

.field mTabGravity:I

.field mTabMaxWidth:I

.field mTabPaddingBottom:I

.field mTabPaddingEnd:I

.field mTabPaddingStart:I

.field mTabPaddingTop:I

.field private final mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

.field private mTabTextBoldOnSelect:Z

.field mTabTextColors:Landroid/content/res/ColorStateList;

.field mTabTextMultiLineSize:F

.field mTabTextSelectSize:F

.field mTabTextSize:F

.field private final mTabViewPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/coderpage/base/widget/MTabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coderpage/base/widget/MTabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/coderpage/base/widget/MTabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

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

    .line 216
    invoke-direct {p0, p1, v0}, Lcom/coderpage/base/widget/MTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 220
    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/base/widget/MTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
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

    .line 224
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabs:Ljava/util/ArrayList;

    const v0, 0x7fffffff

    .line 187
    iput v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabMaxWidth:I

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabTextBoldOnSelect:Z

    .line 213
    new-instance v1, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v1, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    .line 2195
    new-instance v1, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object v1, p0, Lcom/coderpage/base/widget/MTabLayout;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 2208
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    aput v3, v2, v0

    iput-object v2, p0, Lcom/coderpage/base/widget/MTabLayout;->APPCOMPAT_CHECK_ATTRS:[I

    .line 226
    invoke-virtual {p0, p1}, Lcom/coderpage/base/widget/MTabLayout;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 229
    invoke-virtual {p0, v0}, Lcom/coderpage/base/widget/MTabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 232
    new-instance v2, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    invoke-direct {v2, p0, p1}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;-><init>(Lcom/coderpage/base/widget/MTabLayout;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    .line 233
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v2, v0, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 236
    sget-object v3, Lcom/coderpage/base/R$styleable;->MTabLayout:[I

    sget v4, Lcom/coderpage/base/R$style;->Widget_Design_TabLayout:I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 239
    sget p2, Lcom/coderpage/base/R$styleable;->MTabLayout_mTabIndicatorHeight:I

    .line 240
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 239
    invoke-virtual {v2, p2}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 241
    sget p2, Lcom/coderpage/base/R$styleable;->MTabLayout_mTabIndicatorWidth:I

    .line 242
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 241
    invoke-virtual {v2, p2}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->setSelectedIndicatorWidth(I)V

    .line 243
    sget p2, Lcom/coderpage/base/R$styleable;->MTabLayout_mTabIndicatorColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 245
    sget p2, Lcom/coderpage/base/R$styleable;->MTabLayout_mTabPadding:I

    .line 246
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabPaddingBottom:I

    iput p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabPaddingEnd:I

    iput p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabPaddingTop:I

    iput p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabPaddingStart:I

    .line 247
    sget p2, Lcom/coderpage/base/R$styleable;->MTabLayout_mTabPaddingStart:I

    iget p3, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabPaddingStart:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabPaddingStart:I

    .line 249
    sget p2, Lcom/coderpage/base/R$styleable;->MTabLayout_mTabPaddingTop:I

    iget p3, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabPaddingTop:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabPaddingTop:I

    .line 251
    sget p2, Lcom/coderpage/base/R$styleable;->MTabLayout_mTabPaddingEnd:I

    iget p3, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabPaddingEnd:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabPaddingEnd:I

    .line 253
    sget p2, Lcom/coderpage/base/R$styleable;->MTabLayout_mTabPaddingBottom:I

    iget p3, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabPaddingBottom:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabPaddingBottom:I

    .line 256
    sget p2, Lcom/coderpage/base/R$styleable;->MTabLayout_mTabTextSize:I

    const/high16 p3, 0x41600000    # 14.0f

    .line 257
    invoke-virtual {p0, p3}, Lcom/coderpage/base/widget/MTabLayout;->dp2Px(F)F

    move-result p3

    float-to-int p3, p3

    .line 256
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabTextSize:F

    .line 258
    sget p2, Lcom/coderpage/base/R$styleable;->MTabLayout_mTabSelectedTextSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabTextSelectSize:F

    .line 259
    sget p2, Lcom/coderpage/base/R$styleable;->MTabLayout_mTabTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 261
    sget p2, Lcom/coderpage/base/R$styleable;->MTabLayout_mTabSelectedTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 265
    sget p2, Lcom/coderpage/base/R$styleable;->MTabLayout_mTabSelectedTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 266
    iget-object p3, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p3

    invoke-static {p3, p2}, Lcom/coderpage/base/widget/MTabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 269
    :cond_0
    sget p2, Lcom/coderpage/base/R$styleable;->MTabLayout_mTabMinWidth:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mRequestedTabMinWidth:I

    .line 271
    sget p2, Lcom/coderpage/base/R$styleable;->MTabLayout_mTabMaxWidth:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mRequestedTabMaxWidth:I

    .line 273
    sget p2, Lcom/coderpage/base/R$styleable;->MTabLayout_mTabBackground:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabBackgroundResId:I

    .line 274
    sget p2, Lcom/coderpage/base/R$styleable;->MTabLayout_mTabContentStart:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mContentInsetStart:I

    .line 275
    sget p2, Lcom/coderpage/base/R$styleable;->MTabLayout_mTabMode:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mMode:I

    .line 276
    sget p2, Lcom/coderpage/base/R$styleable;->MTabLayout_mTabGravity:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabGravity:I

    .line 277
    sget p2, Lcom/coderpage/base/R$styleable;->MTabLayout_mTabTextBoldOnSelect:I

    iget-boolean p3, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabTextBoldOnSelect:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabTextBoldOnSelect:Z

    .line 278
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 281
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 282
    sget p2, Lcom/coderpage/base/R$dimen;->design_tab_text_size_2line:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabTextMultiLineSize:F

    .line 283
    sget p2, Lcom/coderpage/base/R$dimen;->design_tab_scrollable_min_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coderpage/base/widget/MTabLayout;->mScrollableTabMinWidth:I

    .line 286
    invoke-direct {p0}, Lcom/coderpage/base/widget/MTabLayout;->applyModeAndGravity()V

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/base/widget/MTabLayout;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabTextBoldOnSelect:Z

    return p0
.end method

.method private addTabFromItemView(Lcom/coderpage/base/widget/MTabItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 402
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->newTab()Lcom/coderpage/base/widget/MTabLayout$Tab;

    move-result-object v0

    .line 403
    iget-object v1, p1, Lcom/coderpage/base/widget/MTabItem;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p1, Lcom/coderpage/base/widget/MTabItem;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/coderpage/base/widget/MTabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/coderpage/base/widget/MTabLayout$Tab;

    .line 406
    :cond_0
    iget-object v1, p1, Lcom/coderpage/base/widget/MTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 407
    iget-object v1, p1, Lcom/coderpage/base/widget/MTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/coderpage/base/widget/MTabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/coderpage/base/widget/MTabLayout$Tab;

    .line 409
    :cond_1
    iget v1, p1, Lcom/coderpage/base/widget/MTabItem;->mCustomLayout:I

    if-eqz v1, :cond_2

    .line 410
    iget v1, p1, Lcom/coderpage/base/widget/MTabItem;->mCustomLayout:I

    invoke-virtual {v0, v1}, Lcom/coderpage/base/widget/MTabLayout$Tab;->setCustomView(I)Lcom/coderpage/base/widget/MTabLayout$Tab;

    .line 412
    :cond_2
    invoke-virtual {p1}, Lcom/coderpage/base/widget/MTabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 413
    invoke-virtual {p1}, Lcom/coderpage/base/widget/MTabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coderpage/base/widget/MTabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/coderpage/base/widget/MTabLayout$Tab;

    .line 415
    :cond_3
    invoke-virtual {p0, v0}, Lcom/coderpage/base/widget/MTabLayout;->addTab(Lcom/coderpage/base/widget/MTabLayout$Tab;)V

    return-void
.end method

.method private addTabView(Lcom/coderpage/base/widget/MTabLayout$Tab;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 863
    iget-object v0, p1, Lcom/coderpage/base/widget/MTabLayout$Tab;->mView:Lcom/coderpage/base/widget/MTabLayout$TabView;

    .line 864
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    invoke-virtual {p1}, Lcom/coderpage/base/widget/MTabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0}, Lcom/coderpage/base/widget/MTabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "child"
        }
    .end annotation

    .line 888
    instance-of v0, p1, Lcom/coderpage/base/widget/MTabItem;

    if-eqz v0, :cond_0

    .line 889
    check-cast p1, Lcom/coderpage/base/widget/MTabItem;

    invoke-direct {p0, p1}, Lcom/coderpage/base/widget/MTabLayout;->addTabFromItemView(Lcom/coderpage/base/widget/MTabItem;)V

    return-void

    .line 891
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only TabItem instances can be added to MTabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private animateToTab(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newPosition"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 988
    :cond_0
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    .line 989
    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->childrenNeedLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 996
    :cond_1
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->getScrollX()I

    move-result v0

    .line 997
    invoke-direct {p0, p1, v2}, Lcom/coderpage/base/widget/MTabLayout;->calculateScrollXForTab(IF)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 1000
    invoke-direct {p0}, Lcom/coderpage/base/widget/MTabLayout;->ensureScrollAnimator()V

    .line 1002
    iget-object v3, p0, Lcom/coderpage/base/widget/MTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v2, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1003
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1007
    :cond_2
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    const/16 v1, 0x12c

    invoke-virtual {v0, p1, v1}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V

    return-void

    .line 992
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lcom/coderpage/base/widget/MTabLayout;->setScrollPosition(IFZ)V

    return-void
.end method

.method private applyModeAndGravity()V
    .locals 3

    .line 1116
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1118
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mContentInsetStart:I

    iget v2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabPaddingStart:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1120
    :goto_0
    iget-object v2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    invoke-static {v2, v0, v1, v1, v1}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1122
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 1124
    :cond_1
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    invoke-virtual {v0, v1}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->setGravity(I)V

    goto :goto_1

    .line 1127
    :cond_2
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    const v2, 0x800003

    invoke-virtual {v0, v2}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->setGravity(I)V

    .line 1131
    :goto_1
    invoke-virtual {p0, v1}, Lcom/coderpage/base/widget/MTabLayout;->updateTabViews(Z)V

    return-void
.end method

.method private calculateScrollXForTab(IF)I
    .locals 3
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

    .line 1094
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 1095
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 1096
    iget-object v2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 1097
    iget-object v2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    invoke-virtual {v2, p1}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1099
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 1100
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1103
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    div-int/lit8 v0, v2, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    add-int/2addr v2, v1

    int-to-float v0, v2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 1107
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_3

    add-int/2addr p1, p2

    goto :goto_2

    :cond_3
    sub-int/2addr p1, p2

    :goto_2
    return p1

    :cond_4
    return v1
.end method

.method private configureTab(Lcom/coderpage/base/widget/MTabLayout$Tab;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tab",
            "position"
        }
    .end annotation

    .line 853
    invoke-virtual {p1, p2}, Lcom/coderpage/base/widget/MTabLayout$Tab;->setPosition(I)V

    .line 854
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 856
    iget-object p1, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    .line 858
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coderpage/base/widget/MTabLayout$Tab;

    invoke-virtual {v0, p2}, Lcom/coderpage/base/widget/MTabLayout$Tab;->setPosition(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultColor",
            "selectedColor"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [[I

    new-array v0, v0, [I

    .line 2026
    sget-object v2, Lcom/coderpage/base/widget/MTabLayout;->SELECTED_STATE_SET:[I

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput p1, v0, v3

    .line 2031
    sget-object p1, Lcom/coderpage/base/widget/MTabLayout;->EMPTY_STATE_SET:[I

    const/4 v2, 0x1

    aput-object p1, v1, v2

    aput p0, v0, v2

    .line 2035
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 896
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 898
    invoke-direct {p0, v0}, Lcom/coderpage/base/widget/MTabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0
.end method

.method private createTabView(Lcom/coderpage/base/widget/MTabLayout$Tab;)Lcom/coderpage/base/widget/MTabLayout$TabView;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tab"
        }
    .end annotation

    .line 842
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coderpage/base/widget/MTabLayout$TabView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 844
    new-instance v0, Lcom/coderpage/base/widget/MTabLayout$TabView;

    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coderpage/base/widget/MTabLayout$TabView;-><init>(Lcom/coderpage/base/widget/MTabLayout;Landroid/content/Context;)V

    .line 846
    :cond_1
    invoke-virtual {v0, p1}, Lcom/coderpage/base/widget/MTabLayout$TabView;->setTab(Lcom/coderpage/base/widget/MTabLayout$Tab;)V

    const/4 p1, 0x1

    .line 847
    invoke-virtual {v0, p1}, Lcom/coderpage/base/widget/MTabLayout$TabView;->setFocusable(Z)V

    .line 848
    invoke-direct {p0}, Lcom/coderpage/base/widget/MTabLayout;->getTabMinWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coderpage/base/widget/MTabLayout$TabView;->setMinimumWidth(I)V

    return-object v0
.end method

.method private dispatchTabReselected(Lcom/coderpage/base/widget/MTabLayout$Tab;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tab"
        }
    .end annotation

    .line 1088
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1089
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;->onTabReselected(Lcom/coderpage/base/widget/MTabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchTabSelected(Lcom/coderpage/base/widget/MTabLayout$Tab;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tab"
        }
    .end annotation

    .line 1076
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1077
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;->onTabSelected(Lcom/coderpage/base/widget/MTabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchTabUnselected(Lcom/coderpage/base/widget/MTabLayout$Tab;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tab"
        }
    .end annotation

    .line 1082
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1083
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;->onTabUnselected(Lcom/coderpage/base/widget/MTabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensureScrollAnimator()V
    .locals 3

    .line 1011
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1012
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    .line 1013
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1014
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1015
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coderpage/base/widget/MTabLayout$1;

    invoke-direct {v1, p0}, Lcom/coderpage/base/widget/MTabLayout$1;-><init>(Lcom/coderpage/base/widget/MTabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method

.method private getDefaultHeight()I
    .locals 5

    .line 2040
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2041
    iget-object v3, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coderpage/base/widget/MTabLayout$Tab;

    if-eqz v3, :cond_0

    .line 2042
    invoke-virtual {v3}, Lcom/coderpage/base/widget/MTabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/coderpage/base/widget/MTabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    const/16 v0, 0x48

    goto :goto_2

    :cond_2
    const/16 v0, 0x30

    :goto_2
    return v0
.end method

.method private getScrollPosition()F
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getIndicatorPosition()F

    move-result v0

    return v0
.end method

.method private getTabMinWidth()I
    .locals 2

    .line 2051
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mRequestedTabMinWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2056
    :cond_0
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mMode:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mScrollableTabMinWidth:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getTabScrollRange()I
    .locals 2

    .line 792
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 793
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 792
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private removeTabViewAt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 974
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coderpage/base/widget/MTabLayout$TabView;

    .line 975
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->removeViewAt(I)V

    if-eqz v0, :cond_0

    .line 977
    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout$TabView;->reset()V

    .line 978
    iget-object p1, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {p1, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 980
    :cond_0
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->requestLayout()V

    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1030
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1033
    iget-object v3, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    invoke-virtual {v3, v2}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 1034
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setupWithViewPager(Landroid/support/v4/view/ViewPager;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "viewPager",
            "autoRefresh",
            "implicitSetup"
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 694
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout;->mPageChangeListener:Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;

    if-eqz v1, :cond_0

    .line 695
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mAdapterChangeListener:Lcom/coderpage/base/widget/MTabLayout$AdapterChangeListener;

    if-eqz v0, :cond_1

    .line 698
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->removeOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mCurrentVpSelectedListener:Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 704
    invoke-virtual {p0, v0}, Lcom/coderpage/base/widget/MTabLayout;->removeOnTabSelectedListener(Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;)V

    .line 705
    iput-object v1, p0, Lcom/coderpage/base/widget/MTabLayout;->mCurrentVpSelectedListener:Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;

    :cond_2
    if-eqz p1, :cond_6

    .line 709
    iput-object p1, p0, Lcom/coderpage/base/widget/MTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 712
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mPageChangeListener:Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;

    if-nez v0, :cond_3

    .line 713
    new-instance v0, Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v0, p0}, Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/coderpage/base/widget/MTabLayout;)V

    iput-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mPageChangeListener:Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;

    .line 715
    :cond_3
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mPageChangeListener:Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;->reset()V

    .line 716
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mPageChangeListener:Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 719
    new-instance v0, Lcom/coderpage/base/widget/MTabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v0, p1}, Lcom/coderpage/base/widget/MTabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mCurrentVpSelectedListener:Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;

    .line 720
    invoke-virtual {p0, v0}, Lcom/coderpage/base/widget/MTabLayout;->addOnTabSelectedListener(Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;)V

    .line 722
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 726
    invoke-virtual {p0, v0, p2}, Lcom/coderpage/base/widget/MTabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    .line 730
    :cond_4
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mAdapterChangeListener:Lcom/coderpage/base/widget/MTabLayout$AdapterChangeListener;

    if-nez v0, :cond_5

    .line 731
    new-instance v0, Lcom/coderpage/base/widget/MTabLayout$AdapterChangeListener;

    invoke-direct {v0, p0}, Lcom/coderpage/base/widget/MTabLayout$AdapterChangeListener;-><init>(Lcom/coderpage/base/widget/MTabLayout;)V

    iput-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mAdapterChangeListener:Lcom/coderpage/base/widget/MTabLayout$AdapterChangeListener;

    .line 733
    :cond_5
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mAdapterChangeListener:Lcom/coderpage/base/widget/MTabLayout$AdapterChangeListener;

    invoke-virtual {v0, p2}, Lcom/coderpage/base/widget/MTabLayout$AdapterChangeListener;->setAutoRefresh(Z)V

    .line 734
    iget-object p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mAdapterChangeListener:Lcom/coderpage/base/widget/MTabLayout$AdapterChangeListener;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->addOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 737
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/coderpage/base/widget/MTabLayout;->setScrollPosition(IFZ)V

    goto :goto_0

    .line 741
    :cond_6
    iput-object v1, p0, Lcom/coderpage/base/widget/MTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 p1, 0x0

    .line 742
    invoke-virtual {p0, v1, p1}, Lcom/coderpage/base/widget/MTabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    .line 745
    :goto_0
    iput-boolean p3, p0, Lcom/coderpage/base/widget/MTabLayout;->mSetupViewPagerImplicitly:Z

    return-void
.end method

.method private updateAllTabs()V
    .locals 3

    .line 836
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 837
    iget-object v2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coderpage/base/widget/MTabLayout$Tab;

    invoke-virtual {v2}, Lcom/coderpage/base/widget/MTabLayout$Tab;->updateView()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lp"
        }
    .end annotation

    .line 903
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabGravity:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 904
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 905
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 907
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, 0x0

    .line 908
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_0
    return-void
.end method


# virtual methods
.method public addOnTabSelectedListener(Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addTab(Lcom/coderpage/base/widget/MTabLayout$Tab;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/coderpage/base/widget/MTabLayout;->addTab(Lcom/coderpage/base/widget/MTabLayout$Tab;Z)V

    return-void
.end method

.method public addTab(Lcom/coderpage/base/widget/MTabLayout$Tab;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tab",
            "position"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/coderpage/base/widget/MTabLayout;->addTab(Lcom/coderpage/base/widget/MTabLayout$Tab;IZ)V

    return-void
.end method

.method public addTab(Lcom/coderpage/base/widget/MTabLayout$Tab;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tab",
            "position",
            "setSelected"
        }
    .end annotation

    .line 390
    iget-object v0, p1, Lcom/coderpage/base/widget/MTabLayout$Tab;->mParent:Lcom/coderpage/base/widget/MTabLayout;

    if-ne v0, p0, :cond_1

    .line 393
    invoke-direct {p0, p1, p2}, Lcom/coderpage/base/widget/MTabLayout;->configureTab(Lcom/coderpage/base/widget/MTabLayout$Tab;I)V

    .line 394
    invoke-direct {p0, p1}, Lcom/coderpage/base/widget/MTabLayout;->addTabView(Lcom/coderpage/base/widget/MTabLayout$Tab;)V

    if-eqz p3, :cond_0

    .line 397
    invoke-virtual {p1}, Lcom/coderpage/base/widget/MTabLayout$Tab;->select()V

    :cond_0
    return-void

    .line 391
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tab belongs to a different "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTab(Lcom/coderpage/base/widget/MTabLayout$Tab;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tab",
            "setSelected"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/coderpage/base/widget/MTabLayout;->addTab(Lcom/coderpage/base/widget/MTabLayout$Tab;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 869
    invoke-direct {p0, p1}, Lcom/coderpage/base/widget/MTabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "index"
        }
    .end annotation

    .line 874
    invoke-direct {p0, p1}, Lcom/coderpage/base/widget/MTabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "index",
            "params"
        }
    .end annotation

    .line 884
    invoke-direct {p0, p1}, Lcom/coderpage/base/widget/MTabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "params"
        }
    .end annotation

    .line 879
    invoke-direct {p0, p1}, Lcom/coderpage/base/widget/MTabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method checkAppCompatTheme(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 2213
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->APPCOMPAT_CHECK_ATTRS:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 2214
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2215
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v0, :cond_0

    return-void

    .line 2217
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You need to use a Theme.AppCompat theme (or descendant) with the design library."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearOnTabSelectedListeners()V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method dp2Px(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dpValue"
        }
    .end annotation

    .line 2223
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 2224
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method dpToPx(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dps"
        }
    .end annotation

    .line 913
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Lcom/coderpage/base/widget/MTabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 2065
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedTabPosition()I
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mSelectedTab:Lcom/coderpage/base/widget/MTabLayout$Tab;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout$Tab;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getTabAt(I)Lcom/coderpage/base/widget/MTabLayout$Tab;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 501
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coderpage/base/widget/MTabLayout$Tab;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getTabCount()I
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .locals 1

    .line 623
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabGravity:I

    return v0
.end method

.method getTabMaxWidth()I
    .locals 1

    .line 2069
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabMaxWidth:I

    return v0
.end method

.method public getTabMode()I
    .locals 1

    .line 600
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mMode:I

    return v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method lerp(FFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startValue",
            "endValue",
            "fraction"
        }
    .end annotation

    sub-float/2addr p2, p1

    mul-float p3, p3, p2

    add-float/2addr p1, p3

    return p1
.end method

.method lerp(IIF)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startValue",
            "endValue",
            "fraction"
        }
    .end annotation

    sub-int/2addr p2, p1

    int-to-float p2, p2

    mul-float p3, p3, p2

    .line 2205
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method public newTab()Lcom/coderpage/base/widget/MTabLayout$Tab;
    .locals 2

    .line 478
    sget-object v0, Lcom/coderpage/base/widget/MTabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coderpage/base/widget/MTabLayout$Tab;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Lcom/coderpage/base/widget/MTabLayout$Tab;

    invoke-direct {v0}, Lcom/coderpage/base/widget/MTabLayout$Tab;-><init>()V

    .line 482
    :cond_0
    iput-object p0, v0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mParent:Lcom/coderpage/base/widget/MTabLayout;

    .line 483
    invoke-direct {p0, v0}, Lcom/coderpage/base/widget/MTabLayout;->createTabView(Lcom/coderpage/base/widget/MTabLayout$Tab;)Lcom/coderpage/base/widget/MTabLayout$TabView;

    move-result-object v1

    iput-object v1, v0, Lcom/coderpage/base/widget/MTabLayout$Tab;->mView:Lcom/coderpage/base/widget/MTabLayout$TabView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 766
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 768
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 772
    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 775
    check-cast v0, Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/coderpage/base/widget/MTabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;ZZ)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 782
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 784
    iget-boolean v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mSetupViewPagerImplicitly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 786
    invoke-virtual {p0, v0}, Lcom/coderpage/base/widget/MTabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    const/4 v0, 0x0

    .line 787
    iput-boolean v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mSetupViewPagerImplicitly:Z

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
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

    .line 920
    invoke-direct {p0}, Lcom/coderpage/base/widget/MTabLayout;->getDefaultHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coderpage/base/widget/MTabLayout;->dpToPx(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 921
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 928
    :cond_0
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 924
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 923
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 932
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 933
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 936
    iget v1, p0, Lcom/coderpage/base/widget/MTabLayout;->mRequestedTabMaxWidth:I

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x38

    .line 938
    invoke-virtual {p0, v1}, Lcom/coderpage/base/widget/MTabLayout;->dpToPx(I)I

    move-result v1

    sub-int v1, v0, v1

    :goto_1
    iput v1, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabMaxWidth:I

    .line 942
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 944
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    const/4 p1, 0x0

    .line 947
    invoke-virtual {p0, p1}, Lcom/coderpage/base/widget/MTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 950
    iget v2, p0, Lcom/coderpage/base/widget/MTabLayout;->mMode:I

    if-eqz v2, :cond_5

    if-eq v2, v0, :cond_4

    goto :goto_3

    .line 958
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->getMeasuredWidth()I

    move-result v4

    if-eq v2, v4, :cond_6

    goto :goto_2

    .line 954
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->getMeasuredWidth()I

    move-result v4

    if-ge v2, v4, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    move p1, v0

    :goto_3
    if-eqz p1, :cond_7

    .line 964
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->getPaddingTop()I

    move-result p1

    .line 965
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 964
    invoke-static {p2, p1, v0}, Lcom/coderpage/base/widget/MTabLayout;->getChildMeasureSpec(III)I

    move-result p1

    .line 967
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->getMeasuredWidth()I

    move-result p2

    .line 966
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 968
    invoke-virtual {v1, p2, p1}, Landroid/view/View;->measure(II)V

    :cond_7
    return-void
.end method

.method populateFromPagerAdapter()V
    .locals 5

    .line 817
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->removeAllTabs()V

    .line 819
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_1

    .line 820
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 822
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->newTab()Lcom/coderpage/base/widget/MTabLayout$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/coderpage/base/widget/MTabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, v2}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/coderpage/base/widget/MTabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/coderpage/base/widget/MTabLayout$Tab;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/coderpage/base/widget/MTabLayout;->addTab(Lcom/coderpage/base/widget/MTabLayout$Tab;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 826
    :cond_0
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 827
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 828
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 829
    invoke-virtual {p0, v0}, Lcom/coderpage/base/widget/MTabLayout;->getTabAt(I)Lcom/coderpage/base/widget/MTabLayout$Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coderpage/base/widget/MTabLayout;->selectTab(Lcom/coderpage/base/widget/MTabLayout$Tab;)V

    :cond_1
    return-void
.end method

.method public removeAllTabs()V
    .locals 3

    .line 558
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 559
    invoke-direct {p0, v0}, Lcom/coderpage/base/widget/MTabLayout;->removeTabViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 563
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/base/widget/MTabLayout$Tab;

    .line 564
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 565
    invoke-virtual {v1}, Lcom/coderpage/base/widget/MTabLayout$Tab;->reset()V

    .line 566
    sget-object v2, Lcom/coderpage/base/widget/MTabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v2, v1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 569
    iput-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mSelectedTab:Lcom/coderpage/base/widget/MTabLayout$Tab;

    return-void
.end method

.method public removeOnTabSelectedListener(Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTab(Lcom/coderpage/base/widget/MTabLayout$Tab;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 520
    iget-object v0, p1, Lcom/coderpage/base/widget/MTabLayout$Tab;->mParent:Lcom/coderpage/base/widget/MTabLayout;

    if-ne v0, p0, :cond_0

    .line 524
    invoke-virtual {p1}, Lcom/coderpage/base/widget/MTabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coderpage/base/widget/MTabLayout;->removeTabAt(I)V

    return-void

    .line 521
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab does not belong to this MTabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeTabAt(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mSelectedTab:Lcom/coderpage/base/widget/MTabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout$Tab;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 535
    :goto_0
    invoke-direct {p0, p1}, Lcom/coderpage/base/widget/MTabLayout;->removeTabViewAt(I)V

    .line 537
    iget-object v2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coderpage/base/widget/MTabLayout$Tab;

    if-eqz v2, :cond_1

    .line 539
    invoke-virtual {v2}, Lcom/coderpage/base/widget/MTabLayout$Tab;->reset()V

    .line 540
    sget-object v3, Lcom/coderpage/base/widget/MTabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v3, v2}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 543
    :cond_1
    iget-object v2, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p1

    :goto_1
    if-ge v3, v2, :cond_2

    .line 545
    iget-object v4, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coderpage/base/widget/MTabLayout$Tab;

    invoke-virtual {v4, v3}, Lcom/coderpage/base/widget/MTabLayout$Tab;->setPosition(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-ne v0, p1, :cond_4

    .line 549
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabs:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coderpage/base/widget/MTabLayout$Tab;

    :goto_2
    invoke-virtual {p0, p1}, Lcom/coderpage/base/widget/MTabLayout;->selectTab(Lcom/coderpage/base/widget/MTabLayout$Tab;)V

    :cond_4
    return-void
.end method

.method selectTab(Lcom/coderpage/base/widget/MTabLayout$Tab;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1040
    invoke-virtual {p0, p1, v0}, Lcom/coderpage/base/widget/MTabLayout;->selectTab(Lcom/coderpage/base/widget/MTabLayout$Tab;Z)V

    return-void
.end method

.method selectTab(Lcom/coderpage/base/widget/MTabLayout$Tab;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "tab",
            "updateIndicator"
        }
    .end annotation

    .line 1044
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mSelectedTab:Lcom/coderpage/base/widget/MTabLayout$Tab;

    if-ne v0, p1, :cond_0

    if-eqz v0, :cond_6

    .line 1048
    invoke-direct {p0, p1}, Lcom/coderpage/base/widget/MTabLayout;->dispatchTabReselected(Lcom/coderpage/base/widget/MTabLayout$Tab;)V

    .line 1049
    invoke-virtual {p1}, Lcom/coderpage/base/widget/MTabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coderpage/base/widget/MTabLayout;->animateToTab(I)V

    goto :goto_2

    :cond_0
    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 1052
    invoke-virtual {p1}, Lcom/coderpage/base/widget/MTabLayout$Tab;->getPosition()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    if-eqz p2, :cond_4

    if-eqz v0, :cond_2

    .line 1054
    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout$Tab;->getPosition()I

    move-result p2

    if-ne p2, v1, :cond_3

    :cond_2
    if-eq v2, v1, :cond_3

    const/4 p2, 0x0

    const/4 v3, 0x1

    .line 1057
    invoke-virtual {p0, v2, p2, v3}, Lcom/coderpage/base/widget/MTabLayout;->setScrollPosition(IFZ)V

    goto :goto_1

    .line 1059
    :cond_3
    invoke-direct {p0, v2}, Lcom/coderpage/base/widget/MTabLayout;->animateToTab(I)V

    :goto_1
    if-eq v2, v1, :cond_4

    .line 1062
    invoke-direct {p0, v2}, Lcom/coderpage/base/widget/MTabLayout;->setSelectedTabView(I)V

    :cond_4
    if-eqz v0, :cond_5

    .line 1066
    invoke-direct {p0, v0}, Lcom/coderpage/base/widget/MTabLayout;->dispatchTabUnselected(Lcom/coderpage/base/widget/MTabLayout$Tab;)V

    .line 1068
    :cond_5
    iput-object p1, p0, Lcom/coderpage/base/widget/MTabLayout;->mSelectedTab:Lcom/coderpage/base/widget/MTabLayout$Tab;

    if-eqz p1, :cond_6

    .line 1070
    invoke-direct {p0, p1}, Lcom/coderpage/base/widget/MTabLayout;->dispatchTabSelected(Lcom/coderpage/base/widget/MTabLayout$Tab;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mSelectedListener:Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0, v0}, Lcom/coderpage/base/widget/MTabLayout;->removeOnTabSelectedListener(Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;)V

    .line 431
    :cond_0
    iput-object p1, p0, Lcom/coderpage/base/widget/MTabLayout;->mSelectedListener:Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;

    if-eqz p1, :cond_1

    .line 433
    invoke-virtual {p0, p1}, Lcom/coderpage/base/widget/MTabLayout;->addOnTabSelectedListener(Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;)V

    :cond_1
    return-void
.end method

.method setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "adapter",
            "addObserver"
        }
    .end annotation

    .line 797
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 799
    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 802
    :cond_0
    iput-object p1, p0, Lcom/coderpage/base/widget/MTabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 806
    iget-object p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    if-nez p2, :cond_1

    .line 807
    new-instance p2, Lcom/coderpage/base/widget/MTabLayout$PagerAdapterObserver;

    invoke-direct {p2, p0}, Lcom/coderpage/base/widget/MTabLayout$PagerAdapterObserver;-><init>(Lcom/coderpage/base/widget/MTabLayout;)V

    iput-object p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 809
    :cond_1
    iget-object p2, p0, Lcom/coderpage/base/widget/MTabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 813
    :cond_2
    invoke-virtual {p0}, Lcom/coderpage/base/widget/MTabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1025
    invoke-direct {p0}, Lcom/coderpage/base/widget/MTabLayout;->ensureScrollAnimator()V

    .line 1026
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset",
            "updateSelectedText"
        }
    .end annotation

    const/4 v0, 0x1

    .line 320
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/coderpage/base/widget/MTabLayout;->setScrollPosition(IFZZ)V

    return-void
.end method

.method setScrollPosition(IFZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset",
            "updateSelectedText",
            "updateIndicatorPosition"
        }
    .end annotation

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 325
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_3

    .line 326
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 332
    iget-object p4, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    invoke-virtual {p4, p1, p2}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->setIndicatorPositionFromTabPosition(IF)V

    .line 336
    :cond_1
    iget-object p4, p0, Lcom/coderpage/base/widget/MTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 337
    iget-object p4, p0, Lcom/coderpage/base/widget/MTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 339
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/coderpage/base/widget/MTabLayout;->calculateScrollXForTab(IF)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/coderpage/base/widget/MTabLayout;->scrollTo(II)V

    if-eqz p3, :cond_3

    .line 343
    invoke-direct {p0, v0}, Lcom/coderpage/base/widget/MTabLayout;->setSelectedTabView(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    return-void
.end method

.method public setTabGravity(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gravity"
        }
    .end annotation

    .line 610
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabGravity:I

    if-eq v0, p1, :cond_0

    .line 611
    iput p1, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabGravity:I

    .line 612
    invoke-direct {p0}, Lcom/coderpage/base/widget/MTabLayout;->applyModeAndGravity()V

    :cond_0
    return-void
.end method

.method public setTabMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 587
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mMode:I

    if-eq p1, v0, :cond_0

    .line 588
    iput p1, p0, Lcom/coderpage/base/widget/MTabLayout;->mMode:I

    .line 589
    invoke-direct {p0}, Lcom/coderpage/base/widget/MTabLayout;->applyModeAndGravity()V

    :cond_0
    return-void
.end method

.method public setTabTextColors(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "normalColor",
            "selectedColor"
        }
    .end annotation

    .line 653
    invoke-static {p1, p2}, Lcom/coderpage/base/widget/MTabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coderpage/base/widget/MTabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textColor"
        }
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 633
    iput-object p1, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 634
    invoke-direct {p0}, Lcom/coderpage/base/widget/MTabLayout;->updateAllTabs()V

    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "adapter"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 755
    invoke-virtual {p0, p1, v0}, Lcom/coderpage/base/widget/MTabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewPager"
        }
    .end annotation

    const/4 v0, 0x1

    .line 665
    invoke-virtual {p0, p1, v0}, Lcom/coderpage/base/widget/MTabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;Z)V

    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "viewPager",
            "autoRefresh"
        }
    .end annotation

    const/4 v0, 0x0

    .line 687
    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/base/widget/MTabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;ZZ)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 761
    invoke-direct {p0}, Lcom/coderpage/base/widget/MTabLayout;->getTabScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method updateTabViews(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "requestLayout"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1135
    :goto_0
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1136
    iget-object v1, p0, Lcom/coderpage/base/widget/MTabLayout;->mTabStrip:Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;

    invoke-virtual {v1, v0}, Lcom/coderpage/base/widget/MTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1137
    invoke-direct {p0}, Lcom/coderpage/base/widget/MTabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1138
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/coderpage/base/widget/MTabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_0

    .line 1140
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
