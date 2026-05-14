.class public final synthetic Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionReqHandler$0GZvbGGQ5QDtel8gSiVe--ZNJnk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Consumer;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionReqHandler$0GZvbGGQ5QDtel8gSiVe--ZNJnk;->f$0:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionReqHandler$0GZvbGGQ5QDtel8gSiVe--ZNJnk;->f$0:[Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->lambda$onRequestPermissionsResult$4([Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method
