.class Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$LoadMoreController;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "LoadMoreRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMoreController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;


# direct methods
.method private constructor <init>(Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$LoadMoreController;->this$0:Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$LoadMoreController;-><init>(Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "newState"
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    if-nez p2, :cond_2

    .line 44
    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p2

    if-nez p2, :cond_1

    .line 46
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$LoadMoreController;->this$0:Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;->access$100(Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;)Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$PullActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$LoadMoreController;->this$0:Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;->access$100(Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;)Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$PullActionListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$PullActionListener;->onPullToRefresh()V

    :cond_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p2

    .line 52
    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_2

    .line 53
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$LoadMoreController;->this$0:Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;->access$100(Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;)Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$PullActionListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 54
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$LoadMoreController;->this$0:Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;->access$100(Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView;)Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$PullActionListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/ui/widget/LoadMoreRecyclerView$PullActionListener;->onPullUpLoadMore()V

    :cond_2
    return-void
.end method
