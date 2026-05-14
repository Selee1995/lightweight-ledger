.class public final Lcom/coderpage/lib/permission/PermissionReq$DeniedForeverTip;
.super Lcom/coderpage/ui/activity/TransActivity$Delegate;
.source "PermissionReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/lib/permission/PermissionReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeniedForeverTip"
.end annotation


# instance fields
.field private final desc:Ljava/lang/CharSequence;

.field private final permission:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "permission",
            "desc"
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Lcom/coderpage/ui/activity/TransActivity$Delegate;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/coderpage/lib/permission/PermissionReq$DeniedForeverTip;->permission:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lcom/coderpage/lib/permission/PermissionReq$DeniedForeverTip;->desc:Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic lambda$onCreated$0(Lcom/coderpage/ui/activity/TransActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 167
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 168
    invoke-virtual {p0}, Lcom/coderpage/ui/activity/TransActivity;->finish()V

    return-void
.end method

.method static synthetic lambda$onCreated$1(Lcom/coderpage/ui/activity/TransActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 171
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 172
    invoke-static {p0}, Lcom/coderpage/lib/permission/PermissionUtils;->launchAppDetailsSettings(Landroid/content/Context;)V

    .line 173
    invoke-virtual {p0}, Lcom/coderpage/ui/activity/TransActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreated(Lcom/coderpage/ui/activity/TransActivity;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "savedInstanceState"
        }
    .end annotation

    .line 156
    invoke-super {p0, p1, p2}, Lcom/coderpage/ui/activity/TransActivity$Delegate;->onCreated(Lcom/coderpage/ui/activity/TransActivity;Landroid/os/Bundle;)V

    .line 158
    iget-object p2, p0, Lcom/coderpage/lib/permission/PermissionReq$DeniedForeverTip;->desc:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 159
    invoke-virtual {p1}, Lcom/coderpage/ui/activity/TransActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/coderpage/lib/permission/R$string;->libPermissionDeniedForeverDesc:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 160
    invoke-static {p1}, Lcom/coderpage/lib/permission/PermissionReq;->access$000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/coderpage/lib/permission/PermissionReq$DeniedForeverTip;->permission:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/coderpage/lib/permission/PermissionReq;->access$100(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 159
    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 161
    :cond_0
    iget-object p2, p0, Lcom/coderpage/lib/permission/PermissionReq$DeniedForeverTip;->desc:Ljava/lang/CharSequence;

    .line 162
    :goto_0
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/coderpage/lib/permission/R$string;->libPermissionReq:I

    .line 163
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 164
    invoke-virtual {v1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    .line 165
    invoke-virtual {p2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    sget v0, Lcom/coderpage/lib/permission/R$string;->libPermissionReqBtnNegative:I

    new-instance v1, Lcom/coderpage/lib/permission/-$$Lambda$PermissionReq$DeniedForeverTip$7D-8FE_eB-Jcik9SGwLXEk1kVik;

    invoke-direct {v1, p1}, Lcom/coderpage/lib/permission/-$$Lambda$PermissionReq$DeniedForeverTip$7D-8FE_eB-Jcik9SGwLXEk1kVik;-><init>(Lcom/coderpage/ui/activity/TransActivity;)V

    .line 166
    invoke-virtual {p2, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    sget v0, Lcom/coderpage/lib/permission/R$string;->libPermissionReqBtnPositive:I

    new-instance v1, Lcom/coderpage/lib/permission/-$$Lambda$PermissionReq$DeniedForeverTip$Jfxyc0WlxrHsbQoLidehMBGDE_Y;

    invoke-direct {v1, p1}, Lcom/coderpage/lib/permission/-$$Lambda$PermissionReq$DeniedForeverTip$Jfxyc0WlxrHsbQoLidehMBGDE_Y;-><init>(Lcom/coderpage/ui/activity/TransActivity;)V

    .line 170
    invoke-virtual {p2, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method
