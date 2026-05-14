.class public interface abstract Lcom/coderpage/framework/Model$DataQueryCallback;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/framework/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataQueryCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/coderpage/framework/Model;",
        "Q::",
        "Lcom/coderpage/framework/QueryEnum;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onError(Lcom/coderpage/framework/QueryEnum;Ljava/lang/Object;)V
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

.method public abstract onModelUpdated(Lcom/coderpage/framework/Model;Lcom/coderpage/framework/QueryEnum;)V
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
