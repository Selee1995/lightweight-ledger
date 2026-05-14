.class Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CategoryManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryViewHolder"
.end annotation


# instance fields
.field private mBinding:Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBinding;

.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "binding"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryViewHolder;->this$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;

    .line 193
    invoke-virtual {p2}, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 194
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryViewHolder;->mBinding:Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBinding;

    return-void
.end method


# virtual methods
.method bind(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "category"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryViewHolder;->mBinding:Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBinding;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBinding;->setData(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V

    .line 199
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryViewHolder;->mBinding:Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBinding;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryViewHolder;->this$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->access$000(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;)Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBinding;->setVm(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;)V

    .line 200
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$CategoryViewHolder;->mBinding:Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBinding;

    invoke-virtual {p1}, Lcom/coderpage/mine/module/edit/category/ItemManagerCategoryBinding;->executePendingBindings()V

    return-void
.end method
