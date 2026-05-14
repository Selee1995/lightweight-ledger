.class public interface abstract Lcom/coderpage/framework/UpdatableView;
.super Ljava/lang/Object;
.source "UpdatableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/framework/UpdatableView$UserActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        "Q::",
        "Lcom/coderpage/framework/QueryEnum;",
        "UA::",
        "Lcom/coderpage/framework/UserActionEnum;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/coderpage/framework/UpdatableView$UserActionListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coderpage/framework/UpdatableView$UserActionListener<",
            "TUA;>;)V"
        }
    .end annotation
.end method

.method public abstract displayData(Ljava/lang/Object;Lcom/coderpage/framework/QueryEnum;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "model",
            "query"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;TQ;)V"
        }
    .end annotation
.end method

.method public abstract displayErrorMessage(Lcom/coderpage/framework/QueryEnum;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "query",
            "error"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQ;TE;)V"
        }
    .end annotation
.end method

.method public abstract displayUserActionResult(Ljava/lang/Object;Landroid/os/Bundle;Lcom/coderpage/framework/UserActionEnum;ZLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "model",
            "args",
            "userAction",
            "success",
            "error"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Landroid/os/Bundle;",
            "TUA;ZTE;)V"
        }
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDataUri(Lcom/coderpage/framework/QueryEnum;)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "query"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQ;)",
            "Landroid/net/Uri;"
        }
    .end annotation
.end method
