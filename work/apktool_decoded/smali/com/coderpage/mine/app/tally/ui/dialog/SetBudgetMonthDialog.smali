.class public Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;
.super Landroid/app/Dialog;
.source "SetBudgetMonthDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog$Listener;
    }
.end annotation


# instance fields
.field private mBinding:Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;

.field private mListener:Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog$Listener;


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

    .line 34
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 35
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->initView(Landroid/app/Activity;)V

    return-void
.end method

.method private initView(Landroid/app/Activity;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0056

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->mBinding:Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;

    .line 41
    iget-object v0, v0, Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;->tvBudgetUnit:Landroid/widget/TextView;

    sget-object v1, Lcom/coderpage/mine/common/Font;->QUICKSAND_REGULAR:Lcom/coderpage/mine/common/Font;

    invoke-static {v0, v1}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 42
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->mBinding:Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;

    iget-object v0, v0, Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;->etBudget:Landroid/widget/EditText;

    sget-object v1, Lcom/coderpage/mine/common/Font;->QUICKSAND_MEDIUM:Lcom/coderpage/mine/common/Font;

    invoke-static {v0, v1}, Lcom/coderpage/mine/app/tally/databinding/CommonBindAdapter;->setTypeFace(Landroid/widget/TextView;Lcom/coderpage/mine/common/Font;)V

    .line 45
    invoke-static {p1}, Lcom/coderpage/mine/app/tally/persistence/preference/SettingPreference;->getBudgetMonth(Landroid/content/Context;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->mBinding:Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;

    iget-object v1, v1, Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;->etBudget:Landroid/widget/EditText;

    float-to-double v4, v0

    invoke-static {v4, v5}, Lcom/coderpage/mine/app/tally/common/utils/TallyUtils;->formatDisplayMoney(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->mBinding:Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;

    iget-object v0, v0, Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;->etBudget:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->mBinding:Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;

    iget-object v1, v1, Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;->etBudget:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->mBinding:Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;

    iget-object v0, v0, Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;->tvBudgetUnit:Landroid/widget/TextView;

    const-string v1, "\uFFE5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->mBinding:Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;

    iget-object v0, v0, Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;->etBudget:Landroid/widget/EditText;

    new-instance v1, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$SetBudgetMonthDialog$FhkQqzv4R61Jf8a-jevSoXebiGI;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$SetBudgetMonthDialog$FhkQqzv4R61Jf8a-jevSoXebiGI;-><init>(Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 59
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->mBinding:Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;

    iget-object v0, v0, Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;->ivClose:Landroid/support/v7/widget/AppCompatImageView;

    new-instance v1, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$SetBudgetMonthDialog$YS_M6tlhHX3F_oK7Fz80lFYNNjk;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$SetBudgetMonthDialog$YS_M6tlhHX3F_oK7Fz80lFYNNjk;-><init>(Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->mBinding:Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;

    iget-object v0, v0, Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;->tvConfirm:Landroid/widget/TextView;

    new-instance v1, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$SetBudgetMonthDialog$JRRNDZggf4jfqevVsUCb0vrjelM;

    invoke-direct {v1, p0, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$SetBudgetMonthDialog$JRRNDZggf4jfqevVsUCb0vrjelM;-><init>(Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->mBinding:Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;

    invoke-virtual {p1}, Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    .line 76
    invoke-virtual {p1, v3, v3}, Landroid/view/View;->measure(II)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->setContentView(Landroid/view/View;)V

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->initWindow(I)V

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

    .line 82
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x50

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 88
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 89
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 90
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$SetBudgetMonthDialog(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$1$SetBudgetMonthDialog(Landroid/view/View;)V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$initView$2$SetBudgetMonthDialog(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 61
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->mBinding:Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;

    iget-object p2, p2, Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;->etBudget:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/high16 v0, -0x40800000    # -1.0f

    .line 62
    invoke-static {p2, v0}, Lcom/coderpage/base/utils/CommonUtils;->string2float(Ljava/lang/String;F)F

    move-result p2

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_0

    const/4 p2, 0x0

    .line 68
    :cond_0
    invoke-static {p1, p2}, Lcom/coderpage/mine/app/tally/persistence/preference/SettingPreference;->setBudgetMonth(Landroid/content/Context;F)V

    .line 70
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->mListener:Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog$Listener;

    if-eqz p1, :cond_1

    .line 71
    invoke-interface {p1, p0, p2}, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog$Listener;->onBudgetUpdate(Landroid/content/DialogInterface;F)V

    :cond_1
    return-void
.end method

.method public setListener(Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog$Listener;)Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->mListener:Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog$Listener;

    return-object p0
.end method

.method public show()V
    .locals 2

    .line 96
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 97
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->mBinding:Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;

    iget-object v0, v0, Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;->etBudget:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 98
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/SetBudgetMonthDialog;->mBinding:Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;

    iget-object v0, v0, Lcom/coderpage/mine/dialog/BudgetMonthSetDialogBinding;->etBudget:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
