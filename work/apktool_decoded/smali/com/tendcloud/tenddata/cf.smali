.class public Lcom/tendcloud/tenddata/cf;
.super Ljava/lang/Object;
.source "td"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    const/4 p0, 0x0

    .line 21
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/bz;->l()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x1

    :catchall_0
    return p0
.end method

.method public static reflectNUBIA(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    const-string v0, "content://cn.nubia.identity/identity"

    .line 40
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x11

    const-string v3, "getOAID"

    const/4 v4, 0x0

    if-le v1, v2, :cond_2

    .line 42
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 44
    invoke-virtual {p0, v3, v4, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 45
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    :cond_1
    return-void

    .line 54
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    const-string p0, "code"

    const/4 v1, -0x1

    .line 57
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "id"

    .line 59
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 61
    invoke-static {}, Lcom/tendcloud/tenddata/dd;->a()Lcom/tendcloud/tenddata/dd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/dd;->setOAID(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method
