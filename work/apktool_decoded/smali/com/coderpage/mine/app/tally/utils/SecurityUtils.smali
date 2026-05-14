.class public Lcom/coderpage/mine/app/tally/utils/SecurityUtils;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeAfterFingerprintAuth(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "runnable"
        }
    .end annotation

    .line 16
    invoke-static {}, Lcom/coderpage/mine/Global;->getInstance()Lcom/coderpage/mine/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coderpage/mine/Global;->isNeedFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;-><init>(Landroid/app/Activity;)V

    new-instance p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$SecurityUtils$wmC0yL7Dhn0GM65wIZSzmWWN1xg;

    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$SecurityUtils$wmC0yL7Dhn0GM65wIZSzmWWN1xg;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p0}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->setListener(Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog$Listener;)Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog;->show()V

    return-void
.end method

.method static synthetic lambda$executeAfterFingerprintAuth$0(Ljava/lang/Runnable;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 22
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 23
    invoke-static {}, Lcom/coderpage/mine/Global;->getInstance()Lcom/coderpage/mine/Global;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coderpage/mine/Global;->setNeedFingerprint(Z)V

    :cond_0
    return-void
.end method
