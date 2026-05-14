.class public Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$PermissionNeedDialogListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPermissionDesc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "permission"
        }
    .end annotation

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 106
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    const p1, 0x7f0e007a

    .line 113
    invoke-static {p0, p1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f0e008a

    .line 110
    invoke-static {p0, p1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1833add0 -> :sswitch_2
        -0x550ba9 -> :sswitch_1
        0x516a29a7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getPermissionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "permission"
        }
    .end annotation

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 82
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    const p1, 0x7f0e0079

    .line 89
    invoke-static {p0, p1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f0e0089

    .line 86
    invoke-static {p0, p1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1833add0 -> :sswitch_2
        -0x550ba9 -> :sswitch_1
        0x516a29a7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic lambda$showPermissionNeedDialog$0(Ljava/util/List;IILjava/lang/String;)V
    .locals 0

    .line 29
    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static showPermissionNeedDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$PermissionNeedDialogListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "funName",
            "permissionList",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$PermissionNeedDialogListener;",
            ")V"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;

    invoke-direct {v0, p0, p2}, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    const p1, 0x7f0e007d

    .line 38
    invoke-static {p0, p1, p2}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;->setTitleText(Ljava/lang/CharSequence;)Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;

    move-result-object p1

    const p2, 0x7f0e007b

    .line 39
    invoke-static {p0, p2}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;->setPositiveText(Ljava/lang/CharSequence;)Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;

    move-result-object p1

    new-instance p2, Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$1;

    invoke-direct {p2, p3, p0}, Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$1;-><init>(Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$PermissionNeedDialogListener;Landroid/app/Activity;)V

    .line 40
    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;->setListener(Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog$Listener;)Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;->show()V

    return-void
.end method

.method public static showPermissionNeedDialog(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$PermissionNeedDialogListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "funName",
            "permissionArr",
            "listener"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    new-instance v1, Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionUtils$4woWYZYfa1LIMrbdlhFflQ4nk3E;

    invoke-direct {v1, v0}, Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionUtils$4woWYZYfa1LIMrbdlhFflQ4nk3E;-><init>(Ljava/util/List;)V

    invoke-static {p2, v1}, Lcom/coderpage/base/utils/ArrayUtils;->forEach([Ljava/lang/Object;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    .line 30
    invoke-static {p0, p1, v0, p3}, Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils;->showPermissionNeedDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$PermissionNeedDialogListener;)V

    return-void
.end method
