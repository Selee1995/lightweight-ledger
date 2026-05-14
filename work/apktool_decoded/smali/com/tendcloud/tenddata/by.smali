.class public Lcom/tendcloud/tenddata/by;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-string p1, "getAAID"

    const-string p2, "getVAID"

    const-string v0, "getOAID"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    :try_start_0
    aget-object v3, p3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    aget-object v4, p3, v1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/tendcloud/tenddata/dd;->setOAID(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 32
    :catchall_0
    :try_start_1
    aget-object v3, p3, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    aget-object v3, p3, v2

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tendcloud/tenddata/dd;->setOAID(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :goto_0
    const/4 v0, 0x0

    .line 45
    :try_start_2
    aget-object v3, p3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v3, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    aget-object v4, p3, v1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v4

    invoke-static {v3}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    move-object v3, v0

    :goto_1
    invoke-virtual {v4, v3}, Lcom/tendcloud/tenddata/dd;->setVAID(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    .line 49
    :catchall_2
    :try_start_3
    aget-object v3, p3, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v3, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    aget-object v3, p3, v2

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v3

    invoke-static {p2}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    move-object p2, v0

    :goto_2
    invoke-virtual {v3, p2}, Lcom/tendcloud/tenddata/dd;->setVAID(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 59
    :catchall_3
    :goto_3
    :try_start_4
    aget-object p2, p3, v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    aget-object v1, p3, v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v1

    invoke-static {p2}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_4

    :cond_2
    move-object p2, v0

    :goto_4
    invoke-virtual {v1, p2}, Lcom/tendcloud/tenddata/dd;->setAAID(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_6

    .line 63
    :catchall_4
    :try_start_5
    aget-object p2, p3, v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {p2, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    aget-object p2, p3, v2

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 64
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object p2

    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_5

    :cond_3
    move-object p1, v0

    :goto_5
    invoke-virtual {p2, p1}, Lcom/tendcloud/tenddata/dd;->setAAID(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 78
    :catchall_5
    :goto_6
    sget-object p1, Lcom/tendcloud/tenddata/bj;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-object v0
.end method
