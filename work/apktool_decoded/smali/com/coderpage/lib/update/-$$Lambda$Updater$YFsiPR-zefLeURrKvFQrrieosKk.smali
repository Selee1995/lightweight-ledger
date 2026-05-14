.class public final synthetic Lcom/coderpage/lib/update/-$$Lambda$Updater$YFsiPR-zefLeURrKvFQrrieosKk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/lib/update/Updater;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/coderpage/lib/update/ApkModel;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/lib/update/Updater;Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/lib/update/-$$Lambda$Updater$YFsiPR-zefLeURrKvFQrrieosKk;->f$0:Lcom/coderpage/lib/update/Updater;

    iput-object p2, p0, Lcom/coderpage/lib/update/-$$Lambda$Updater$YFsiPR-zefLeURrKvFQrrieosKk;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/coderpage/lib/update/-$$Lambda$Updater$YFsiPR-zefLeURrKvFQrrieosKk;->f$2:Lcom/coderpage/lib/update/ApkModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/coderpage/lib/update/-$$Lambda$Updater$YFsiPR-zefLeURrKvFQrrieosKk;->f$0:Lcom/coderpage/lib/update/Updater;

    iget-object v1, p0, Lcom/coderpage/lib/update/-$$Lambda$Updater$YFsiPR-zefLeURrKvFQrrieosKk;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/coderpage/lib/update/-$$Lambda$Updater$YFsiPR-zefLeURrKvFQrrieosKk;->f$2:Lcom/coderpage/lib/update/ApkModel;

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/lib/update/Updater;->lambda$showApkDownloadConfirmDialog$0$Updater(Landroid/content/Context;Lcom/coderpage/lib/update/ApkModel;)V

    return-void
.end method
