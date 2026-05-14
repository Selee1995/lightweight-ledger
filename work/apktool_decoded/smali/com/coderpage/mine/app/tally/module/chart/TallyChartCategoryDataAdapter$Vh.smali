.class Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter$Vh;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TallyChartCategoryDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Vh"
.end annotation


# instance fields
.field private mBinding:Lcom/coderpage/mine/module/chart/ItemCategoryDataBinding;

.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;Lcom/coderpage/mine/module/chart/ItemCategoryDataBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "binding"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter$Vh;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;

    .line 64
    invoke-virtual {p2}, Lcom/coderpage/mine/module/chart/ItemCategoryDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 65
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter$Vh;->mBinding:Lcom/coderpage/mine/module/chart/ItemCategoryDataBinding;

    return-void
.end method


# virtual methods
.method bind(ILcom/coderpage/mine/app/tally/module/chart/data/CategoryData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "categoryData"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter$Vh;->mBinding:Lcom/coderpage/mine/module/chart/ItemCategoryDataBinding;

    invoke-virtual {v0, p2}, Lcom/coderpage/mine/module/chart/ItemCategoryDataBinding;->setData(Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;)V

    .line 70
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter$Vh;->mBinding:Lcom/coderpage/mine/module/chart/ItemCategoryDataBinding;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter$Vh;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;->access$000(Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;)Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/coderpage/mine/module/chart/ItemCategoryDataBinding;->setVm(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)V

    .line 71
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter$Vh;->mBinding:Lcom/coderpage/mine/module/chart/ItemCategoryDataBinding;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter$Vh;->this$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;->access$100(Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2, v1}, Lcom/coderpage/mine/module/chart/ItemCategoryDataBinding;->setShowDivider(Z)V

    .line 72
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/TallyChartCategoryDataAdapter$Vh;->mBinding:Lcom/coderpage/mine/module/chart/ItemCategoryDataBinding;

    invoke-virtual {p1}, Lcom/coderpage/mine/module/chart/ItemCategoryDataBinding;->executePendingBindings()V

    return-void
.end method
