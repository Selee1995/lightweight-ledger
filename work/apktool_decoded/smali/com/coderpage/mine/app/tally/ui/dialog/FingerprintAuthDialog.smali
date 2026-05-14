.class public Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;
.super Lcom/coderpage/mine/app/tally/ui/dialog/BaseDialog;
.source "FingerprintAuthDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog$Listener;
    }
.end annotation


# instance fields
.field private mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

.field private mCryptoObjectHelper:Lcom/coderpage/mine/app/tally/utils/CryptoObjectUtil;

.field private mFingerPrintAuthTipTv:Landroid/widget/TextView;

.field private mFingerPrintIv:Landroid/support/v7/widget/AppCompatImageView;

.field private mFingerprintManager:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

.field private mIsAuthSuccess:Z

.field private mIsAuthing:Z

.field private mListener:Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog$Listener;


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

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/coderpage/mine/app/tally/ui/dialog/BaseDialog;-><init>(Landroid/app/Activity;I)V

    .line 36
    invoke-static {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mFingerprintManager:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    .line 37
    new-instance p1, Landroid/support/v4/os/CancellationSignal;

    invoke-direct {p1}, Landroid/support/v4/os/CancellationSignal;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    .line 38
    new-instance p1, Lcom/coderpage/mine/app/tally/utils/CryptoObjectUtil;

    invoke-direct {p1}, Lcom/coderpage/mine/app/tally/utils/CryptoObjectUtil;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mCryptoObjectHelper:Lcom/coderpage/mine/app/tally/utils/CryptoObjectUtil;

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mFingerPrintAuthTipTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->showErrorStyle()V

    return-void
.end method

.method static synthetic access$202(Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mIsAuthSuccess:Z

    return p1
.end method

.method private showErrorStyle()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mFingerPrintIv:Landroid/support/v7/widget/AppCompatImageView;

    const v1, 0x7f080102

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setImageResource(I)V

    .line 129
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mFingerPrintAuthTipTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600b0

    invoke-static {v1, v2}, Lcom/coderpage/base/utils/ResUtils;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public initView(Landroid/app/Activity;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b002d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090077

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$FingerprintAuthDialog$f1LSMQQZHgptGLCQ7BuVuFKs_MA;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$FingerprintAuthDialog$f1LSMQQZHgptGLCQ7BuVuFKs_MA;-><init>(Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090079

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mFingerPrintIv:Landroid/support/v7/widget/AppCompatImageView;

    const v0, 0x7f090165

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mFingerPrintAuthTipTv:Landroid/widget/TextView;

    .line 55
    new-instance v0, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$FingerprintAuthDialog$XmNPE16C0xRzXSj7Lyycy1FdMDE;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$FingerprintAuthDialog$XmNPE16C0xRzXSj7Lyycy1FdMDE;-><init>(Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;)V

    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object p1
.end method

.method public synthetic lambda$initView$0$FingerprintAuthDialog(Landroid/view/View;)V
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$initView$1$FingerprintAuthDialog(Landroid/content/DialogInterface;)V
    .locals 1

    .line 56
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mListener:Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog$Listener;

    if-eqz p1, :cond_0

    .line 57
    iget-boolean v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mIsAuthSuccess:Z

    invoke-interface {p1, v0}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog$Listener;->onAuthFinish(Z)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 7

    .line 65
    invoke-super {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/BaseDialog;->onAttachedToWindow()V

    .line 67
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mFingerprintManager:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    invoke-virtual {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mFingerPrintAuthTipTv:Landroid/widget/TextView;

    const v1, 0x7f0e0043

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->showErrorStyle()V

    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_3

    .line 75
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mFingerprintManager:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    invoke-virtual {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mFingerPrintAuthTipTv:Landroid/widget/TextView;

    const v1, 0x7f0e0042

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->showErrorStyle()V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mIsAuthing:Z

    .line 88
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mFingerprintManager:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mCryptoObjectHelper:Lcom/coderpage/mine/app/tally/utils/CryptoObjectUtil;

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/utils/CryptoObjectUtil;->buildCryptoObject()Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    new-instance v5, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog$1;

    invoke-direct {v5, p0}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog$1;-><init>(Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;)V

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->authenticate(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroid/support/v4/os/CancellationSignal;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V

    return-void

    .line 76
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mFingerPrintAuthTipTv:Landroid/widget/TextView;

    const v1, 0x7f0e0044

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->showErrorStyle()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/BaseDialog;->onDetachedFromWindow()V

    .line 122
    iget-boolean v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mIsAuthing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/support/v4/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/support/v4/os/CancellationSignal;->cancel()V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog$Listener;)Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->mListener:Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog$Listener;

    return-object p0
.end method
