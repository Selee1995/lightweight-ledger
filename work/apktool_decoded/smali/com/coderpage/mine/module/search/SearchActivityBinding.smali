.class public abstract Lcom/coderpage/mine/module/search/SearchActivityBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SearchActivityBinding.java"


# instance fields
.field public final etSearch:Landroid/widget/EditText;

.field public final loadingLayout:Lcom/coderpage/base/widget/LoadingLayout;

.field public final lySearchHistoryView:Landroid/support/constraint/ConstraintLayout;

.field protected mVm:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final recyclerHistory:Landroid/support/v7/widget/RecyclerView;

.field public final recyclerResult:Landroid/support/v7/widget/RecyclerView;

.field public final refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/EditText;Lcom/coderpage/base/widget/LoadingLayout;Landroid/support/constraint/ConstraintLayout;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView;Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;Landroid/support/v7/widget/Toolbar;)V
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
            "etSearch",
            "loadingLayout",
            "lySearchHistoryView",
            "recyclerHistory",
            "recyclerResult",
            "refreshLayout",
            "toolbar"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 53
    iput-object p4, p0, Lcom/coderpage/mine/module/search/SearchActivityBinding;->etSearch:Landroid/widget/EditText;

    .line 54
    iput-object p5, p0, Lcom/coderpage/mine/module/search/SearchActivityBinding;->loadingLayout:Lcom/coderpage/base/widget/LoadingLayout;

    .line 55
    iput-object p6, p0, Lcom/coderpage/mine/module/search/SearchActivityBinding;->lySearchHistoryView:Landroid/support/constraint/ConstraintLayout;

    .line 56
    iput-object p7, p0, Lcom/coderpage/mine/module/search/SearchActivityBinding;->recyclerHistory:Landroid/support/v7/widget/RecyclerView;

    .line 57
    iput-object p8, p0, Lcom/coderpage/mine/module/search/SearchActivityBinding;->recyclerResult:Landroid/support/v7/widget/RecyclerView;

    .line 58
    iput-object p9, p0, Lcom/coderpage/mine/module/search/SearchActivityBinding;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 59
    iput-object p10, p0, Lcom/coderpage/mine/module/search/SearchActivityBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/coderpage/mine/module/search/SearchActivityBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 109
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/module/search/SearchActivityBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/module/search/SearchActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/module/search/SearchActivityBinding;
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

    const v0, 0x7f0b001b

    .line 121
    invoke-static {p1, p0, v0}, Lcom/coderpage/mine/module/search/SearchActivityBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/search/SearchActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/coderpage/mine/module/search/SearchActivityBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 91
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/module/search/SearchActivityBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/module/search/SearchActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/coderpage/mine/module/search/SearchActivityBinding;
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

    .line 72
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/coderpage/mine/module/search/SearchActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/module/search/SearchActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/module/search/SearchActivityBinding;
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

    const v0, 0x7f0b001b

    .line 86
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/search/SearchActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/module/search/SearchActivityBinding;
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

    const v0, 0x7f0b001b

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/search/SearchActivityBinding;

    return-object p0
.end method


# virtual methods
.method public getVm()Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/coderpage/mine/module/search/SearchActivityBinding;->mVm:Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;

    return-object v0
.end method

.method public abstract setVm(Lcom/coderpage/mine/app/tally/module/search/SearchViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vm"
        }
    .end annotation
.end method
