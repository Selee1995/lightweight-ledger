.class public interface abstract Lcom/coderpage/framework/Model;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/framework/Model$UserActionCallback;,
        Lcom/coderpage/framework/Model$DataQueryCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Q::",
        "Lcom/coderpage/framework/QueryEnum;",
        "UA::",
        "Lcom/coderpage/framework/UserActionEnum;",
        "M::",
        "Lcom/coderpage/framework/Model;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract cleanUp()V
.end method

.method public abstract deliverUserAction(Lcom/coderpage/framework/UserActionEnum;Landroid/os/Bundle;Lcom/coderpage/framework/Model$UserActionCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "action",
            "args",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUA;",
            "Landroid/os/Bundle;",
            "Lcom/coderpage/framework/Model$UserActionCallback<",
            "TM;TUA;TE;>;)V"
        }
    .end annotation
.end method

.method public abstract getQueries()[Lcom/coderpage/framework/QueryEnum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TQ;"
        }
    .end annotation
.end method

.method public abstract getUserActions()[Lcom/coderpage/framework/UserActionEnum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TUA;"
        }
    .end annotation
.end method

.method public abstract requestData(Lcom/coderpage/framework/QueryEnum;Lcom/coderpage/framework/Model$DataQueryCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "query",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQ;",
            "Lcom/coderpage/framework/Model$DataQueryCallback<",
            "TM;TQ;TE;>;)V"
        }
    .end annotation
.end method
