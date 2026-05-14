.class public final synthetic Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$egzXShMp60K1iKwihjjS0yZQW5k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/persistence/document/DocumentManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/coderpage/base/common/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/persistence/document/DocumentManager;Ljava/lang/String;Lcom/coderpage/base/common/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$egzXShMp60K1iKwihjjS0yZQW5k;->f$0:Lcom/coderpage/mine/persistence/document/DocumentManager;

    iput-object p2, p0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$egzXShMp60K1iKwihjjS0yZQW5k;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$egzXShMp60K1iKwihjjS0yZQW5k;->f$2:Lcom/coderpage/base/common/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$egzXShMp60K1iKwihjjS0yZQW5k;->f$0:Lcom/coderpage/mine/persistence/document/DocumentManager;

    iget-object v1, p0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$egzXShMp60K1iKwihjjS0yZQW5k;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$egzXShMp60K1iKwihjjS0yZQW5k;->f$2:Lcom/coderpage/base/common/Callback;

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/persistence/document/DocumentManager;->lambda$listFile$3$DocumentManager(Ljava/lang/String;Lcom/coderpage/base/common/Callback;)V

    return-void
.end method
