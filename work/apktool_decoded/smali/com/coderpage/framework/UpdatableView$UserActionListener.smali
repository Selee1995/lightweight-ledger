.class public interface abstract Lcom/coderpage/framework/UpdatableView$UserActionListener;
.super Ljava/lang/Object;
.source "UpdatableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/framework/UpdatableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserActionListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UA::",
        "Lcom/coderpage/framework/UserActionEnum;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onUserAction(Lcom/coderpage/framework/UserActionEnum;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUA;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method
