.class public abstract Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$PermissionNeedDialogListener;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PermissionNeedDialogListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onConfirm(Landroid/content/DialogInterface;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
