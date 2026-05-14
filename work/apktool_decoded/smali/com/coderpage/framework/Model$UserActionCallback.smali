.class public interface abstract Lcom/coderpage/framework/Model$UserActionCallback;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/framework/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserActionCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/coderpage/framework/Model;",
        "UA::",
        "Lcom/coderpage/framework/UserActionEnum;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onError(Lcom/coderpage/framework/UserActionEnum;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userAction",
            "error"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUA;TE;)V"
        }
    .end annotation
.end method

.method public abstract onModelUpdated(Lcom/coderpage/framework/Model;Lcom/coderpage/framework/UserActionEnum;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "model",
            "userAction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;TUA;)V"
        }
    .end annotation
.end method
