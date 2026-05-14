.class public interface abstract Lcom/coderpage/base/utils/ArrayUtils$Consumer;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/base/utils/ArrayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Consumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract accept(IILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "count",
            "index",
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;)V"
        }
    .end annotation
.end method
