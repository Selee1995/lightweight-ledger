.class public abstract Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "HomeActivityBinding.java"


# instance fields
.field public final btnAddRecord:Landroid/support/constraint/ConstraintLayout;

.field public final ivAddNewRecord:Landroid/support/v7/widget/AppCompatImageView;

.field public final ivBottomMenu:Landroid/widget/FrameLayout;

.field protected mActivity:Landroid/support/v4/app/FragmentActivity;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mVm:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final recyclerView:Landroid/support/v7/widget/RecyclerView;

.field public final refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;

.field public final tvAddNewRecord:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/support/constraint/ConstraintLayout;Landroid/support/v7/widget/AppCompatImageView;Landroid/widget/FrameLayout;Landroid/support/v7/widget/RecyclerView;Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;Landroid/support/v7/widget/Toolbar;Landroid/widget/TextView;)V
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
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "btnAddRecord",
            "ivAddNewRecord",
            "ivBottomMenu",
            "recyclerView",
            "refreshLayout",
            "toolbar",
            "tvAddNewRecord"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 57
    iput-object p4, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;->btnAddRecord:Landroid/support/constraint/ConstraintLayout;

    .line 58
    iput-object p5, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;->ivAddNewRecord:Landroid/support/v7/widget/AppCompatImageView;

    .line 59
    iput-object p6, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;->ivBottomMenu:Landroid/widget/FrameLayout;

    .line 60
    iput-object p7, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 61
    iput-object p8, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 62
    iput-object p9, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 63
    iput-object p10, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;->tvAddNewRecord:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 120
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;
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

    const v0, 0x7f0b003d

    .line 132
    invoke-static {p1, p0, v0}, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 102
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;
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

    .line 83
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;
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

    const v0, 0x7f0b003d

    .line 97
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;
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

    const v0, 0x7f0b003d

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;

    return-object p0
.end method


# virtual methods
.method public getActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;->mActivity:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method public getVm()Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeActivityBinding;->mVm:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    return-object v0
.end method

.method public abstract setActivity(Landroid/support/v4/app/FragmentActivity;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
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
