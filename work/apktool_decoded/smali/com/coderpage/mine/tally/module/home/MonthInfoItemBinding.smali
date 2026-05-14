.class public abstract Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "MonthInfoItemBinding.java"


# instance fields
.field public final ivChart:Landroid/support/v7/widget/AppCompatImageView;

.field protected mActivity:Landroid/app/Activity;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mData:Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mVm:Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final tvChartTip:Landroid/widget/TextView;

.field public final tvMonthBudgetLeft:Landroid/widget/TextView;

.field public final tvMonthBudgetLeftLabel:Landroid/widget/TextView;

.field public final tvMonthExpense:Landroid/widget/TextView;

.field public final tvMonthExpenseLabel:Landroid/widget/TextView;

.field public final tvMonthIncome:Landroid/widget/TextView;

.field public final tvMonthIncomeLabel:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/support/v7/widget/AppCompatImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
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
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "ivChart",
            "tvChartTip",
            "tvMonthBudgetLeft",
            "tvMonthBudgetLeftLabel",
            "tvMonthExpense",
            "tvMonthExpenseLabel",
            "tvMonthIncome",
            "tvMonthIncomeLabel"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 60
    iput-object p4, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;->ivChart:Landroid/support/v7/widget/AppCompatImageView;

    .line 61
    iput-object p5, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;->tvChartTip:Landroid/widget/TextView;

    .line 62
    iput-object p6, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;->tvMonthBudgetLeft:Landroid/widget/TextView;

    .line 63
    iput-object p7, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;->tvMonthBudgetLeftLabel:Landroid/widget/TextView;

    .line 64
    iput-object p8, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;->tvMonthExpense:Landroid/widget/TextView;

    .line 65
    iput-object p9, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;->tvMonthExpenseLabel:Landroid/widget/TextView;

    .line 66
    iput-object p10, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;->tvMonthIncome:Landroid/widget/TextView;

    .line 67
    iput-object p11, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;->tvMonthIncomeLabel:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 131
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;
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

    const v0, 0x7f0b006e

    .line 143
    invoke-static {p1, p0, v0}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 113
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;
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

    .line 94
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;
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

    const v0, 0x7f0b006e

    .line 108
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;
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

    const v0, 0x7f0b006e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 127
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;

    return-object p0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getData()Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;->mData:Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;

    return-object v0
.end method

.method public getVm()Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/home/MonthInfoItemBinding;->mVm:Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;

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

.method public abstract setData(Lcom/coderpage/mine/app/tally/module/home/model/HomeMonthModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation
.end method

.method public abstract setVm(Lcom/coderpage/mine/app/tally/module/home/HomeMonthInfoViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vm"
        }
    .end annotation
.end method
