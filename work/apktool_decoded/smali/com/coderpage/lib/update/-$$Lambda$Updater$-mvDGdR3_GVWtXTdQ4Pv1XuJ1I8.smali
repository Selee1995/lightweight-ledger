.class public final synthetic Lcom/coderpage/lib/update/-$$Lambda$Updater$-mvDGdR3_GVWtXTdQ4Pv1XuJ1I8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/lib/update/Updater;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/coderpage/lib/update/ApkModel;

.field public final synthetic f$3:Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/lib/update/Updater;Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/lib/update/-$$Lambda$Updater$-mvDGdR3_GVWtXTdQ4Pv1XuJ1I8;->f$0:Lcom/coderpage/lib/update/Updater;

    iput-object p2, p0, Lcom/coderpage/lib/update/-$$Lambda$Updater$-mvDGdR3_GVWtXTdQ4Pv1XuJ1I8;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/coderpage/lib/update/-$$Lambda$Updater$-mvDGdR3_GVWtXTdQ4Pv1XuJ1I8;->f$2:Lcom/coderpage/lib/update/ApkModel;

    iput-object p4, p0, Lcom/coderpage/lib/update/-$$Lambda$Updater$-mvDGdR3_GVWtXTdQ4Pv1XuJ1I8;->f$3:Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/coderpage/lib/update/-$$Lambda$Updater$-mvDGdR3_GVWtXTdQ4Pv1XuJ1I8;->f$0:Lcom/coderpage/lib/update/Updater;

    iget-object v1, p0, Lcom/coderpage/lib/update/-$$Lambda$Updater$-mvDGdR3_GVWtXTdQ4Pv1XuJ1I8;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/coderpage/lib/update/-$$Lambda$Updater$-mvDGdR3_GVWtXTdQ4Pv1XuJ1I8;->f$2:Lcom/coderpage/lib/update/ApkModel;

    iget-object v3, p0, Lcom/coderpage/lib/update/-$$Lambda$Updater$-mvDGdR3_GVWtXTdQ4Pv1XuJ1I8;->f$3:Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/coderpage/lib/update/Updater;->lambda$showApkDownloadConfirmDialog$1$Updater(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;Landroid/content/DialogInterface;I)V

    return-void
.end method
