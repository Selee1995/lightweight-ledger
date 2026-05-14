.class Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SearchHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemClearAllVh;,
        Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemHistoryVh;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEM_CLEAR_ALL:Ljava/lang/String; = "ITEM_CLEAR_ALL"

.field private static final ITEM_TYPE_BOTTOM:I = 0x2

.field private static final ITEM_TYPE_NORMAL:I = 0x1


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "viewModel"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;->mItems:Ljava/util/List;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;->mViewModel:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;)Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;->mViewModel:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ITEM_CLEAR_ALL"

    invoke-static {p1, v0}, Lcom/coderpage/base/utils/CommonUtils;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 76
    instance-of v0, p1, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemHistoryVh;

    if-eqz v0, :cond_0

    .line 77
    check-cast p1, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemHistoryVh;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemHistoryVh;->bind(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_0
    instance-of p2, p1, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemClearAllVh;

    if-eqz p2, :cond_1

    .line 79
    check-cast p1, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemClearAllVh;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemClearAllVh;->bind()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 66
    new-instance p2, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemHistoryVh;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b0072

    invoke-static {v1, v2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/module/search/ItemSearchHistoryBinding;

    invoke-direct {p2, p0, p1}, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemHistoryVh;-><init>(Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;Lcom/coderpage/mine/module/search/ItemSearchHistoryBinding;)V

    return-object p2

    .line 69
    :cond_0
    new-instance p2, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemClearAllVh;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b0071

    invoke-static {v1, v2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/module/search/ItemClearAllBinding;

    invoke-direct {p2, p0, p1}, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter$ItemClearAllVh;-><init>(Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;Lcom/coderpage/mine/module/search/ItemClearAllBinding;)V

    return-object p2
.end method

.method refresh(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;->mItems:Ljava/util/List;

    const-string v0, "ITEM_CLEAR_ALL"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/search/SearchHistoryAdapter;->notifyDataSetChanged()V

    return-void
.end method
