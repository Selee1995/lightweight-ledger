.class public abstract Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;
.super Ljava/lang/Object;
.source "Updater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/lib/update/Updater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NewVersionCheckCallBack"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlreadyNewestVersion(Lcom/coderpage/lib/update/ApkModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkModel"
        }
    .end annotation

    return-void
.end method

.method public onCheckFail(Lcom/coderpage/lib/update/Error;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    return-void
.end method

.method public onCheckFinish(Lcom/coderpage/lib/update/ApkModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkModel"
        }
    .end annotation

    return-void
.end method

.method public onCheckStart()V
    .locals 0

    return-void
.end method

.method public onConfirmDownload(Ljava/lang/Runnable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onFindNewVersion(Lcom/coderpage/lib/update/ApkModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkModel"
        }
    .end annotation

    return-void
.end method
