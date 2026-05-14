.class public final Lcom/tendcloud/tenddata/aw;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static final a:Ljava/lang/String; = "Archimedes_p"

.field private static final b:I = 0x3b9aca00


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()I
    .locals 2

    .line 39
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/n$b;->AES_DATA_LOCK:Lcom/tendcloud/tenddata/n$b;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/n$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/n;->getFileLock(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/tendcloud/tenddata/aw;->b()[[I

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/at;->a([[I)I

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-static {}, Lcom/tendcloud/tenddata/y;->b()Ljava/security/SecureRandom;

    move-result-object v0

    const v1, 0x3b9aca00

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    .line 43
    invoke-static {v0}, Lcom/tendcloud/tenddata/aw;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    sget-object v1, Lcom/tendcloud/tenddata/n$b;->AES_DATA_LOCK:Lcom/tendcloud/tenddata/n$b;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/n$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/n;->releaseFileLock(Ljava/lang/String;)V

    return v0

    :catchall_0
    sget-object v0, Lcom/tendcloud/tenddata/n$b;->AES_DATA_LOCK:Lcom/tendcloud/tenddata/n$b;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/n$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/n;->releaseFileLock(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static a(I)V
    .locals 11

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    const/4 v3, 0x3

    new-array v4, v3, [I

    const/4 v5, 0x7

    new-array v6, v5, [I

    new-array v7, v5, [I

    .line 127
    invoke-static {}, Lcom/tendcloud/tenddata/y;->b()Ljava/security/SecureRandom;

    move-result-object v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v3, :cond_1

    const/16 v10, 0x3e8

    .line 129
    invoke-virtual {v8, v10}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v10

    aput v10, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_2

    const/16 v9, 0x64

    .line 133
    invoke-virtual {v8, v9}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v9

    aput v9, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_2
    const/4 v8, 0x1

    if-ge v3, v5, :cond_3

    .line 136
    aget v9, v4, v1

    aget v10, v6, v3

    mul-int v9, v9, v10

    aget v10, v6, v3

    mul-int v9, v9, v10

    aget v10, v6, v3

    mul-int v9, v9, v10

    aget v8, v4, v8

    aget v10, v6, v3

    mul-int v8, v8, v10

    aget v10, v6, v3

    mul-int v8, v8, v10

    add-int/2addr v9, v8

    const/4 v8, 0x2

    aget v8, v4, v8

    aget v10, v6, v3

    mul-int v8, v8, v10

    add-int/2addr v9, v8

    add-int/2addr v9, p0

    aput v9, v7, v3

    .line 137
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget v9, v6, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v7, v3

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 138
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 141
    :cond_3
    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/aw;->a(Ljava/util/ArrayList;I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 148
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    add-int/2addr v2, v8

    if-lt v2, v5, :cond_0

    :goto_3
    const-string p0, "Archimedes_p"

    const/4 v1, 0x4

    if-ge v8, v1, :cond_5

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/av;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    const/4 v2, 0x6

    if-ge v1, v2, :cond_6

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/av;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    const/16 p0, 0x8

    if-ge v2, p0, :cond_7

    .line 160
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/av;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    return-void
.end method

.method private static a(Ljava/util/ArrayList;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 177
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 180
    invoke-static {v1, v3, p0}, Lcom/tendcloud/tenddata/aw;->a(Ljava/lang/String;II)[[I

    move-result-object p0

    invoke-static {p0}, Lcom/tendcloud/tenddata/at;->a([[I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :catchall_0
    :cond_1
    return v0
.end method

.method private static a(Ljava/lang/String;II)[[I
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 191
    const-class v2, I

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const-string v2, ","

    .line 193
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p2, :cond_0

    .line 197
    aget-object v5, v0, v2

    aget-object v6, p0, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static b()[[I
    .locals 10

    const/4 v0, 0x0

    .line 61
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    const-string v6, "Archimedes_p"

    const/4 v7, 0x4

    if-ge v4, v7, :cond_1

    .line 65
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tendcloud/tenddata/av;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 66
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 67
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    :goto_1
    const/4 v8, 0x6

    if-ge v4, v8, :cond_3

    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tendcloud/tenddata/av;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 73
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 74
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-ge v5, v7, :cond_5

    :goto_2
    const/16 v4, 0x8

    if-ge v8, v4, :cond_5

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tendcloud/tenddata/av;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 82
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 89
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v7, :cond_6

    .line 90
    check-cast v0, [[I

    return-object v0

    :cond_6
    :goto_3
    if-ge v3, v7, :cond_7

    .line 94
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 96
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v7, v2}, Lcom/tendcloud/tenddata/aw;->a(Ljava/lang/String;II)[[I

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 102
    :catchall_0
    check-cast v0, [[I

    return-object v0
.end method
