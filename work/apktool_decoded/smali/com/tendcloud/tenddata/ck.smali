.class public final Lcom/tendcloud/tenddata/ck;
.super Ljava/lang/Object;
.source "td"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 2

    const/4 v0, 0x0

    .line 15
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/bz;->a()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v1, "com.android.id.impl.IdProviderImpl"

    .line 18
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :catchall_0
    return v0
.end method

.method public static reflectMiUi(Landroid/content/Context;)V
    .locals 7

    :try_start_0
    const-string v0, "com.android.id.impl.IdProviderImpl"

    .line 32
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_1
    const-string v4, "getUDID"

    new-array v5, v3, [Ljava/lang/Class;

    .line 35
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p0, v5, v2

    .line 36
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 37
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v5

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/tendcloud/tenddata/dd;->setUDID(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    const-string v4, "getOAID"

    new-array v5, v3, [Ljava/lang/Class;

    .line 44
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p0, v5, v2

    .line 45
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 46
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v5

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/tendcloud/tenddata/dd;->setOAID(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :try_start_3
    const-string v4, "getVAID"

    new-array v5, v3, [Ljava/lang/Class;

    .line 53
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p0, v5, v2

    .line 54
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 55
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v5

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/tendcloud/tenddata/dd;->setVAID(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :try_start_4
    const-string v4, "getAAID"

    new-array v5, v3, [Ljava/lang/Class;

    .line 62
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    .line 63
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 64
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/dd;->setAAID(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    return-void
.end method
