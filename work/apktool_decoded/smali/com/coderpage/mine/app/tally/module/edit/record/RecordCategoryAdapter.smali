.class public Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecordCategoryAdapter.java"


# instance fields
.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/edit/model/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)V
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

    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryAdapter;->mCategories:Ljava/util/List;

    .line 28
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryAdapter;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 51
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b006a

    const/4 v1, 0x0

    invoke-static {p2, v0, p3, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBinding;

    .line 53
    invoke-virtual {p2}, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBinding;->getRoot()Landroid/view/View;

    move-result-object p3

    .line 54
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBinding;

    move-object v2, p3

    move-object p3, p2

    move-object p2, v2

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/app/tally/module/edit/model/Category;

    .line 59
    invoke-virtual {p2, p1}, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBinding;->setCategory(Lcom/coderpage/mine/app/tally/module/edit/model/Category;)V

    .line 60
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryAdapter;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    invoke-virtual {p2, p1}, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBinding;->setVm(Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)V

    .line 61
    invoke-virtual {p2}, Lcom/coderpage/mine/tally/module/edit/record/RecordCategoryItemBinding;->executePendingBindings()V

    return-object p3
.end method

.method public refreshData(Ljava/util/List;)V
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
            "Lcom/coderpage/mine/app/tally/module/edit/model/Category;",
            ">;)V"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryAdapter;->notifyDataSetChanged()V

    return-void
.end method
