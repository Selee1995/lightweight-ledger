.class public Lcom/tendcloud/tenddata/cd;
.super Ljava/lang/Object;
.source "td"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 18
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/bz;->i()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "com.meizu.flyme.openidsdk"

    .line 23
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_1
    return v0
.end method

.method public static reflectMEiZU(Landroid/content/Context;)V
    .locals 7

    :try_start_0
    const-string v0, "content://com.meizu.flyme.openidsdk/"

    .line 44
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 p0, 0x1

    new-array v5, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    const-string v0, "oaid"

    aput-object v0, v5, p0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 48
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "value"

    .line 49
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 50
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/dd;->setOAID(Ljava/lang/String;)V

    .line 54
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
