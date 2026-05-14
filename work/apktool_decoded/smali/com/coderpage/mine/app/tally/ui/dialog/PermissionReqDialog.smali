.class public Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;
.super Landroid/app/Dialog;
.source "PermissionReqDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog$Listener;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/TextView;

.field private mConfirmButton:Landroid/widget/TextView;

.field private mListener:Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog$Listener;

.field private mTitleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "permissionArray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0f0191

    .line 34
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;->initView(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method private initView(Landroid/app/Activity;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "permissionArray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 60
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 61
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0033

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090175

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;->mTitleTv:Landroid/widget/TextView;

    const v1, 0x7f090130

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;->mCancelButton:Landroid/widget/TextView;

    const v1, 0x7f090137

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;->mConfirmButton:Landroid/widget/TextView;

    const v1, 0x7f090098

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 70
    new-instance v2, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$PermissionReqDialog$I_-eSs9R8dOMlJbJsOiI46pWXFg;

    invoke-direct {v2, p1, v1}, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$PermissionReqDialog$I_-eSs9R8dOMlJbJsOiI46pWXFg;-><init>(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    invoke-static {p2, v2}, Lcom/coderpage/base/utils/ArrayUtils;->forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    .line 79
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;->mConfirmButton:Landroid/widget/TextView;

    new-instance p2, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$PermissionReqDialog$mNNigatDNnudhRFI2xqQzNsSKkg;

    invoke-direct {p2, p0}, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$PermissionReqDialog$mNNigatDNnudhRFI2xqQzNsSKkg;-><init>(Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;->mCancelButton:Landroid/widget/TextView;

    new-instance p2, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$PermissionReqDialog$JvvvGeVhAnMu_WCMEg_GZl2Ss8Q;

    invoke-direct {p2, p0}, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$PermissionReqDialog$JvvvGeVhAnMu_WCMEg_GZl2Ss8Q;-><init>(Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;->setContentView(Landroid/view/View;)V

    .line 83
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;->initWindow()V

    return-void
.end method

.method private initWindow()V
    .locals 4

    .line 87
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x11

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 93
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 94
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

    .line 95
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic lambda$initView$0(Landroid/app/Activity;Landroid/widget/LinearLayout;IILjava/lang/String;)V
    .locals 2

    .line 71
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0b0034

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090164

    .line 72
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f090163

    .line 73
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    invoke-static {p0, p4}, Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils;->getPermissionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-static {p0, p4}, Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils;->getPermissionDesc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$1$PermissionReqDialog(Landroid/view/View;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;->mListener:Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog$Listener;

    invoke-interface {p1, p0}, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog$Listener;->onConfirmClick(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic lambda$initView$2$PermissionReqDialog(Landroid/view/View;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;->mListener:Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog$Listener;

    invoke-interface {p1, p0}, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog$Listener;->onCancelClick(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public setListener(Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog$Listener;)Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;->mListener:Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog$Listener;

    return-object p0
.end method

.method public setNegativeText(Ljava/lang/CharSequence;)Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonText"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setPositiveText(Ljava/lang/CharSequence;)Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonText"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;->mConfirmButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTitleText(Ljava/lang/CharSequence;)Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method
