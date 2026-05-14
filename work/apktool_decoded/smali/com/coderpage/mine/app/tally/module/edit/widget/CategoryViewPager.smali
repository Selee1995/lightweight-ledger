.class public Lcom/coderpage/mine/app/tally/module/edit/widget/CategoryViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "CategoryViewPager.java"


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

    .line 16
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

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

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
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

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 28
    :goto_0
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/widget/CategoryViewPager;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 29
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/edit/widget/CategoryViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 30
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/view/View;->measure(II)V

    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000000    # 2.0f

    .line 38
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 39
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    return-void
.end method
