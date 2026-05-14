.class public final synthetic Lcom/coderpage/mine/app/tally/utils/-$$Lambda$SecurityUtils$wmC0yL7Dhn0GM65wIZSzmWWN1xg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/mine/app/tally/ui/dialog/FingerprintAuthDialog$Listener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$SecurityUtils$wmC0yL7Dhn0GM65wIZSzmWWN1xg;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onAuthFinish(Z)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$SecurityUtils$wmC0yL7Dhn0GM65wIZSzmWWN1xg;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lcom/coderpage/mine/app/tally/utils/SecurityUtils;->lambda$executeAfterFingerprintAuth$0(Ljava/lang/Runnable;Z)V

    return-void
.end method
