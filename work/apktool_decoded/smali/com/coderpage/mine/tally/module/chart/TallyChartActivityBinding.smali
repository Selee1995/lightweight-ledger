.class public abstract Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "TallyChartActivityBinding.java"


# instance fields
.field public final barChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

.field public final ivSwitchDailyAndYearly:Landroid/support/v7/widget/AppCompatImageView;

.field public final lineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

.field public final lyContainer:Landroid/support/v4/widget/NestedScrollView;

.field protected mActivity:Landroid/app/Activity;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mVm:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final mainContent:Landroid/support/constraint/ConstraintLayout;

.field public final pieChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;

.field public final recyclerCategory:Landroid/support/v7/widget/RecyclerView;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;

.field public final tvGlobalInfoDate:Landroid/widget/TextView;

.field public final tvGlobalInfoExpense:Landroid/widget/TextView;

.field public final tvGlobalInfoIncome:Landroid/widget/TextView;

.field public final tvGlobalInfoLeft:Landroid/widget/TextView;

.field public final tvSwitchExpense:Landroid/widget/TextView;

.field public final tvSwitchIncome:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;Landroid/support/v7/widget/AppCompatImageView;Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;Landroid/support/v4/widget/NestedScrollView;Landroid/support/constraint/ConstraintLayout;Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/Toolbar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "barChart",
            "ivSwitchDailyAndYearly",
            "lineChart",
            "lyContainer",
            "mainContent",
            "pieChart",
            "recyclerCategory",
            "toolbar",
            "tvGlobalInfoDate",
            "tvGlobalInfoExpense",
            "tvGlobalInfoIncome",
            "tvGlobalInfoLeft",
            "tvSwitchExpense",
            "tvSwitchIncome"
        }
    .end annotation

    move-object v0, p0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 83
    iput-object v1, v0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->barChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineBarChart;

    move-object v1, p5

    .line 84
    iput-object v1, v0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->ivSwitchDailyAndYearly:Landroid/support/v7/widget/AppCompatImageView;

    move-object v1, p6

    .line 85
    iput-object v1, v0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->lineChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MineLineChart;

    move-object v1, p7

    .line 86
    iput-object v1, v0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->lyContainer:Landroid/support/v4/widget/NestedScrollView;

    move-object v1, p8

    .line 87
    iput-object v1, v0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->mainContent:Landroid/support/constraint/ConstraintLayout;

    move-object v1, p9

    .line 88
    iput-object v1, v0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->pieChart:Lcom/coderpage/mine/app/tally/module/chart/widget/MinePieChart;

    move-object v1, p10

    .line 89
    iput-object v1, v0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->recyclerCategory:Landroid/support/v7/widget/RecyclerView;

    move-object v1, p11

    .line 90
    iput-object v1, v0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    move-object v1, p12

    .line 91
    iput-object v1, v0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->tvGlobalInfoDate:Landroid/widget/TextView;

    move-object v1, p13

    .line 92
    iput-object v1, v0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->tvGlobalInfoExpense:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 93
    iput-object v1, v0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->tvGlobalInfoIncome:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 94
    iput-object v1, v0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->tvGlobalInfoLeft:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 95
    iput-object v1, v0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->tvSwitchExpense:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 96
    iput-object v1, v0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->tvSwitchIncome:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 153
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0b005f

    .line 165
    invoke-static {p1, p0, v0}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 135
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot"
        }
    .end annotation

    .line 116
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0b005f

    .line 130
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0b005f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 149
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;

    return-object p0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getVm()Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/chart/TallyChartActivityBinding;->mVm:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    return-object v0
.end method

.method public abstract setActivity(Landroid/app/Activity;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation
.end method

.method public abstract setVm(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vm"
        }
    .end annotation
.end method
