.class public interface abstract Lcom/coderpage/mine/persistence/dao/KeyValueDao;
.super Ljava/lang/Object;
.source "KeyValueDao.java"


# virtual methods
.method public abstract delete(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public abstract insert(Lcom/coderpage/mine/persistence/entity/KeyValue;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyValue"
        }
    .end annotation
.end method

.method public varargs abstract insert([Lcom/coderpage/mine/persistence/entity/KeyValue;)[J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyValues"
        }
    .end annotation
.end method

.method public abstract query(Ljava/lang/String;)Lcom/coderpage/mine/persistence/entity/KeyValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public abstract update(Lcom/coderpage/mine/persistence/entity/KeyValue;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyValue"
        }
    .end annotation
.end method
