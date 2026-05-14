.class public abstract Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "TodayExpenseItemBinding.java"


# instance fields
.field protected mActivity:Landroid/app/Activity;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mData:Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mVm:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 94
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;
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

    const v0, 0x7f0b006f

    .line 106
    invoke-static {p1, p0, v0}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 76
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;
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

    .line 57
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;
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

    const v0, 0x7f0b006f

    .line 71
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;
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

    const v0, 0x7f0b006f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;

    return-object p0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getData()Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;->mData:Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;

    return-object v0
.end method

.method public getVm()Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/coderpage/mine/tally/module/home/TodayExpenseItemBinding;->mVm:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

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

.method public abstract setData(Lcom/coderpage/mine/app/tally/module/home/model/HomeTodayDayRecordsModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation
.end method

.method public abstract setVm(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vm"
        }
    .end annotation
.end method
