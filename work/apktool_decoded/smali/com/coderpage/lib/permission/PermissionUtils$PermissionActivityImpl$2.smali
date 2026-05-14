.class Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl$2;
.super Ljava/lang/Object;
.source "PermissionUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;->requestPermissions(Lcom/coderpage/ui/activity/TransActivity;)V
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

    .line 453
    iput-object p1, p0, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl$2;->this$0:Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl;

    iput-object p2, p0, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl$2;->val$activity:Lcom/coderpage/ui/activity/TransActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/coderpage/lib/permission/PermissionUtils$PermissionActivityImpl$2;->val$activity:Lcom/coderpage/ui/activity/TransActivity;

    invoke-static {}, Lcom/coderpage/lib/permission/PermissionUtils;->access$000()Lcom/coderpage/lib/permission/PermissionUtils;

    move-result-object v1

    invoke-static {v1}, Lcom/coderpage/lib/permission/PermissionUtils;->access$200(Lcom/coderpage/lib/permission/PermissionUtils;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/ui/activity/TransActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
