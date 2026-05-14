.class Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CategoryManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;


# direct methods
.method private constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryListAdapter;->this$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 159
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryListAdapter;->mDataList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$1;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryListAdapter;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryListAdapter;->mDataList:Ljava/util/List;

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

    .line 157
    check-cast p1, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryListAdapter;->onBindViewHolder(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryViewHolder;I)V
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

    .line 183
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryViewHolder;->bind(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V

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

    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryViewHolder;
    .locals 4
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

    .line 177
    new-instance p2, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryViewHolder;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryListAdapter;->this$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->access$200(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;)Lcom/coderpage/mine/ui/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0067

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBinding;

    invoke-direct {p2, v0, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryViewHolder;-><init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBinding;)V

    return-object p2
.end method

.method setDataList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 167
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryListAdapter;->notifyDataSetChanged()V

    return-void
.end method
