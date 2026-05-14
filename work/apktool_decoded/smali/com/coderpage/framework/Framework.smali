.class public Lcom/coderpage/framework/Framework;
.super Ljava/lang/Object;
.source "Framework.java"


# static fields
.field private static mInstance:Lcom/coderpage/framework/Framework;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getInstance()Lcom/coderpage/framework/Framework;
    .locals 2

    const-class v0, Lcom/coderpage/framework/Framework;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/coderpage/framework/Framework;->mInstance:Lcom/coderpage/framework/Framework;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lcom/coderpage/framework/Framework;

    invoke-direct {v1}, Lcom/coderpage/framework/Framework;-><init>()V

    sput-object v1, Lcom/coderpage/framework/Framework;->mInstance:Lcom/coderpage/framework/Framework;

    .line 20
    :cond_0
    sget-object v1, Lcom/coderpage/framework/Framework;->mInstance:Lcom/coderpage/framework/Framework;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static onAppOnCreate()V
    .locals 0

    return-void
.end method
