.class Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "RecordCategoryPageAdapter.java"


# instance fields
.field private final PAGE_ITEM_COUNT:I

.field private mActivity:Landroid/app/Activity;

.field private mCategoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/edit/model/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPage;",
            ">;"
        }
    .end annotation
.end field

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "viewModel"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/16 v0, 0xa

    .line 20
    iput v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;->PAGE_ITEM_COUNT:I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;->mCategoryList:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;->mPageList:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;->mActivity:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "position",
            "object"
        }
    .end annotation

    .line 81
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "container",
            "position"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;->mPageList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPage;

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "object"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method setCategoryList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryList"
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

    if-nez p1, :cond_0

    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 37
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;->mPageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 42
    :goto_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    add-int/lit8 v0, p1, 0xa

    .line 43
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 45
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 46
    new-instance v1, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPage;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPage;-><init>(Landroid/content/Context;)V

    .line 47
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;->mViewModel:Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;

    invoke-virtual {v1, p1, v2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPage;->setCategoryList(Ljava/util/List;Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)V

    .line 48
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;->mPageList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move p1, v0

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPageAdapter;->notifyDataSetChanged()V

    return-void
.end method
