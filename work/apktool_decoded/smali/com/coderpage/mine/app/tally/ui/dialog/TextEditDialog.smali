.class public Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;
.super Landroid/app/Dialog;
.source "TextEditDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog$Listener;
    }
.end annotation


# instance fields
.field private mBinding:Lcom/coderpage/mine/dialog/TextEditDialogBinding;

.field private mListener:Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog$Listener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    const v0, 0x7f0f0192

    .line 30
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 31
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->initView(Landroid/app/Activity;)V

    return-void
.end method

.method private initView(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0057

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/dialog/TextEditDialogBinding;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->mBinding:Lcom/coderpage/mine/dialog/TextEditDialogBinding;

    .line 39
    iget-object p1, p1, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->etContent:Landroid/widget/EditText;

    new-instance v0, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$TextEditDialog$P15JVMgLkCvxuZ4ZumlWUEzUjTc;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$TextEditDialog$P15JVMgLkCvxuZ4ZumlWUEzUjTc;-><init>(Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 46
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->mBinding:Lcom/coderpage/mine/dialog/TextEditDialogBinding;

    iget-object p1, p1, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v0, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$TextEditDialog$F0ZvFRH2DphMNWggPEF5rEYG6ms;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$TextEditDialog$F0ZvFRH2DphMNWggPEF5rEYG6ms;-><init>(Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->mBinding:Lcom/coderpage/mine/dialog/TextEditDialogBinding;

    iget-object p1, p1, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->tvConfirm:Landroid/widget/TextView;

    new-instance v0, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$TextEditDialog$_0bJu4tXtUECftvYLbzqnS95BJY;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$TextEditDialog$_0bJu4tXtUECftvYLbzqnS95BJY;-><init>(Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->mBinding:Lcom/coderpage/mine/dialog/TextEditDialogBinding;

    invoke-virtual {p1}, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    .line 60
    invoke-virtual {p1, v2, v2}, Landroid/view/View;->measure(II)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->setContentView(Landroid/view/View;)V

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->initWindow(I)V

    return-void
.end method

.method private initWindow(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x50

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 72
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 73
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 74
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$TextEditDialog(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$1$TextEditDialog(Landroid/view/View;)V
    .locals 1

    .line 47
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->mListener:Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog$Listener;

    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->mBinding:Lcom/coderpage/mine/dialog/TextEditDialogBinding;

    iget-object v0, v0, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->etContent:Landroid/widget/EditText;

    invoke-interface {p1, v0, p0}, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog$Listener;->onNegativeClick(Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$2$TextEditDialog(Landroid/view/View;)V
    .locals 2

    .line 52
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->mBinding:Lcom/coderpage/mine/dialog/TextEditDialogBinding;

    iget-object p1, p1, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->etContent:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->mListener:Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog$Listener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->mBinding:Lcom/coderpage/mine/dialog/TextEditDialogBinding;

    iget-object v1, v1, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->etContent:Landroid/widget/EditText;

    invoke-interface {v0, v1, p0, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog$Listener;->onPositiveClick(Landroid/widget/EditText;Landroid/content/DialogInterface;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setContent(Ljava/lang/String;)Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->mBinding:Lcom/coderpage/mine/dialog/TextEditDialogBinding;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->setContent(Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->mBinding:Lcom/coderpage/mine/dialog/TextEditDialogBinding;

    invoke-virtual {p1}, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->executePendingBindings()V

    .line 98
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->mBinding:Lcom/coderpage/mine/dialog/TextEditDialogBinding;

    iget-object p1, p1, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->etContent:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->mBinding:Lcom/coderpage/mine/dialog/TextEditDialogBinding;

    iget-object v0, v0, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->etContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-object p0
.end method

.method public setHint(Ljava/lang/String;)Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hint"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->mBinding:Lcom/coderpage/mine/dialog/TextEditDialogBinding;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->setHint(Ljava/lang/String;)V

    return-object p0
.end method

.method public setListener(Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog$Listener;)Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->mListener:Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog$Listener;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->mBinding:Lcom/coderpage/mine/dialog/TextEditDialogBinding;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->setTitle(Ljava/lang/String;)V

    return-object p0
.end method

.method public show()V
    .locals 2

    .line 80
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 81
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->mBinding:Lcom/coderpage/mine/dialog/TextEditDialogBinding;

    iget-object v0, v0, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->etContent:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 82
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/TextEditDialog;->mBinding:Lcom/coderpage/mine/dialog/TextEditDialogBinding;

    iget-object v0, v0, Lcom/coderpage/mine/dialog/TextEditDialogBinding;->etContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
