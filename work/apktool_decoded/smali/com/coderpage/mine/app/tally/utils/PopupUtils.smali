.class public Lcom/coderpage/mine/app/tally/utils/PopupUtils;
.super Ljava/lang/Object;
.source "PopupUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter;,
        Lcom/coderpage/mine/app/tally/utils/PopupUtils$InternalPopupMenuItemOnclickListener;,
        Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupMenuItemOnclickListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPopupMenuWindow(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)Landroid/support/v7/widget/ListPopupWindow;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "anchor",
            "titles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/support/v7/widget/ListPopupWindow;"
        }
    .end annotation

    .line 28
    new-instance v0, Landroid/support/v7/widget/ListPopupWindow;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v1, Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/coderpage/mine/app/tally/utils/PopupUtils$1;)V

    .line 32
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 33
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    invoke-static {p0}, Lcom/coderpage/base/utils/UIUtils;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 p1, p1, 0x2

    .line 35
    invoke-static {v1, v2, p0, p1}, Lcom/coderpage/mine/app/tally/utils/PopupUtils;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result p0

    .line 34
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ListPopupWindow;->setContentWidth(I)V

    const/4 p0, 0x1

    .line 37
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ListPopupWindow;->setModal(Z)V

    return-object v0
.end method

.method private static measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "parent",
            "context",
            "maxAllowedWidth"
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 58
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 59
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    move-object v7, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v0, v3, :cond_4

    .line 61
    invoke-interface {p0, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v6, :cond_0

    move-object v7, v4

    move v6, v8

    :cond_0
    if-nez p1, :cond_1

    .line 68
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 71
    :cond_1
    invoke-interface {p0, v0, v7, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 72
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    .line 74
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-lt v8, p3, :cond_2

    return p3

    :cond_2
    if-le v8, v5, :cond_3

    move v5, v8

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v5
.end method
