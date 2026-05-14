.class Lcom/tendcloud/tenddata/bm$b;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tendcloud/tenddata/bm$1;)V
    .locals 0

    .line 353
    invoke-direct {p0}, Lcom/tendcloud/tenddata/bm$b;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 356
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Check_Thread #"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
