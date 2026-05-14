.class public final Lcom/tendcloud/tenddata/TalkingDataSDK;
.super Ljava/lang/Object;
.source "td"


# static fields
.field public static final ANALYTICS_INTELLIGENT_DISABLE:I = 0x2

.field public static final ANTI_CHEATING_DISABLE:I = 0x8

.field public static final DEVICE_IDENTIFICATION_DISABLE:I = 0x4

.field public static final PRECISE_AREA_DISABLE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/tendcloud/tenddata/TalkingDataSDK;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/ac;->d(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getNFCStatus(Landroid/content/Context;)I
    .locals 0

    .line 87
    invoke-static {p0}, Lcom/tendcloud/tenddata/ac;->b(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized getOAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/tendcloud/tenddata/TalkingDataSDK;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/a;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getShortUrl(Ljava/util/Map;Lcom/tendcloud/tenddata/TDGenerateUrl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tendcloud/tenddata/TDGenerateUrl;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/tendcloud/tenddata/TalkingDataSDK;

    monitor-enter v0

    .line 329
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, p1, v1}, Lcom/tendcloud/tenddata/ac;->a(Ljava/util/Map;Lcom/tendcloud/tenddata/TDGenerateUrl;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 25
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tendcloud/tenddata/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 38
    sget-object p4, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/tendcloud/tenddata/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static onCreateCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 230
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static onError(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    .line 105
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, p1, v0}, Lcom/tendcloud/tenddata/ac;->a(Landroid/content/Context;Ljava/lang/Throwable;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;DLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    invoke-static {p0, p1, p4}, Lcom/tendcloud/tenddata/TalkingDataSDK;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 143
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 152
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tendcloud/tenddata/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static onFavorite(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 248
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, p1, v0}, Lcom/tendcloud/tenddata/ac;->b(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static onFavorite(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 259
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static onLogin(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;)V
    .locals 1

    .line 201
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, p1, v0}, Lcom/tendcloud/tenddata/ac;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static onLogin(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tendcloud/tenddata/TalkingDataProfile;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 212
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/ac;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static onPageBegin(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 114
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, p1, v0}, Lcom/tendcloud/tenddata/ac;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static onPageEnd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 124
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, p1, v0}, Lcom/tendcloud/tenddata/ac;->b(Landroid/content/Context;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/ac;->b(Landroid/app/Activity;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static onProfileUpdate(Lcom/tendcloud/tenddata/TalkingDataProfile;)V
    .locals 1

    .line 220
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/ac;->a(Lcom/tendcloud/tenddata/TalkingDataProfile;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static onPunch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 290
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, p1, v0}, Lcom/tendcloud/tenddata/ac;->d(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static onReceiveDeepLink(Ljava/lang/String;)V
    .locals 1

    .line 239
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/ac;->d(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static onRegister(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Ljava/lang/String;)V
    .locals 1

    .line 180
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/ac;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static onRegister(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tendcloud/tenddata/TalkingDataProfile;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 191
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tendcloud/tenddata/ac;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/TalkingDataProfile;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 309
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/ac;->a(Landroid/app/Activity;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static onSearch(Lcom/tendcloud/tenddata/TalkingDataSearch;)V
    .locals 1

    .line 298
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/ac;->a(Lcom/tendcloud/tenddata/TalkingDataSearch;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static onShare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 269
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, p1, v0}, Lcom/tendcloud/tenddata/ac;->c(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static onShare(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 280
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/ac;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static removeGlobalKV(Ljava/lang/String;)V
    .locals 1

    .line 171
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/ac;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static declared-synchronized setConfigurationDisable(I)V
    .locals 1

    const-class v0, Lcom/tendcloud/tenddata/TalkingDataSDK;

    monitor-enter v0

    .line 57
    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/ac;->setConfigurationDisable(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setCustomDataSwitch(Lcom/tendcloud/tenddata/TalkingDataSharingFilter;)V
    .locals 2

    const-class v0, Lcom/tendcloud/tenddata/TalkingDataSDK;

    monitor-enter v0

    .line 333
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/ac;->a(Lcom/tendcloud/tenddata/TalkingDataSharingFilter;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setGlobalKV(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 162
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, p1, v0}, Lcom/tendcloud/tenddata/ac;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static setReportUncaughtExceptions(Z)V
    .locals 1

    .line 95
    sget-object v0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/ac;->a(ZLcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method public static setVerboseLogDisable()V
    .locals 0

    .line 63
    invoke-static {}, Lcom/tendcloud/tenddata/ac;->c()V

    return-void
.end method
