.class Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl$1;
.super Ljava/lang/Object;
.source "PermissionUtils.java"

# interfaces
.implements Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener$ShouldRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;->onCreated(Lcom/coderpage/ui/activity/TransActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;

.field final synthetic val$activity:Lcom/coderpage/ui/activity/TransActivity;


# direct methods
.method constructor <init>(Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;Lcom/coderpage/ui/activity/TransActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity"
        }
    .end annotation

    .line 426
    iput-object p1, p0, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl$1;->this$0:Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;

    iput-object p2, p0, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl$1;->val$activity:Lcom/coderpage/ui/activity/TransActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 430
    iget-object p1, p0, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl$1;->val$activity:Lcom/coderpage/ui/activity/TransActivity;

    invoke-virtual {p1}, Lcom/coderpage/ui/activity/TransActivity;->finish()V

    goto :goto_0

    .line 432
    :cond_0
    iget-object p1, p0, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl$1;->this$0:Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;

    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl$1;->val$activity:Lcom/coderpage/ui/activity/TransActivity;

    invoke-static {p1, v0}, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;->access$500(Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;Lcom/coderpage/ui/activity/TransActivity;)V

    :goto_0
    return-void
.end method
