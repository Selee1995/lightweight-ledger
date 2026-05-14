.class Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3$1$1;
.super Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$PermissionNeedDialogListener;
.source "HomeViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3$1;->lambda$onDenied$0([Ljava/lang/String;Lcom/coderpage/mine/app/tally/module/home/HomeActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3$1;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    .line 362
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3$1$1;->this$2:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3$1;

    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$PermissionNeedDialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    const-string v0, "0.7.4"

    .line 365
    invoke-static {v0}, Lcom/coderpage/mine/persistence/kv/KvCache;->setPermissionRefused(Ljava/lang/String;)V

    .line 366
    invoke-super {p0, p1}, Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$PermissionNeedDialogListener;->onCancel(Landroid/content/DialogInterface;)Z

    move-result p1

    return p1
.end method
