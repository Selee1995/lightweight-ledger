.class Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemHistoryVh;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SearchHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemHistoryVh"
.end annotation


# instance fields
.field private mBinding:Lcom/coderpage/mine/module/search/ItemSearchHistoryBinding;

.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;Lcom/coderpage/mine/module/search/ItemSearchHistoryBinding;)V
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

    .line 86
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemHistoryVh;->this$0:Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;

    .line 87
    invoke-virtual {p2}, Lcom/coderpage/mine/module/search/ItemSearchHistoryBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 88
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemHistoryVh;->mBinding:Lcom/coderpage/mine/module/search/ItemSearchHistoryBinding;

    return-void
.end method


# virtual methods
.method bind(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "history"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemHistoryVh;->mBinding:Lcom/coderpage/mine/module/search/ItemSearchHistoryBinding;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/module/search/ItemSearchHistoryBinding;->setText(Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemHistoryVh;->mBinding:Lcom/coderpage/mine/module/search/ItemSearchHistoryBinding;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemHistoryVh;->this$0:Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;->access$000(Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;)Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coderpage/mine/module/search/ItemSearchHistoryBinding;->setVm(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)V

    .line 94
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemHistoryVh;->mBinding:Lcom/coderpage/mine/module/search/ItemSearchHistoryBinding;

    invoke-virtual {p1}, Lcom/coderpage/mine/module/search/ItemSearchHistoryBinding;->executePendingBindings()V

    return-void
.end method
