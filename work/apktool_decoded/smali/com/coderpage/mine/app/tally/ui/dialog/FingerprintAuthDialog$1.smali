.class Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog$1;
.super Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.source "FingerprintAuthDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog$1;->this$0:Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;

    invoke-direct {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errMsgId",
            "errString"
        }
    .end annotation

    .line 91
    invoke-super {p0, p1, p2}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 92
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog$1;->this$0:Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->access$000(Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f0e0045

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog$1;->this$0:Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->access$100(Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 112
    invoke-super {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationFailed()V

    .line 113
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog$1;->this$0:Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->access$000(Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e0045

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 114
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog$1;->this$0:Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->access$100(Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helpMsgId",
            "helpString"
        }
    .end annotation

    .line 98
    invoke-super {p0, p1, p2}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog$1;->this$0:Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->access$000(Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog$1;->this$0:Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->access$100(Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V

    .line 106
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog$1;->this$0:Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->access$202(Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;Z)Z

    .line 107
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog$1;->this$0:Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->dismiss()V

    return-void
.end method
