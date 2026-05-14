.class Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TallyChartCategoryDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter$Vh;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter$Vh;",
        ">;"
    }
.end annotation


# instance fields
.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;",
            ">;"
        }
    .end annotation
.end field

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewModel"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;->mDataList:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;->mViewModel:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;)Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;->mViewModel:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;->mDataList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;->mDataList:Ljava/util/List;

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

    .line 20
    check-cast p1, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter$Vh;

    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;->onBindViewHolder(Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter$Vh;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter$Vh;I)V
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

    .line 56
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;

    invoke-virtual {p1, p2, v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter$Vh;->bind(ILcom/coderpage/mine/app/tally/module/chart/data/CategoryData;)V

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

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter$Vh;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter$Vh;
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

    .line 50
    new-instance p2, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter$Vh;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b005d

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/module/chart/ItemCategoryDataBinding;

    invoke-direct {p2, p0, p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter$Vh;-><init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;Lcom/coderpage/mine/module/chart/ItemCategoryDataBinding;)V

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
            "Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;->notifyDataSetChanged()V

    return-void
.end method
