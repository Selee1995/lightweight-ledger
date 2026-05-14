.class public Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;
.super Ljava/lang/Object;
.source "MTabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/base/widget/MTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabLayoutOnPageChangeListener"
.end annotation


# instance fields
.field private mPreviousScrollState:I

.field private mScrollState:I

.field private final mTabLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coderpage/base/widget/MTabLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coderpage/base/widget/MTabLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabLayout"
        }
    .end annotation

    .line 2087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2088
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "state"
        }
    .end annotation

    .line 2093
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    iput v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    .line 2094
    iput p1, p0, Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "position",
            "positionOffset",
            "positionOffsetPixels"
        }
    .end annotation

    .line 2100
    iget-object p3, p0, Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coderpage/base/widget/MTabLayout;

    if-eqz p3, :cond_4

    .line 2104
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget v4, p0, Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    if-ne v4, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-ne v0, v2, :cond_2

    .line 2109
    iget v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 2111
    :cond_3
    invoke-virtual {p3, p1, p2, v4, v1}, Lcom/coderpage/base/widget/MTabLayout;->setScrollPosition(IFZZ)V

    :cond_4
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "position"
        }
    .end annotation

    .line 2117
    iget-object v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coderpage/base/widget/MTabLayout;

    if-eqz v0, :cond_2

    .line 2118
    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v1, p1, :cond_2

    .line 2119
    invoke-virtual {v0}, Lcom/coderpage/base/widget/MTabLayout;->getTabCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 2122
    iget v1, p0, Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 2125
    :goto_1
    invoke-virtual {v0, p1}, Lcom/coderpage/base/widget/MTabLayout;->getTabAt(I)Lcom/coderpage/base/widget/MTabLayout$Tab;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/coderpage/base/widget/MTabLayout;->selectTab(Lcom/coderpage/base/widget/MTabLayout$Tab;Z)V

    :cond_2
    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 2130
    iput v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    iput v0, p0, Lcom/coderpage/base/widget/MTabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    return-void
.end method
