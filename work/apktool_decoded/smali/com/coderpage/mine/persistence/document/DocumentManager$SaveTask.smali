.class public abstract Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;
.super Ljava/lang/Object;
.source "DocumentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/persistence/document/DocumentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SaveTask"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLandroid/net/Uri;Lcom/coderpage/base/common/IError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "success",
            "uri",
            "error"
        }
    .end annotation

    return-void
.end method

.method public abstract onSave(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "os"
        }
    .end annotation
.end method
