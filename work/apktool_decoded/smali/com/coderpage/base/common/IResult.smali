.class public interface abstract Lcom/coderpage/base/common/IResult;
.super Ljava/lang/Object;
.source "IResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TData:",
        "Ljava/lang/Object;",
        "TError:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract data()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTData;"
        }
    .end annotation
.end method

.method public abstract error()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTError;"
        }
    .end annotation
.end method

.method public abstract isOk()Z
.end method
