.class public interface abstract Lcom/alibaba/android/arouter/facade/service/SerializationService;
.super Ljava/lang/Object;
.source "SerializationService.java"

# interfaces
.implements Lcom/alibaba/android/arouter/facade/template/IProvider;


# virtual methods
.method public abstract json2Object(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract object2Json(Ljava/lang/Object;)Ljava/lang/String;
.end method
