.class public abstract Lcom/coderpage/mine/module/web/WebActivityBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "WebActivityBinding.java"


# instance fields
.field public final appBarDividerView:Landroid/view/View;

.field public final progressView:Lcom/coderpage/mine/ui/widget/ProgressView;

.field public final toolbar:Landroid/view/View;

.field public final webView:Lcom/coderpage/mine/ui/widget/MWebView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Lcom/coderpage/mine/ui/widget/ProgressView;Landroid/view/View;Lcom/coderpage/mine/ui/widget/MWebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "appBarDividerView",
            "progressView",
            "toolbar",
            "webView"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 33
    iput-object p4, p0, Lcom/coderpage/mine/module/web/WebActivityBinding;->appBarDividerView:Landroid/view/View;

    .line 34
    iput-object p5, p0, Lcom/coderpage/mine/module/web/WebActivityBinding;->progressView:Lcom/coderpage/mine/ui/widget/ProgressView;

    .line 35
    iput-object p6, p0, Lcom/coderpage/mine/module/web/WebActivityBinding;->toolbar:Landroid/view/View;

    .line 36
    iput-object p7, p0, Lcom/coderpage/mine/module/web/WebActivityBinding;->webView:Lcom/coderpage/mine/ui/widget/MWebView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/coderpage/mine/module/web/WebActivityBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 79
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/module/web/WebActivityBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/module/web/WebActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/module/web/WebActivityBinding;
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

    const v0, 0x7f0b003e

    .line 91
    invoke-static {p1, p0, v0}, Lcom/coderpage/mine/module/web/WebActivityBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/web/WebActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/coderpage/mine/module/web/WebActivityBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 61
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/module/web/WebActivityBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/module/web/WebActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/coderpage/mine/module/web/WebActivityBinding;
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

    .line 42
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/coderpage/mine/module/web/WebActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/module/web/WebActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/module/web/WebActivityBinding;
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

    const v0, 0x7f0b003e

    .line 56
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/web/WebActivityBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/module/web/WebActivityBinding;
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

    const v0, 0x7f0b003e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 75
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/module/web/WebActivityBinding;

    return-object p0
.end method
