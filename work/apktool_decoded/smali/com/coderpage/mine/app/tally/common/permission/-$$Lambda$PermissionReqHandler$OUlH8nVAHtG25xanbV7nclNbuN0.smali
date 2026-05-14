.class public final synthetic Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionReqHandler$OUlH8nVAHtG25xanbV7nclNbuN0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionReqHandler$OUlH8nVAHtG25xanbV7nclNbuN0;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionReqHandler$OUlH8nVAHtG25xanbV7nclNbuN0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(IILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionReqHandler$OUlH8nVAHtG25xanbV7nclNbuN0;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionReqHandler$OUlH8nVAHtG25xanbV7nclNbuN0;->f$1:Ljava/util/List;

    check-cast p3, Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->lambda$getNotGrantedPermissionArray$0(Landroid/app/Activity;Ljava/util/List;IILjava/lang/String;)V

    return-void
.end method
