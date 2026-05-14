.class Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3$1;
.super Ljava/lang/Object;
.source "HomeViewModel.java"

# interfaces
.implements Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3;->onConfirmDownload(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$runnable"
        }
    .end annotation

    .line 350
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3$1;->this$1:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDenied$0$HomeViewModel$3$1([Ljava/lang/String;Lcom/coderpage/mine/app/tally/module/home/HomeActivity;)V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3$1;->this$1:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3;

    iget-object v0, v0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3;->this$0:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    const v1, 0x7f0e003d

    invoke-static {v0, v1}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->access$200(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3$1$1;

    invoke-direct {v1, p0}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3$1$1;-><init>(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3$1;)V

    invoke-static {p2, v0, p1, v1}, Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils;->showPermissionNeedDialog(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils$PermissionNeedDialogListener;)V

    return-void
.end method

.method public onDenied([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permissionArray"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3$1;->this$1:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3;

    iget-object v0, v0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3;->this$0:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->access$100(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$3$1$59W0m4RURfXQ3ARfH3d-2WDRa2I;

    invoke-direct {v1, p0, p1}, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomeViewModel$3$1$59W0m4RURfXQ3ARfH3d-2WDRa2I;-><init>(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3$1;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onGranted(Z[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "grantedAll",
            "permissionArray"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 354
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
