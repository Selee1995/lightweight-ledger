.class public Lcom/coderpage/mine/ui/widget/MineProcessDialog;
.super Landroid/app/Dialog;
.source "MineProcessDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/ui/widget/MineProcessDialog$Builder;
    }
.end annotation


# instance fields
.field private mMessageTv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const v0, 0x7f0f0195

    .line 29
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090171

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coderpage/mine/ui/widget/MineProcessDialog;->mMessageTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 36
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/ui/widget/MineProcessDialog;->setContentView(Landroid/view/View;)V

    .line 39
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/widget/MineProcessDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 44
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x41f00000    # 30.0f

    .line 46
    invoke-static {p1, v3}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    add-int/2addr v1, p1

    .line 47
    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    const/16 p1, 0x11

    .line 48
    invoke-virtual {v0, p1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/coderpage/mine/ui/widget/MineProcessDialog$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/coderpage/mine/ui/widget/MineProcessDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setMessage(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/coderpage/mine/ui/widget/MineProcessDialog;->mMessageTv:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/coderpage/mine/ui/widget/MineProcessDialog;->mMessageTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
