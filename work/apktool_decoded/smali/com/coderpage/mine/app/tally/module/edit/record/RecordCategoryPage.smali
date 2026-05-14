.class public Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPage;
.super Landroid/widget/FrameLayout;
.source "RecordCategoryPage.java"


# instance fields
.field private mAdapter:Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryAdapter;

.field private mGridView:Landroid/widget/GridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPage;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const v0, 0x7f0b006b

    .line 42
    invoke-static {p1, v0, p0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPage;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090065

    .line 43
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPage;->mGridView:Landroid/widget/GridView;

    return-void
.end method


# virtual methods
.method setCategoryList(Ljava/util/List;Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "categoryList",
            "viewModel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/edit/model/Category;",
            ">;",
            "Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;",
            ")V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPage;->mAdapter:Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryAdapter;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryAdapter;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryAdapter;-><init>(Landroid/content/Context;Lcom/coderpage/mine/app/tally/module/edit/record/RecordViewModel;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPage;->mAdapter:Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryAdapter;

    .line 49
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPage;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    :cond_0
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryPage;->mAdapter:Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryAdapter;

    invoke-virtual {p2, p1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordCategoryAdapter;->refreshData(Ljava/util/List;)V

    return-void
.end method
