.class public final synthetic Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionUtils$4woWYZYfa1LIMrbdlhFflQ4nk3E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionUtils$4woWYZYfa1LIMrbdlhFflQ4nk3E;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionUtils$4woWYZYfa1LIMrbdlhFflQ4nk3E;->f$0:Ljava/util/List;

    check-cast p3, Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Lcom/coderpage/mine/app/tally/common/permission/PermissionUtils;->lambda$showPermissionNeedDialog$0(Ljava/util/List;IILjava/lang/String;)V

    return-void
.end method
