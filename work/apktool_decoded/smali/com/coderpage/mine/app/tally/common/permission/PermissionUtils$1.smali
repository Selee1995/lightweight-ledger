.class Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$1;
.super Ljava/lang/Object;
.source "PermissionUtils.java"

# interfaces
.implements Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils;->showPermissionNeedDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$PermissionNeedDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$PermissionNeedDialogListener;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$PermissionNeedDialogListener;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$listener",
            "val$activity"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$1;->val$listener:Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$PermissionNeedDialogListener;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/content/DialogInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$1;->val$listener:Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$PermissionNeedDialogListener;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$PermissionNeedDialogListener;->onCancel(Landroid/content/DialogInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onConfirmClick(Landroid/content/DialogInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$1;->val$listener:Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$PermissionNeedDialogListener;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$PermissionNeedDialogListener;->onConfirm(Landroid/content/DialogInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 55
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coderpage/mine/utils/AndroidUtils;->openAppSettingPage(Landroid/content/Context;)V

    return-void
.end method
