.class Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CategorySortActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryViewHolder"
.end annotation


# instance fields
.field private mBinding:Lcom/coderpage/mine/module/edit/category/ItemCategorySortBinding;

.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;Lcom/coderpage/mine/module/edit/category/ItemCategorySortBinding;)V
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

    .line 200
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryViewHolder;->this$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;

    .line 201
    invoke-virtual {p2}, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 202
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryViewHolder;->mBinding:Lcom/coderpage/mine/module/edit/category/ItemCategorySortBinding;

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

    .line 206
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryViewHolder;->mBinding:Lcom/coderpage/mine/module/edit/category/ItemCategorySortBinding;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBinding;->setData(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V

    .line 207
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryViewHolder;->mBinding:Lcom/coderpage/mine/module/edit/category/ItemCategorySortBinding;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryViewHolder;->this$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->access$300(Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;)Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBinding;->setVm(Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortViewModel;)V

    .line 208
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryViewHolder;->mBinding:Lcom/coderpage/mine/module/edit/category/ItemCategorySortBinding;

    invoke-virtual {p1}, Lcom/coderpage/mine/module/edit/category/ItemCategorySortBinding;->executePendingBindings()V

    return-void
.end method
