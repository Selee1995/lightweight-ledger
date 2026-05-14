.class Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$1;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "CategorySortActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$1;->this$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "viewHolder"
        }
    .end annotation

    const/4 p1, 0x3

    const/4 p2, 0x0

    .line 218
    invoke-static {p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$1;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "viewHolder",
            "target"
        }
    .end annotation

    .line 225
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 226
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 227
    iget-object p3, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$1;->this$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;

    invoke-static {p3}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->access$300(Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;)Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;->onItemSwap(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "actionState"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 234
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 236
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method
