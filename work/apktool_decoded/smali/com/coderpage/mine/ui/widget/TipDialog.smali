.class public Lcom/coderpage/mine/ui/widget/TipDialog;
.super Landroid/app/Dialog;
.source "TipDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/ui/widget/TipDialog$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 32
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$000(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f0193

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    invoke-direct {p0, p1}, Lcom/coderpage/mine/ui/widget/TipDialog;->init(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;Lcom/coderpage/mine/ui/widget/TipDialog$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/coderpage/mine/ui/widget/TipDialog;-><init>(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)V

    return-void
.end method

.method private init(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 41
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$100(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coderpage/mine/ui/widget/TipDialog;->setCancelable(Z)V

    .line 43
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$000(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0031

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/coderpage/mine/dialog/TipDialogBinding;

    .line 46
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$200(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7f0600b0

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 49
    :cond_0
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvTitle:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$200(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvTitle:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$300(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)I

    move-result v6

    if-ne v6, v4, :cond_1

    .line 52
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$000(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v6

    goto :goto_0

    .line 53
    :cond_1
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$000(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f060028

    invoke-static {v6, v7}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 51
    :goto_0
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    :goto_1
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$400(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 59
    :cond_2
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvMessage:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$400(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvMessage:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 64
    :goto_2
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$500(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvNeutral:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 66
    iget-object v6, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->lyContainer:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v6}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v6

    iput v6, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    const/4 v6, -0x1

    .line 67
    iput v6, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 68
    iget-object v7, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getId()I

    move-result v7

    iput v7, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 69
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$000(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Landroid/app/Activity;

    move-result-object v7

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v7, v8}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v1, v3, v7, v3, v3}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMargins(IIII)V

    .line 70
    iget-object v7, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvNeutral:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvPositive:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 73
    iget-object v7, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->lyContainer:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v7}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v7

    iput v7, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 74
    iput v6, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 75
    iget-object v7, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvNeutral:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getId()I

    move-result v7

    iput v7, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 76
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$000(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Landroid/app/Activity;

    move-result-object v7

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v7, v8}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v1, v3, v7, v3, v3}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMargins(IIII)V

    .line 77
    iget-object v7, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvPositive:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvNegative:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 80
    iget-object v7, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->lyContainer:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v7}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v7

    iput v7, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 81
    iput v6, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 82
    iget-object v6, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvPositive:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    iput v6, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 83
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$000(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/coderpage/base/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v1, v3, v6, v3, v3}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMargins(IIII)V

    .line 84
    iget-object v6, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvNegative:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    :cond_3
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$600(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvNegative:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 90
    :cond_4
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvNegative:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvNegative:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$600(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvNegative:Landroid/widget/TextView;

    new-instance v6, Lcom/coderpage/mine/ui/widget/-$$Lambda$TipDialog$dcdoe8A5i8cTzZtp3lvq2c4K1Xc;

    invoke-direct {v6, p0, p1}, Lcom/coderpage/mine/ui/widget/-$$Lambda$TipDialog$dcdoe8A5i8cTzZtp3lvq2c4K1Xc;-><init>(Lcom/coderpage/mine/ui/widget/TipDialog;Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :goto_3
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$700(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 102
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvNeutral:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 104
    :cond_5
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvNeutral:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvNeutral:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$700(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvNeutral:Landroid/widget/TextView;

    new-instance v6, Lcom/coderpage/mine/ui/widget/-$$Lambda$TipDialog$rS71IuKFEXP_e9u997NyBOd0cCE;

    invoke-direct {v6, p0, p1}, Lcom/coderpage/mine/ui/widget/-$$Lambda$TipDialog$rS71IuKFEXP_e9u997NyBOd0cCE;-><init>(Lcom/coderpage/mine/ui/widget/TipDialog;Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :goto_4
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$800(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 116
    iget-object p1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvPositive:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 118
    :cond_6
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvPositive:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvPositive:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$300(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)I

    move-result v3

    if-ne v3, v4, :cond_7

    .line 120
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$000(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v2

    goto :goto_5

    :cond_7
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$000(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f060059

    invoke-static {v2, v3}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 119
    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvPositive:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$800(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, v0, Lcom/coderpage/mine/dialog/TipDialogBinding;->tvPositive:Landroid/widget/TextView;

    new-instance v2, Lcom/coderpage/mine/ui/widget/-$$Lambda$TipDialog$LtpwpJ_MZM_YvPQ_SXQ4nDZTuBE;

    invoke-direct {v2, p0, p1}, Lcom/coderpage/mine/ui/widget/-$$Lambda$TipDialog$LtpwpJ_MZM_YvPQ_SXQ4nDZTuBE;-><init>(Lcom/coderpage/mine/ui/widget/TipDialog;Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :goto_6
    invoke-virtual {v0}, Lcom/coderpage/mine/dialog/TipDialogBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/ui/widget/TipDialog;->setContentView(Landroid/view/View;)V

    .line 131
    invoke-direct {p0}, Lcom/coderpage/mine/ui/widget/TipDialog;->initWindow()V

    return-void
.end method

.method private initWindow()V
    .locals 4

    .line 135
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/widget/TipDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 141
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 142
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static newBuilder(Landroid/app/Activity;)Lcom/coderpage/mine/ui/widget/TipDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$init$0$TipDialog(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;Landroid/view/View;)V
    .locals 0

    .line 93
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$1200(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 94
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$1200(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    const/4 p2, -0x2

    invoke-interface {p1, p0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/widget/TipDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$init$1$TipDialog(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;Landroid/view/View;)V
    .locals 0

    .line 107
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$1100(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 108
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$1100(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    const/4 p2, -0x3

    invoke-interface {p1, p0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/widget/TipDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$init$2$TipDialog(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;Landroid/view/View;)V
    .locals 0

    .line 123
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$1000(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 124
    invoke-static {p1}, Lcom/coderpage/mine/ui/widget/TipDialog$Builder;->access$1000(Lcom/coderpage/mine/ui/widget/TipDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    const/4 p2, -0x1

    invoke-interface {p1, p0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/coderpage/mine/ui/widget/TipDialog;->dismiss()V

    :goto_0
    return-void
.end method
