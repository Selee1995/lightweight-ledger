.class public final synthetic Lcom/coderpage/lib/permission/-$$Lambda$PermissionUtils$P8TrqfdeWn4sLBlC92HY_NqzeXw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/lib/permission/PermissionUtils$OnRationaleListener$ShouldRequest;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/lib/permission/PermissionUtils;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Lcom/coderpage/ui/activity/TransActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/lib/permission/PermissionUtils;Ljava/lang/Runnable;Lcom/coderpage/ui/activity/TransActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/lib/permission/-$$Lambda$PermissionUtils$P8TrqfdeWn4sLBlC92HY_NqzeXw;->f$0:Lcom/coderpage/lib/permission/PermissionUtils;

    iput-object p2, p0, Lcom/coderpage/lib/permission/-$$Lambda$PermissionUtils$P8TrqfdeWn4sLBlC92HY_NqzeXw;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/coderpage/lib/permission/-$$Lambda$PermissionUtils$P8TrqfdeWn4sLBlC92HY_NqzeXw;->f$2:Lcom/coderpage/ui/activity/TransActivity;

    return-void
.end method


# virtual methods
.method public final again(Z)V
    .locals 3

    iget-object v0, p0, Lcom/coderpage/lib/permission/-$$Lambda$PermissionUtils$P8TrqfdeWn4sLBlC92HY_NqzeXw;->f$0:Lcom/coderpage/lib/permission/PermissionUtils;

    iget-object v1, p0, Lcom/coderpage/lib/permission/-$$Lambda$PermissionUtils$P8TrqfdeWn4sLBlC92HY_NqzeXw;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/coderpage/lib/permission/-$$Lambda$PermissionUtils$P8TrqfdeWn4sLBlC92HY_NqzeXw;->f$2:Lcom/coderpage/ui/activity/TransActivity;

    invoke-virtual {v0, v1, v2, p1}, Lcom/coderpage/lib/permission/PermissionUtils;->lambda$rationalInner$0$PermissionUtils(Ljava/lang/Runnable;Lcom/coderpage/ui/activity/TransActivity;Z)V

    return-void
.end method
