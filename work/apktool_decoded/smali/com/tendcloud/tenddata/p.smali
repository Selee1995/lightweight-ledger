.class public Lcom/tendcloud/tenddata/p;
.super Ljava/lang/Object;
.source "td"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getParentFragment"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 16
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 23
    :try_start_1
    invoke-static {p0}, Lcom/tendcloud/tenddata/p;->c(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/tendcloud/tenddata/p;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/tendcloud/tenddata/p;->e(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    .line 27
    :cond_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/p;->c(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0}, Lcom/tendcloud/tenddata/p;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/tendcloud/tenddata/p;->e(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 28
    invoke-static {v1}, Lcom/tendcloud/tenddata/p;->c(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v1}, Lcom/tendcloud/tenddata/p;->b(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v1}, Lcom/tendcloud/tenddata/p;->e(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p0, :cond_1

    return v2

    :catch_1
    :cond_1
    return v0
.end method

.method public static b(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getUserVisibleHint"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 47
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static c(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    .line 62
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isHidden"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 63
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static d(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.app.Fragment"

    .line 85
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    :try_start_1
    const-string v3, "android.support.v4.app.Fragment"

    .line 90
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-object v3, v1

    :goto_1
    :try_start_2
    const-string v4, "androidx.fragment.app.Fragment"

    .line 96
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    nop

    :goto_2
    if-nez v3, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    return v0

    :cond_1
    if-eqz v3, :cond_2

    .line 105
    :try_start_3
    invoke-virtual {v3, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    .line 106
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    if-eqz v2, :cond_5

    .line 107
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz p0, :cond_5

    :cond_4
    const/4 p0, 0x1

    return p0

    :catch_3
    :cond_5
    return v0
.end method

.method public static e(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isResumed"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 125
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method
