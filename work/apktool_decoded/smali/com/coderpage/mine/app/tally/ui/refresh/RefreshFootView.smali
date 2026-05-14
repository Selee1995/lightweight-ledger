.class public Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;
.super Landroid/widget/FrameLayout;
.source "RefreshFootView.java"

# interfaces
.implements Lcom/lcodecore/tkrefreshlayout/IBottomView;


# instance fields
.field private mLoadingMoreMessage:Ljava/lang/String;

.field private mPullUpMessage:Ljava/lang/String;

.field private mRefreshArrow:Landroid/support/v7/widget/AppCompatImageView;

.field private mRefreshTextView:Landroid/widget/TextView;

.field private mReleaseLoadMoreMessage:Ljava/lang/String;


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

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    .line 24
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mPullUpMessage:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mReleaseLoadMoreMessage:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mLoadingMoreMessage:Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 42
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0095

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mPullUpMessage:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0097

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mReleaseLoadMoreMessage:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0093

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mLoadingMoreMessage:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0038

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090169

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mRefreshTextView:Landroid/widget/TextView;

    const v1, 0x7f090072

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatImageView;

    iput-object v1, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mRefreshArrow:Landroid/support/v7/widget/AppCompatImageView;

    .line 49
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onPullReleasing(FFF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fraction",
            "maxHeadHeight",
            "headHeight"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mRefreshTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mPullUpMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mRefreshArrow:Landroid/support/v7/widget/AppCompatImageView;

    mul-float p1, p1, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x43340000    # 180.0f

    mul-float p1, p1, p2

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setRotation(F)V

    .line 74
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mRefreshArrow:Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatImageView;->getVisibility()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 75
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mRefreshArrow:Landroid/support/v7/widget/AppCompatImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPullingUp(FFF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fraction",
            "maxBottomHeight",
            "bottomHeight"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mRefreshTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mPullUpMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mRefreshTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mReleaseLoadMoreMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mRefreshArrow:Landroid/support/v7/widget/AppCompatImageView;

    mul-float p1, p1, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x43340000    # 180.0f

    mul-float p1, p1, p2

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setRotation(F)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mRefreshTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mPullUpMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mRefreshArrow:Landroid/support/v7/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    return-void
.end method

.method public startAnim(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maxHeadHeight",
            "headHeight"
        }
    .end annotation

    .line 82
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mRefreshTextView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mLoadingMoreMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mRefreshArrow:Landroid/support/v7/widget/AppCompatImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    .line 84
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/refresh/RefreshFootView;->mRefreshArrow:Landroid/support/v7/widget/AppCompatImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    return-void
.end method
