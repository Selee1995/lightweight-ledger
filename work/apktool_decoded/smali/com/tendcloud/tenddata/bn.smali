.class public final Lcom/tendcloud/tenddata/bn;
.super Ljava/lang/Object;
.source "td"


# static fields
.field static a:Landroid/os/Handler; = null

.field static b:Landroid/os/HandlerThread; = null

.field private static final c:Ljava/lang/String; = "check_wifi_permission"

.field private static final d:Ljava/lang/String; = "check_bs_permission"

.field private static final e:Ljava/lang/String; = "check_gps_permission"

.field private static final f:I = 0x1

.field private static final g:I = 0x2

.field private static final h:I = 0x3

.field private static final i:I = 0x4

.field private static final j:J = 0x927c0L

.field private static volatile k:Lcom/tendcloud/tenddata/bn;

.field private static l:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/bn;->a()Lcom/tendcloud/tenddata/bn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/z;->register(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "locHandlerThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tendcloud/tenddata/bn;->b:Landroid/os/HandlerThread;

    .line 86
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 87
    new-instance v0, Lcom/tendcloud/tenddata/bn$1;

    sget-object v1, Lcom/tendcloud/tenddata/bn;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tendcloud/tenddata/bn$1;-><init>(Lcom/tendcloud/tenddata/bn;Landroid/os/Looper;)V

    sput-object v0, Lcom/tendcloud/tenddata/bn;->a:Landroid/os/Handler;

    const/4 v0, 0x4

    const-wide/16 v1, 0x0

    .line 108
    invoke-virtual {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/bn;->a(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/bn;
    .locals 2

    .line 65
    sget-object v0, Lcom/tendcloud/tenddata/bn;->k:Lcom/tendcloud/tenddata/bn;

    if-nez v0, :cond_1

    .line 66
    const-class v0, Lcom/tendcloud/tenddata/bn;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/bn;->k:Lcom/tendcloud/tenddata/bn;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/tendcloud/tenddata/bn;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/bn;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/bn;->k:Lcom/tendcloud/tenddata/bn;

    .line 70
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 72
    :cond_1
    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/bn;->k:Lcom/tendcloud/tenddata/bn;

    return-object v0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/bn;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/tendcloud/tenddata/bn;->c()V

    return-void
.end method

.method private b()V
    .locals 4

    :try_start_0
    const-string v0, "check_wifi_permission"

    .line 168
    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/bn;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const-wide/32 v1, 0x2bf20

    .line 169
    invoke-virtual {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/bn;->a(IJ)V

    return-void

    .line 172
    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/tendcloud/tenddata/bn;->l:Landroid/net/wifi/WifiManager;

    .line 173
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    new-instance v0, Lcom/tendcloud/tenddata/bt;

    sget-object v1, Lcom/tendcloud/tenddata/bn;->l:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1}, Lcom/tendcloud/tenddata/bt;-><init>(Landroid/net/wifi/WifiManager;)V

    .line 175
    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/tendcloud/tenddata/bn;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/tendcloud/tenddata/bn;->b()V

    return-void
.end method

.method private c()V
    .locals 3

    :try_start_0
    const-string v0, "check_bs_permission"

    .line 186
    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/bn;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const-wide/32 v1, 0x2bf20

    .line 187
    invoke-virtual {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/bn;->a(IJ)V

    return-void

    .line 190
    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 193
    sget-object v0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 194
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 195
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    .line 196
    new-instance v1, Lcom/tendcloud/tenddata/bs;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/bs;-><init>()V

    const/16 v2, 0x10

    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 198
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method


# virtual methods
.method protected a(IJ)V
    .locals 1

    .line 118
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 119
    iput p1, v0, Landroid/os/Message;->what:I

    .line 120
    sget-object p1, Lcom/tendcloud/tenddata/bn;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    .line 141
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 143
    sget-object v2, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    sget-object v2, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    .line 144
    invoke-static {v2, v4}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 146
    :goto_1
    sget-object v4, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v4, v5}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, -0x1

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x486dd47a

    const/4 v8, 0x2

    if-eq v6, v7, :cond_4

    const v7, 0x48b5c802

    if-eq v6, v7, :cond_3

    const v7, 0x50d1349b

    if-eq v6, v7, :cond_2

    goto :goto_2

    :cond_2
    const-string v6, "check_gps_permission"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const-string v6, "check_wifi_permission"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v5, 0x2

    goto :goto_2

    :cond_4
    const-string v6, "check_bs_permission"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v5, 0x0

    :cond_5
    :goto_2
    if-eqz v5, :cond_a

    if-eq v5, v3, :cond_9

    if-eq v5, v8, :cond_6

    goto :goto_3

    :cond_6
    const/16 p1, 0x17

    .line 155
    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_8

    if-eqz v4, :cond_7

    if-eqz v2, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0

    :cond_8
    return v4

    :cond_9
    return v2

    :cond_a
    if-eqz v2, :cond_b

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :catchall_0
    :cond_b
    :goto_3
    return v0
.end method

.method public final onTDEBEventLocationEvent(Lcom/tendcloud/tenddata/bu;)V
    .locals 0

    return-void
.end method
