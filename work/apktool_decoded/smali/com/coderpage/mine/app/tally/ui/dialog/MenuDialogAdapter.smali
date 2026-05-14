.class Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MenuDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter$Vh;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter$Vh;",
        ">;"
    }
.end annotation


# instance fields
.field private mMenuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;",
            ">;"
        }
    .end annotation
.end field

.field private mViewModel:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewModel"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;->mMenuList:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;->mViewModel:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;)Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;->mViewModel:Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogViewModel;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;->mMenuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 19
    check-cast p1, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter$Vh;

    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;->onBindViewHolder(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter$Vh;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter$Vh;I)V
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

    .line 50
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;->mMenuList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;

    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter$Vh;->bind(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter$Vh;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter$Vh;
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

    .line 44
    new-instance p2, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter$Vh;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0055

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/dialog/MenuDialogItemBinding;

    invoke-direct {p2, p0, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter$Vh;-><init>(Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;Lcom/coderpage/mine/dialog/MenuDialogItemBinding;)V

    return-object p2
.end method

.method setMenuList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;->mMenuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;->mMenuList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/MenuDialogAdapter;->notifyDataSetChanged()V

    return-void
.end method
