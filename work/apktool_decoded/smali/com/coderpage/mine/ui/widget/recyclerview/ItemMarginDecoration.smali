.class public Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ItemMarginDecoration.java"


# instance fields
.field private mCommonOffset:Landroid/graphics/Rect;

.field private mFirstItemOffset:Landroid/graphics/Rect;

.field private mLastItemOffset:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "leftPx",
            "topPx",
            "rightPx",
            "bottomPx"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;->mCommonOffset:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;->mFirstItemOffset:Landroid/graphics/Rect;

    .line 29
    iput-object v1, p0, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;->mLastItemOffset:Landroid/graphics/Rect;

    .line 32
    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 33
    iget-object p1, p0, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;->mCommonOffset:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 34
    iget-object p1, p0, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;->mCommonOffset:Landroid/graphics/Rect;

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 35
    iget-object p1, p0, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;->mCommonOffset:Landroid/graphics/Rect;

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outRect",
            "view",
            "parent",
            "state"
        }
    .end annotation

    .line 51
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p2

    .line 53
    iget-object p3, p0, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;->mFirstItemOffset:Landroid/graphics/Rect;

    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    .line 54
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .line 58
    :cond_0
    iget-object p3, p0, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;->mLastItemOffset:Landroid/graphics/Rect;

    if-eqz p3, :cond_1

    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_1

    .line 59
    iget-object p2, p0, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;->mLastItemOffset:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .line 63
    :cond_1
    iget-object p2, p0, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;->mCommonOffset:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setFirstItemOffset(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "leftPx",
            "topPx",
            "rightPx",
            "bottomPx"
        }
    .end annotation

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;->mFirstItemOffset:Landroid/graphics/Rect;

    return-void
.end method

.method public setLastItemOffset(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "leftPx",
            "topPx",
            "rightPx",
            "bottomPx"
        }
    .end annotation

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/coderpage/mine/ui/widget/recyclerview/ItemMarginDecoration;->mLastItemOffset:Landroid/graphics/Rect;

    return-void
.end method
