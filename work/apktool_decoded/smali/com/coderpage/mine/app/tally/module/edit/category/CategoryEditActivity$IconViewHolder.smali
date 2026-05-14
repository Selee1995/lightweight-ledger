.class Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity$IconViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CategoryEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconViewHolder"
.end annotation


# instance fields
.field private mBinding:Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;

.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;)V
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

    .line 150
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity$IconViewHolder;->this$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;

    .line 151
    invoke-virtual {p2}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 152
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity$IconViewHolder;->mBinding:Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;

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
            "icon"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity$IconViewHolder;->mBinding:Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;->setCategoryIcon(Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity$IconViewHolder;->mBinding:Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity$IconViewHolder;->this$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;->access$200(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity;)Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;->setVm(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;)V

    .line 158
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditActivity$IconViewHolder;->mBinding:Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;

    invoke-virtual {p1}, Lcom/coderpage/mine/module/edit/category/ItemCategoryIconBinding;->executePendingBindings()V

    return-void
.end method
