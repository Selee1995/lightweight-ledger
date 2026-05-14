.class Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3;
.super Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;
.source "HomeViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->lambda$handleVersionUpgrade$9(Lcom/coderpage/mine/app/tally/module/home/HomeActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

.field final synthetic val$notGrantedPermissionArray:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$notGrantedPermissionArray"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3;->this$0:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3;->val$notGrantedPermissionArray:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/coderpage/lib/update/Updater$NewVersionCheckCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmDownload(Ljava/lang/Runnable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3;->this$0:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->access$000(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;)Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3;->val$notGrantedPermissionArray:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3;->this$0:Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;->access$000(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel;)Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3;->val$notGrantedPermissionArray:[Ljava/lang/String;

    new-instance v3, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3$1;

    invoke-direct {v3, p0, p1}, Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3$1;-><init>(Lcom/coderpage/mine/app/tally/module/home/HomeViewModel$3;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->requestPermission(Z[Ljava/lang/String;Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler$Listener;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method
