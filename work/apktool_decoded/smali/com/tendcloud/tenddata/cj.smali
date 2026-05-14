.class public Lcom/tendcloud/tenddata/cj;
.super Ljava/lang/Object;
.source "td"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 79
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 80
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    const-string p0, "unknown"

    aput-object p0, v2, v6

    .line 81
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 95
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x2d913b

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0x33ee6d

    if-eq v2, v3, :cond_1

    const v3, 0x371d06

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "vaid"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "oaid"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "aaid"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    :cond_3
    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    move-object v3, v1

    goto :goto_2

    .line 103
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://com.vivo.vms.IdProvider/IdentifierId/AAID_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_1

    .line 100
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://com.vivo.vms.IdProvider/IdentifierId/VAID_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_1

    :cond_6
    const-string p0, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    .line 97
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_1
    move-object v3, p0

    .line 109
    :goto_2
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 111
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "value"

    .line 112
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    .line 114
    :cond_7
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_8
    return-object v1
.end method

.method public static a()Z
    .locals 3

    const/4 v0, 0x0

    .line 19
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/bz;->f()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v1, "persist.sys.identifierid.supported"

    const-string v2, "0"

    .line 22
    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/cj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "1"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return v0
.end method

.method public static reflectVIVO(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "oaid"

    .line 43
    invoke-static {v1, v0, p0}, Lcom/tendcloud/tenddata/cj;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tendcloud/tenddata/dd;->setOAID(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    const-string v1, "vaid"

    .line 52
    invoke-static {v1, v0, p0}, Lcom/tendcloud/tenddata/cj;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tendcloud/tenddata/dd;->setVAID(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :try_start_2
    const-string v1, "aaid"

    .line 60
    invoke-static {v1, v0, p0}, Lcom/tendcloud/tenddata/cj;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/dd;->setAAID(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    return-void
.end method
