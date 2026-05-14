.class public interface abstract Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/lib/permission/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnExplainListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener$ShouldRequest;
    }
.end annotation


# virtual methods
.method public abstract explain(Lcom/coderpage/ui/activity/TransActivity;Ljava/util/List;Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener$ShouldRequest;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "denied",
            "shouldRequest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coderpage/ui/activity/TransActivity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/coderpage/lib/permission/PermissionUtils$OnExplainListener$ShouldRequest;",
            ")V"
        }
    .end annotation
.end method
