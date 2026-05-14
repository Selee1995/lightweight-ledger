.class public interface abstract Lcom/coderpage/base/common/Callback;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Lcom/coderpage/base/common/SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TData:",
        "Ljava/lang/Object;",
        "TError:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/coderpage/base/common/SimpleCallback<",
        "TTData;>;"
    }
.end annotation


# virtual methods
.method public abstract failure(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTError;)V"
        }
    .end annotation
.end method

.method public abstract success(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTData;)V"
        }
    .end annotation
.end method
