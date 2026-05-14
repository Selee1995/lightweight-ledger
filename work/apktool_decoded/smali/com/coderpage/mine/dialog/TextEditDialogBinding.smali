.class public abstract Lcom/coderpage/mine/dialog/TextEditDialogBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "TextEditDialogBinding.java"


# instance fields
.field public final etContent:Landroid/widget/EditText;

.field public final guideCenter:Landroid/support/constraint/Guideline;

.field protected mContent:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mHint:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mTitle:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final tvCancel:Landroid/widget/TextView;

.field public final tvConfirm:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/EditText;Landroid/support/constraint/Guideline;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
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
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "etContent",
            "guideCenter",
            "tvCancel",
            "tvConfirm",
            "tvTitle"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 48
    iput-object p4, p0, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->etContent:Landroid/widget/EditText;

    .line 49
    iput-object p5, p0, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->guideCenter:Landroid/support/constraint/Guideline;

    .line 50
    iput-object p6, p0, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->tvCancel:Landroid/widget/TextView;

    .line 51
    iput-object p7, p0, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->tvConfirm:Landroid/widget/TextView;

    .line 52
    iput-object p8, p0, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/coderpage/mine/dialog/TextEditDialogBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 116
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/dialog/TextEditDialogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/coderpage/mine/dialog/TextEditDialogBinding;
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

    const v0, 0x7f0b0057

    .line 128
    invoke-static {p1, p0, v0}, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/dialog/TextEditDialogBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/coderpage/mine/dialog/TextEditDialogBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 98
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/dialog/TextEditDialogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/coderpage/mine/dialog/TextEditDialogBinding;
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

    .line 79
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/dialog/TextEditDialogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/coderpage/mine/dialog/TextEditDialogBinding;
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

    const v0, 0x7f0b0057

    .line 93
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/dialog/TextEditDialogBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/coderpage/mine/dialog/TextEditDialogBinding;
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

    const v0, 0x7f0b0057

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 112
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/coderpage/mine/dialog/TextEditDialogBinding;

    return-object p0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->mHint:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public abstract setContent(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation
.end method

.method public abstract setHint(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hint"
        }
    .end annotation
.end method

.method public abstract setTitle(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation
.end method
