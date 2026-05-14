.class public interface abstract Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler$Listener;
.super Ljava/lang/Object;
.source "PermissionReqHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDenied([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permissionArray"
        }
    .end annotation
.end method

.method public abstract onGranted(Z[Ljava/lang/String;)V
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
.end method
