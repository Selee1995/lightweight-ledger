.class Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter$1;
.super Landroid/support/v7/util/DiffUtil$Callback;
.source "CategorySortActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter;->setDataList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$list"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter$1;->this$1:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldItemPosition",
            "newItemPosition"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter$1;->this$1:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter;->access$100(Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    .line 169
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter$1;->val$list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    .line 170
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getId()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getId()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldItemPosition",
            "newItemPosition"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter$1;->this$1:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter;->access$100(Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    .line 162
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter$1;->val$list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    .line 163
    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getId()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;->getId()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter$1;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter$1;->this$1:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter;->access$100(Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity$CategoryListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
