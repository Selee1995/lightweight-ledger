.class Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemClearAllVh;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SearchHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemClearAllVh"
.end annotation


# instance fields
.field private mBinding:Lcom/coderpage/mine/module/search/ItemClearAllBinding;

.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;Lcom/coderpage/mine/module/search/ItemClearAllBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "binding"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemClearAllVh;->this$0:Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;

    .line 102
    invoke-virtual {p2}, Lcom/coderpage/mine/module/search/ItemClearAllBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 103
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemClearAllVh;->mBinding:Lcom/coderpage/mine/module/search/ItemClearAllBinding;

    return-void
.end method


# virtual methods
.method bind()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemClearAllVh;->mBinding:Lcom/coderpage/mine/module/search/ItemClearAllBinding;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemClearAllVh;->this$0:Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;->access$000(Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;)Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/module/search/ItemClearAllBinding;->setVm(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)V

    .line 108
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemClearAllVh;->mBinding:Lcom/coderpage/mine/module/search/ItemClearAllBinding;

    invoke-virtual {v0}, Lcom/coderpage/mine/module/search/ItemClearAllBinding;->executePendingBindings()V

    return-void
.end method
