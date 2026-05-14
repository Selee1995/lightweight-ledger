.class public Lcom/tendcloud/tenddata/o;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/o$a;,
        Lcom/tendcloud/tenddata/o$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "www.talkingdata.net"

.field static final b:I = 0x50

.field private static c:Landroid/telephony/TelephonyManager; = null

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static g:Lcom/tendcloud/tenddata/o$a; = null

.field private static h:Z = false

.field private static final i:J = 0x493e0L

.field private static j:J

.field private static volatile k:Z

.field private static volatile l:Z

.field private static m:Lorg/json/JSONArray;

.field private static n:Lorg/json/JSONArray;

.field private static volatile o:Z

.field private static volatile p:Z

.field private static volatile q:Z

.field private static r:Lorg/json/JSONArray;

.field private static s:Lorg/json/JSONArray;

.field private static t:Lorg/json/JSONArray;

.field private static u:Z

.field private static v:Lcom/tendcloud/tenddata/o$b;

.field private static w:Lorg/json/JSONArray;

.field private static volatile x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/o;->d:Ljava/util/HashMap;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "GPRS"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "EDGE"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "UMTS"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v7, "CDMA"

    aput-object v7, v1, v2

    const/4 v8, 0x5

    const-string v9, "EVDO_0"

    aput-object v9, v1, v8

    const/4 v8, 0x6

    const-string v9, "EVDO_A"

    aput-object v9, v1, v8

    const/4 v8, 0x7

    const-string v9, "1xRTT"

    aput-object v9, v1, v8

    const/16 v8, 0x8

    const-string v9, "HSDPA"

    aput-object v9, v1, v8

    const/16 v8, 0x9

    const-string v9, "HSUPA"

    aput-object v9, v1, v8

    const/16 v8, 0xa

    const-string v9, "HSPA"

    aput-object v9, v1, v8

    const/16 v8, 0xb

    const-string v9, "IDEN"

    aput-object v9, v1, v8

    const/16 v8, 0xc

    const-string v9, "EVDO_B"

    aput-object v9, v1, v8

    const/16 v8, 0xd

    const-string v9, "LTE"

    aput-object v9, v1, v8

    const/16 v8, 0xe

    const-string v9, "EHRPD"

    aput-object v9, v1, v8

    const/16 v8, 0xf

    const-string v9, "HSPAP"

    aput-object v9, v1, v8

    .line 72
    sput-object v1, Lcom/tendcloud/tenddata/o;->e:[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "NONE"

    aput-object v2, v1, v3

    const-string v2, "GSM"

    aput-object v2, v1, v4

    aput-object v7, v1, v5

    const-string v2, "SIP"

    aput-object v2, v1, v6

    .line 76
    sput-object v1, Lcom/tendcloud/tenddata/o;->f:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 78
    sput-object v1, Lcom/tendcloud/tenddata/o;->g:Lcom/tendcloud/tenddata/o$a;

    .line 92
    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 93
    invoke-static {}, Lcom/tendcloud/tenddata/o;->a()[Ljava/lang/String;

    move-result-object v1

    .line 97
    aget-object v2, v1, v3

    const-string v7, "ip"

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    aget-object v2, v1, v4

    const-string v4, "ipv6"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    aget-object v2, v1, v5

    const-string v4, "cell_ip"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    aget-object v1, v1, v6

    const-string v2, "cell_ipv6"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/o;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bssid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/o;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    sput-boolean v3, Lcom/tendcloud/tenddata/o;->h:Z

    const-wide/32 v0, -0x493e0

    .line 107
    sput-wide v0, Lcom/tendcloud/tenddata/o;->j:J

    .line 686
    sput-boolean v3, Lcom/tendcloud/tenddata/o;->k:Z

    .line 687
    sput-boolean v3, Lcom/tendcloud/tenddata/o;->l:Z

    .line 688
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/o;->m:Lorg/json/JSONArray;

    .line 1012
    sput-boolean v3, Lcom/tendcloud/tenddata/o;->o:Z

    .line 1013
    sput-boolean v3, Lcom/tendcloud/tenddata/o;->p:Z

    .line 1014
    sput-boolean v3, Lcom/tendcloud/tenddata/o;->q:Z

    .line 1015
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/o;->r:Lorg/json/JSONArray;

    .line 1163
    sput-boolean v3, Lcom/tendcloud/tenddata/o;->u:Z

    .line 1164
    new-instance v0, Lcom/tendcloud/tenddata/o$b;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/o$b;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/o;->v:Lcom/tendcloud/tenddata/o$b;

    .line 1309
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/o;->w:Lorg/json/JSONArray;

    .line 1317
    sput-boolean v3, Lcom/tendcloud/tenddata/o;->x:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 1

    .line 1320
    sget-object v0, Lcom/tendcloud/tenddata/o;->w:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_2

    sget-boolean v0, Lcom/tendcloud/tenddata/o;->x:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 1323
    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1324
    sget-object p0, Lcom/tendcloud/tenddata/o;->w:Lorg/json/JSONArray;

    return-object p0

    .line 1326
    :cond_1
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->D(Landroid/content/Context;)V

    .line 1327
    sget-object p0, Lcom/tendcloud/tenddata/o;->w:Lorg/json/JSONArray;

    return-object p0

    .line 1321
    :cond_2
    :goto_0
    sget-object p0, Lcom/tendcloud/tenddata/o;->w:Lorg/json/JSONArray;

    return-object p0
.end method

.method public static B(Landroid/content/Context;)I
    .locals 1

    const/16 v0, 0x17

    .line 1512
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1514
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 1515
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->a(Landroid/content/Context;)V

    .line 1517
    :cond_0
    sget-object p0, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    goto :goto_0

    .line 1525
    :cond_1
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->A(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static C(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1907
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->d(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1910
    :try_start_0
    sget-object p0, Lcom/tendcloud/tenddata/o;->d:Ljava/util/HashMap;

    const-string v1, "ip"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    const/16 v1, 0x2e

    .line 1912
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1913
    new-instance v1, Ljava/net/DatagramPacket;

    new-array v4, v3, [B

    invoke-direct {v1, v4, v3, v3}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 1914
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    const/16 v4, 0xff

    if-ge v2, v4, :cond_1

    .line 1916
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1919
    :try_start_2
    invoke-virtual {v1, v4}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 1920
    invoke-virtual {v3, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/16 v4, 0x7d

    if-ne v2, v4, :cond_0

    .line 1922
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 1923
    new-instance v4, Ljava/net/DatagramSocket;

    invoke-direct {v4}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v4

    :catchall_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1931
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    const-wide/16 v1, 0x1388

    .line 1933
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 1934
    invoke-static {}, Lcom/tendcloud/tenddata/o;->c()Ljava/util/Map;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v3, :cond_3

    .line 1942
    :try_start_4
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :cond_3
    return-object p0

    :catchall_2
    move-object v3, v0

    :catchall_3
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    :cond_4
    return-object v0
.end method

.method private static D(Landroid/content/Context;)V
    .locals 12

    const-string v0, "meid5"

    const-string v1, "meid"

    const-string v2, "imei5"

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "phone"

    .line 1343
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 1344
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v6, 0x16

    .line 1346
    invoke-static {v6}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const-string v7, "imei"

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    :try_start_1
    const-string v5, "telephony_subscription_service"

    .line 1347
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    const/16 v6, 0x1a

    .line 1351
    :try_start_2
    invoke-static {p0, v5, v8}, Lcom/tendcloud/tenddata/o;->a(Landroid/content/Context;Landroid/telephony/SubscriptionManager;I)Lorg/json/JSONObject;

    move-result-object v9

    .line 1352
    invoke-static {v6}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v11, "imei1"

    if-eqz v10, :cond_0

    .line 1354
    :try_start_3
    invoke-static {v11}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1355
    invoke-static {v8}, Lcom/tendcloud/tenddata/l;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    :try_start_4
    const-string v10, "meid1"

    .line 1360
    invoke-static {v10}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1361
    invoke-static {v8}, Lcom/tendcloud/tenddata/l;->c(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 1366
    :cond_0
    :try_start_5
    invoke-static {v11}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1367
    invoke-static {v8}, Lcom/tendcloud/tenddata/l;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1369
    :catchall_1
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 1370
    sget-object v8, Lcom/tendcloud/tenddata/o;->w:Lorg/json/JSONArray;

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1379
    :catchall_2
    :cond_1
    :try_start_6
    invoke-static {p0, v5, v3}, Lcom/tendcloud/tenddata/o;->a(Landroid/content/Context;Landroid/telephony/SubscriptionManager;I)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v4, :cond_3

    .line 1381
    invoke-static {v6}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    const-string v5, "imei2"

    if-eqz v4, :cond_2

    .line 1383
    :try_start_7
    invoke-static {v5}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1384
    invoke-static {v3}, Lcom/tendcloud/tenddata/l;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    :try_start_8
    const-string v2, "meid2"

    .line 1389
    invoke-static {v2}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1390
    invoke-static {v3}, Lcom/tendcloud/tenddata/l;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_1

    .line 1395
    :cond_2
    :try_start_9
    invoke-static {v5}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1396
    invoke-static {v3}, Lcom/tendcloud/tenddata/l;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1400
    :catchall_4
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 1401
    sget-object v0, Lcom/tendcloud/tenddata/o;->w:Lorg/json/JSONArray;

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto/16 :goto_5

    :cond_4
    const-string v0, ""

    if-eqz v4, :cond_5

    .line 1412
    :try_start_a
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v1, v0

    .line 1415
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/o;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1416
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1417
    invoke-static {v4, v1}, Lcom/tendcloud/tenddata/o;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1419
    sget-object v2, Lcom/tendcloud/tenddata/o;->w:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :cond_6
    :try_start_b
    const-string v1, "phone1"

    .line 1425
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_7

    .line 1428
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    move-object v2, v0

    :goto_3
    if-eqz v2, :cond_8

    .line 1430
    invoke-static {v2}, Lcom/tendcloud/tenddata/o;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1431
    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1432
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1433
    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/o;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1436
    sget-object v2, Lcom/tendcloud/tenddata/o;->w:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    :cond_8
    :try_start_c
    const-string v1, "phone2"

    .line 1448
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_9

    .line 1451
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :cond_9
    if-eqz v0, :cond_a

    .line 1453
    invoke-static {v0}, Lcom/tendcloud/tenddata/o;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1454
    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1455
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1456
    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/o;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1459
    sget-object v1, Lcom/tendcloud/tenddata/o;->w:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 1469
    :catchall_6
    :cond_a
    :try_start_d
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->H(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1470
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->G(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_b

    move-object v0, v1

    .line 1474
    :cond_b
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->F(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_c

    move-object v0, v1

    .line 1478
    :cond_c
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->E(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_d

    move-object v0, p0

    :cond_d
    if-eqz v0, :cond_f

    .line 1483
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_f

    .line 1484
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-ge v8, p0, :cond_f

    .line 1485
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    .line 1486
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1487
    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1488
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1489
    sget-object v1, Lcom/tendcloud/tenddata/o;->w:Lorg/json/JSONArray;

    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1499
    :catchall_7
    :cond_f
    :goto_5
    sput-boolean v3, Lcom/tendcloud/tenddata/o;->x:Z

    return-void
.end method

.method private static E(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 10

    const/4 v0, 0x0

    .line 1654
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "phone"

    .line 1656
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const-string v2, "com.android.internal.telephony.Phone"

    .line 1657
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_1
    const-string v5, "GEMINI_SIM_1"

    .line 1660
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1661
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1662
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const-string v6, "GEMINI_SIM_2"

    .line 1663
    invoke-virtual {v2, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1664
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1665
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1667
    :catchall_0
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1668
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1670
    :goto_0
    const-class v6, Landroid/telephony/TelephonyManager;

    const-string v7, "getDeviceIdGemini"

    new-array v8, v4, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    .line 1671
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz p0, :cond_3

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    new-array v7, v4, [Ljava/lang/Object;

    aput-object v5, v7, v3

    .line 1675
    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    .line 1676
    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1678
    invoke-static {v7}, Lcom/tendcloud/tenddata/o;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v6, "Gemini"

    if-eqz v4, :cond_1

    .line 1679
    :try_start_3
    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-static {v4, p0, v5, v7, v6}, Lcom/tendcloud/tenddata/o;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1682
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1685
    :cond_1
    invoke-static {v3}, Lcom/tendcloud/tenddata/o;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1686
    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-static {v4, p0, v2, v3, v6}, Lcom/tendcloud/tenddata/o;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 1689
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    return-object v1

    :catchall_1
    :cond_3
    :goto_1
    return-object v0
.end method

.method private static F(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 10

    const/4 v0, 0x0

    .line 1701
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "phone"

    .line 1703
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const-string v2, "com.android.internal.telephony.Phone"

    .line 1704
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_1
    const-string v5, "GEMINI_SIM_1"

    .line 1708
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1709
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1710
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const-string v6, "GEMINI_SIM_2"

    .line 1711
    invoke-virtual {v2, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1712
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1713
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1715
    :catchall_0
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1716
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1718
    :goto_0
    const-class v6, Landroid/telephony/TelephonyManager;

    const-string v7, "getDefault"

    new-array v8, v4, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v5, v7, v3

    .line 1720
    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    .line 1721
    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 1722
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1723
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1725
    invoke-static {v2}, Lcom/tendcloud/tenddata/o;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1726
    invoke-static {v5, v2}, Lcom/tendcloud/tenddata/o;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1728
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1731
    :cond_0
    invoke-static {v3}, Lcom/tendcloud/tenddata/o;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1732
    invoke-static {p0, v3}, Lcom/tendcloud/tenddata/o;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1734
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    return-object v1

    :catchall_1
    return-object v0
.end method

.method private static G(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 9

    const-string v0, "phone"

    .line 1746
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "com.android.internal.telephony.PhoneFactory"

    .line 1748
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getServiceName"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 1749
    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    .line 1752
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1751
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1755
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1756
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1758
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 1759
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1761
    invoke-static {v3}, Lcom/tendcloud/tenddata/o;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1762
    invoke-static {v0, v3}, Lcom/tendcloud/tenddata/o;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1764
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1767
    :cond_0
    invoke-static {v2}, Lcom/tendcloud/tenddata/o;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1768
    invoke-static {p0, v2}, Lcom/tendcloud/tenddata/o;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1770
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v1

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static H(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 9

    .line 1782
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "android.telephony.MSimTelephonyManager"

    .line 1784
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "phone_msim"

    .line 1785
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x0

    .line 1786
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    .line 1787
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "getDeviceId"

    new-array v7, v4, [Ljava/lang/Class;

    .line 1788
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    .line 1789
    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v3, v7, v2

    .line 1794
    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v2

    .line 1795
    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1796
    invoke-static {v7}, Lcom/tendcloud/tenddata/o;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, ""

    if-eqz v4, :cond_0

    .line 1797
    :try_start_1
    invoke-static {v1, p0, v3, v7, v6}, Lcom/tendcloud/tenddata/o;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1799
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1802
    :cond_0
    invoke-static {v2}, Lcom/tendcloud/tenddata/o;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1803
    invoke-static {v1, p0, v5, v2, v6}, Lcom/tendcloud/tenddata/o;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 1805
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    return-object v0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_0

    .line 514
    sget-object v0, Lcom/tendcloud/tenddata/o;->e:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object p0, v0, p0

    goto :goto_0

    .line 515
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 110
    sget-object v0, Lcom/tendcloud/tenddata/o;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Z)Lorg/json/JSONArray;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 693
    :try_start_0
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 694
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    goto :goto_0

    :cond_0
    return-object v0

    .line 699
    :cond_1
    :goto_0
    sget-object v1, Lcom/tendcloud/tenddata/o;->m:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_8

    sget-boolean v1, Lcom/tendcloud/tenddata/o;->k:Z

    if-eqz v1, :cond_2

    goto/16 :goto_3

    .line 706
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "type"

    .line 707
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->n(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "mcc"

    .line 708
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "operator"

    .line 709
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "country"

    .line 710
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 711
    invoke-static {p0, v2}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 712
    invoke-static {p0, v2}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_7

    .line 717
    sget-object v2, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_4

    .line 718
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->a(Landroid/content/Context;)V

    .line 720
    :cond_4
    sget-boolean p0, Lcom/tendcloud/tenddata/y;->c:Z

    if-nez p0, :cond_5

    if-eqz p1, :cond_7

    :cond_5
    sget-boolean p0, Lcom/tendcloud/tenddata/ab;->Q:Z

    if-nez p0, :cond_7

    .line 721
    sget-object p0, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    .line 722
    instance-of p1, p0, Landroid/telephony/gsm/GsmCellLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "basestationId"

    const-string v4, "networkId"

    const-string v5, "systemId"

    if-eqz p1, :cond_6

    .line 724
    :try_start_1
    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz p0, :cond_7

    .line 726
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result p1

    invoke-virtual {v1, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 727
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p1

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 p1, 0x9

    .line 728
    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 729
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    .line 733
    :cond_6
    instance-of p1, p0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz p1, :cond_7

    .line 735
    check-cast p0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz p0, :cond_7

    .line 737
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result p1

    invoke-virtual {v1, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 738
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result p1

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 739
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "location"

    .line 743
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v2

    .line 744
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result p0

    .line 742
    invoke-static {v2, p0}, Lcom/tendcloud/tenddata/o;->a(II)Lorg/json/JSONObject;

    move-result-object p0

    .line 740
    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 750
    :cond_7
    :goto_2
    sput-boolean v3, Lcom/tendcloud/tenddata/o;->k:Z

    .line 751
    sget-object p0, Lcom/tendcloud/tenddata/o;->m:Lorg/json/JSONArray;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 752
    sget-object p0, Lcom/tendcloud/tenddata/o;->m:Lorg/json/JSONArray;

    return-object p0

    .line 700
    :cond_8
    :goto_3
    sget-object p0, Lcom/tendcloud/tenddata/o;->m:Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;I)Lorg/json/JSONArray;
    .locals 3

    .line 1271
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/o$4;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/o$4;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1285
    new-instance v0, Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    invoke-virtual {p0, v1, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/util/BitSet;)Lorg/json/JSONArray;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1298
    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    return-object v0

    .line 1302
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 1303
    :goto_0
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 1304
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .locals 4

    .line 933
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 934
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 935
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 936
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 938
    :cond_0
    new-instance p0, Lcom/tendcloud/tenddata/o$2;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/o$2;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 952
    new-instance p0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(II)Lorg/json/JSONObject;
    .locals 2

    .line 965
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "lat"

    .line 967
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "lng"

    .line 968
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "unit"

    const-string p1, "qd"

    .line 969
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/telephony/SubscriptionManager;I)Lorg/json/JSONObject;
    .locals 3

    .line 1571
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const/16 v0, 0x16

    .line 1573
    :try_start_0
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1575
    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1583
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, ""

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    .line 1584
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v1, "simSerialNumber"

    .line 1585
    invoke-virtual {p0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "simOperator"

    .line 1587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1588
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1587
    invoke-virtual {p0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "simOperatorName"

    .line 1589
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_1

    .line 1590
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1589
    :goto_1
    invoke-virtual {p0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "simCountryIso"

    .line 1593
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 1592
    :goto_2
    invoke-virtual {p0, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "subscriberId"

    const-string p2, "imsi"

    .line 1596
    invoke-static {p2}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_3
    return-object p0
.end method

.method private static a(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 1538
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "imei"

    .line 1539
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "imei5"

    .line 1540
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "subscriberId"

    .line 1543
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 1542
    :goto_0
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "simSerialNumber"

    .line 1545
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 1546
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 1545
    :goto_1
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "dataState"

    .line 1547
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "networkType"

    .line 1549
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/o;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "networkOperator"

    .line 1551
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "phoneType"

    .line 1553
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/o;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "simOperator"

    .line 1556
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 1555
    :goto_2
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "simOperatorName"

    .line 1558
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_3

    .line 1559
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 1558
    :goto_3
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "simCountryIso"

    .line 1562
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 1561
    :goto_4
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, ""

    .line 1817
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "imei"

    .line 1818
    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1819
    invoke-static {p3}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "imei5"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p3, 0x0

    const/4 v2, 0x1

    .line 1821
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubscriberId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p3

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "subscriberId"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, p3

    .line 1823
    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, p3

    .line 1824
    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1823
    :goto_0
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1831
    :catchall_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimSerialNumber"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p3

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "simSerialNumber"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, p3

    .line 1833
    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, p3

    .line 1834
    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1833
    :goto_1
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1841
    :catchall_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p3

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "dataState"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, p3

    .line 1843
    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1851
    :catchall_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p3

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "networkType"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, p3

    .line 1854
    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/tendcloud/tenddata/o;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 1853
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1862
    :catchall_3
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkOperator"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p3

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "networkOperator"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, p3

    .line 1864
    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1872
    :catchall_4
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p3

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "phoneType"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, p3

    .line 1875
    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/tendcloud/tenddata/o;->c(I)Ljava/lang/String;

    move-result-object v3

    .line 1874
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1883
    :catchall_5
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimOperator"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p3

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "simOperator"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, p3

    .line 1885
    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v3, v0

    goto :goto_2

    :cond_2
    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, p3

    .line 1886
    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1885
    :goto_2
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 1894
    :catchall_6
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimOperatorName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, p3

    invoke-virtual {p0, p4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const-string p4, "simOperatorName"

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, p3

    .line 1896
    invoke-virtual {p0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, p3

    .line 1897
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1896
    :goto_3
    invoke-virtual {v1, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :catchall_7
    return-object v1
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    const-string v0, "phone"

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    sput-object p0, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static a([Ljava/lang/String;)V
    .locals 7

    .line 135
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 141
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 142
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wlan"

    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "eth"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "dummy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 150
    :cond_3
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 151
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 154
    :cond_4
    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 155
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 160
    :cond_6
    new-instance v0, Lcom/tendcloud/tenddata/o$1;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/o$1;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 167
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_d

    .line 168
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 169
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 170
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    .line 173
    :cond_8
    instance-of v6, v3, Ljava/net/Inet4Address;

    if-eqz v6, :cond_9

    .line 174
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v5

    goto :goto_2

    .line 175
    :cond_9
    instance-of v5, v3, Ljava/net/Inet6Address;

    if-eqz v5, :cond_7

    .line 176
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ff:fe"

    .line 177
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_2

    .line 180
    :cond_a
    aput-object v3, p0, v4

    goto :goto_2

    .line 183
    :cond_b
    aget-object v2, p0, v5

    if-nez v2, :cond_d

    aget-object v2, p0, v4

    if-eqz v2, :cond_c

    goto :goto_3

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_d
    :goto_3
    return-void
.end method

.method public static a()[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const/4 v4, 0x3

    aput-object v2, v0, v4

    .line 115
    sget-boolean v2, Lcom/tendcloud/tenddata/ab;->S:Z

    if-eqz v2, :cond_0

    return-object v0

    .line 118
    :cond_0
    sget-object v2, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tendcloud/tenddata/o;->i(Landroid/content/Context;)Z

    move-result v2

    .line 119
    sget-object v4, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tendcloud/tenddata/o;->j(Landroid/content/Context;)Z

    move-result v4

    if-nez v2, :cond_1

    if-nez v4, :cond_1

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "no-network"

    aput-object v3, v2, v1

    .line 121
    invoke-static {v2}, Lcom/tendcloud/tenddata/h;->iForInternal([Ljava/lang/String;)V

    return-object v0

    :cond_1
    if-eqz v2, :cond_2

    .line 126
    :try_start_0
    invoke-static {v0}, Lcom/tendcloud/tenddata/o;->b([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 128
    invoke-static {v0}, Lcom/tendcloud/tenddata/o;->a([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    const/16 v0, 0x30

    const/4 v1, 0x0

    .line 1617
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1618
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_0
    const/4 v2, 0x1

    .line 1620
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    .line 1621
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1622
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v0, v4, :cond_1

    .line 1624
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2

    .line 1635
    :catchall_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    const-string v0, "UNKNOWN"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    const-string v0, "4G"

    goto :goto_0

    :pswitch_1
    const-string v0, "3G"

    goto :goto_0

    :pswitch_2
    const-string v0, "2G"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .locals 4

    .line 1069
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1070
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1071
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1072
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1074
    :cond_0
    new-instance p0, Lcom/tendcloud/tenddata/o$3;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/o$3;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1088
    new-instance p0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b([Ljava/lang/String;)V
    .locals 6

    .line 191
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 196
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 197
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wlan"

    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 205
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    if-eqz v2, :cond_2

    .line 207
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 210
    :cond_3
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 214
    :cond_4
    instance-of v4, v2, Ljava/net/Inet4Address;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 215
    aput-object v3, p0, v5

    goto :goto_1

    .line 216
    :cond_5
    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_2

    const-string v2, "%"

    .line 217
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_6

    .line 219
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_6
    const/4 v2, 0x1

    .line 221
    aput-object v3, p0, v2

    goto :goto_1

    :cond_7
    return-void
.end method

.method public static b()Z
    .locals 1

    const/16 v0, 0xb

    .line 448
    :try_start_0
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http.proxyHost"

    .line 449
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 452
    :cond_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 7

    :try_start_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 228
    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const-string v0, "connectivity"

    .line 231
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_4

    const/16 v0, 0x1d

    .line 233
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 236
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0xc

    .line 237
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 242
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 244
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    return p0

    .line 247
    :cond_2
    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 249
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p0

    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {p0, v0}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    return v2

    .line 259
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-wide v5, Lcom/tendcloud/tenddata/o;->j:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x493e0

    cmp-long p0, v3, v5

    if-lez p0, :cond_7

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sput-wide v3, Lcom/tendcloud/tenddata/o;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 p0, 0x0

    .line 265
    :try_start_1
    invoke-static {}, Lcom/tendcloud/tenddata/o;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 266
    new-instance v0, Ljava/net/Socket;

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v4

    invoke-direct {v0, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    .line 268
    :cond_5
    new-instance v0, Ljava/net/Socket;

    const-string v3, "www.talkingdata.net"

    const/16 v4, 0x50

    invoke-direct {v0, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    :goto_2
    move-object p0, v0

    .line 270
    sput-boolean v1, Lcom/tendcloud/tenddata/o;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_4

    .line 273
    :catchall_0
    :try_start_3
    sput-boolean v2, Lcom/tendcloud/tenddata/o;->h:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_7

    goto :goto_3

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_6

    .line 277
    :try_start_4
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 282
    :catchall_2
    :cond_6
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 291
    :catchall_3
    :cond_7
    :goto_4
    sget-boolean p0, Lcom/tendcloud/tenddata/o;->h:Z

    return p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .line 1640
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1641
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 1642
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    .line 1649
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_0

    .line 560
    sget-object v0, Lcom/tendcloud/tenddata/o;->f:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object p0, v0, p0

    goto :goto_0

    .line 561
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static c([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 2032
    array-length v1, p0

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2036
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 2037
    aget-object v3, p0, v2

    const-string v4, "lladdr"

    .line 2038
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-lez v1, :cond_3

    .line 2043
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 2044
    aget-object p0, p0, v1

    const-string v1, "([\\da-fA-F]{2}:){5}([\\da-fA-F]{2}){1}"

    .line 2045
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "00:00:00:00:00:00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return-object p0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private static c()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x1d

    .line 1956
    :try_start_0
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1957
    invoke-static {}, Lcom/tendcloud/tenddata/o;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 1959
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1960
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v3, Ljava/io/File;

    const-string v4, "/proc/net/arp"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1964
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "[ ]+"

    .line 1965
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1966
    aget-object v4, v2, v3

    const-string v5, "IP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1967
    aget-object v3, v2, v3

    const/4 v4, 0x3

    .line 1968
    aget-object v2, v2, v4

    .line 1969
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "00:00:00:00:00:00"

    .line 1970
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1971
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1975
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 296
    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "connectivity"

    .line 299
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 301
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 302
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method private static d()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1991
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "ip n"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1992
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1994
    :try_start_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1995
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v4, "lladdr"

    .line 1996
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_0

    const-string v4, " "

    .line 1997
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1998
    array-length v4, v0

    const/4 v5, 0x5

    if-le v4, v5, :cond_0

    const/4 v4, 0x0

    .line 1999
    aget-object v4, v0, v4

    .line 2000
    invoke-static {v0}, Lcom/tendcloud/tenddata/o;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2001
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 2004
    :cond_1
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2005
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2010
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2018
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :goto_1
    if-eqz v1, :cond_4

    .line 2026
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    goto :goto_5

    :catchall_1
    move-object v3, v0

    :catchall_2
    move-object v0, v2

    goto :goto_3

    :catchall_3
    move-object v3, v0

    goto :goto_3

    :catchall_4
    move-object v1, v0

    move-object v3, v1

    :goto_3
    if-eqz v0, :cond_3

    .line 2018
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    nop

    :cond_3
    :goto_4
    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_5
    return-object v3
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1

    .line 316
    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "wifi"

    .line 321
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 322
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 333
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 334
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->a(Landroid/content/Context;)V

    .line 336
    :cond_0
    sget-object p0, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :catchall_0
    :cond_1
    return v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "connectivity"

    .line 347
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 348
    const-class v1, Landroid/net/ConnectivityManager;

    const-string v2, "getMobileDataEnabled"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 349
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 350
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return v0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 4

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 359
    :try_start_0
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 360
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 362
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v3, :cond_2

    const/4 v1, 0x1

    :catchall_0
    :cond_2
    return v1
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 374
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 375
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->a(Landroid/content/Context;)V

    .line 377
    :cond_0
    sget-object p0, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eq v1, p0, :cond_1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :catchall_0
    :cond_1
    return v0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 389
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 390
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    :try_start_0
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 396
    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "connectivity"

    .line 399
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_4

    const/16 v1, 0x1d

    .line 401
    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 402
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 404
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 406
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 409
    :cond_3
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 411
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v2, v1, :cond_4

    .line 412
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :catchall_0
    :cond_4
    return v0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 427
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 428
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    goto :goto_0

    :cond_0
    return v0

    .line 434
    :cond_1
    :goto_0
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_2

    .line 435
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->a(Landroid/content/Context;)V

    .line 437
    :cond_2
    sget-object p0, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    const/4 v0, 0x1

    :catchall_0
    :cond_3
    return v0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 459
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "OFFLINE"

    return-object p0

    .line 461
    :cond_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "WIFI"

    return-object p0

    .line 464
    :cond_1
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->n(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 467
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "offline"

    return-object p0

    .line 469
    :cond_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->i(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "wifi"

    return-object p0

    :cond_1
    const-string p0, "cellular"

    return-object p0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "UNKNOWN"

    if-nez p0, :cond_1

    .line 477
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 478
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    goto :goto_0

    :cond_0
    return-object v0

    .line 483
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 485
    :cond_2
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "WIFI"

    return-object p0

    .line 488
    :cond_3
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->n(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 495
    :try_start_0
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 496
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    goto :goto_0

    :cond_0
    return v0

    .line 501
    :cond_1
    :goto_0
    sget-object v1, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_2

    .line 502
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->a(Landroid/content/Context;)V

    .line 504
    :cond_2
    sget-object p0, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return v0
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 566
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 567
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->a(Landroid/content/Context;)V

    .line 569
    :cond_0
    sget-object p0, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 580
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 581
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->a(Landroid/content/Context;)V

    .line 583
    :cond_0
    sget-object p0, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 593
    sget-boolean v0, Lcom/tendcloud/tenddata/ab;->R:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 597
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    .line 598
    invoke-static {p0, v2}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 599
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 604
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 612
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 613
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->a(Landroid/content/Context;)V

    .line 615
    :cond_0
    sget-object p0, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 626
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 627
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->a(Landroid/content/Context;)V

    .line 629
    :cond_0
    sget-object p0, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 640
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 641
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->a(Landroid/content/Context;)V

    .line 643
    :cond_0
    sget-object p0, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static tryGetDoubleSimInfoReCheck(Landroid/content/Context;)V
    .locals 1

    .line 1332
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/o;->w:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_1

    sget-boolean v0, Lcom/tendcloud/tenddata/o;->x:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1335
    :cond_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->D(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 1337
    invoke-static {p0}, Lcom/tendcloud/tenddata/h;->eForInternal(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static u(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 9

    const-string v0, "scannable"

    const-string v1, "current"

    const-string v2, "connected"

    const-string v3, "available"

    const-string v4, "type"

    .line 653
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 656
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "wifi"

    .line 657
    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 658
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->d(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 659
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->i(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 660
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->y(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 661
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->z(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "configured"

    .line 662
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->x(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 663
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    :catchall_0
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "cellular"

    .line 671
    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 672
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->e(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 673
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->j(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 v2, 0x0

    .line 674
    invoke-static {p0, v2}, Lcom/tendcloud/tenddata/o;->a(Landroid/content/Context;Z)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 675
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->v(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {v6, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 676
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    nop

    .line 683
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    return-object v5
.end method

.method public static v(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 16

    const-string v0, "cdmaDbm"

    .line 762
    sget-boolean v1, Lcom/tendcloud/tenddata/ab;->Q:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    if-nez p0, :cond_2

    .line 766
    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 767
    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    move-object/from16 v1, p0

    .line 772
    :goto_0
    sget-object v3, Lcom/tendcloud/tenddata/o;->n:Lorg/json/JSONArray;

    if-eqz v3, :cond_4

    .line 773
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-gtz v3, :cond_3

    sget-boolean v3, Lcom/tendcloud/tenddata/o;->l:Z

    if-eqz v3, :cond_4

    .line 774
    :cond_3
    sget-object v0, Lcom/tendcloud/tenddata/o;->n:Lorg/json/JSONArray;

    return-object v0

    :cond_4
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 777
    invoke-static {v1, v3}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 778
    invoke-static {v1, v3}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    return-object v2

    .line 783
    :cond_5
    :try_start_0
    sget-object v3, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_6

    .line 784
    invoke-static {v1}, Lcom/tendcloud/tenddata/o;->a(Landroid/content/Context;)V

    .line 787
    :cond_6
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/16 v3, 0x11

    .line 791
    invoke-static {v3}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v4, "type"

    const-string v5, "asuLevel"

    const-string v6, "basestationId"

    const-string v7, "systemId"

    if-eqz v3, :cond_11

    .line 792
    :try_start_1
    sget-object v3, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 794
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/CellInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 796
    :try_start_2
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "registered"

    .line 797
    invoke-virtual {v8}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v10, "ts"

    .line 798
    invoke-virtual {v8}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 803
    instance-of v10, v8, Landroid/telephony/CellInfoGsm;

    if-eqz v10, :cond_7

    const-string v10, "GSM"

    .line 805
    check-cast v8, Landroid/telephony/CellInfoGsm;

    .line 807
    invoke-virtual {v8}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v12

    .line 808
    invoke-virtual {v12}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v13

    .line 809
    invoke-virtual {v12}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v14

    .line 811
    invoke-virtual {v12}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v15

    .line 812
    invoke-virtual {v12}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v12

    .line 813
    invoke-virtual {v8}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v8

    move v11, v15

    const/4 v2, -0x1

    goto/16 :goto_3

    .line 814
    :cond_7
    instance-of v10, v8, Landroid/telephony/CellInfoCdma;

    if-eqz v10, :cond_8

    const-string v10, "CDMA"

    .line 816
    check-cast v8, Landroid/telephony/CellInfoCdma;

    .line 818
    invoke-virtual {v8}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v12

    .line 819
    invoke-virtual {v12}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v13

    .line 820
    invoke-virtual {v12}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v14

    .line 821
    invoke-virtual {v12}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v15

    .line 823
    invoke-virtual {v8}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v8

    .line 826
    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v2

    .line 825
    invoke-virtual {v9, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 828
    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v2

    .line 827
    invoke-virtual {v9, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "cdmaEcio"

    .line 830
    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v11

    .line 829
    invoke-virtual {v9, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "evdoDbm"

    .line 832
    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v11

    .line 831
    invoke-virtual {v9, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "evdoEcio"

    .line 834
    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoEcio()I

    move-result v11

    .line 833
    invoke-virtual {v9, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "evdoSnr"

    .line 836
    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result v11

    .line 835
    invoke-virtual {v9, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "location"

    .line 841
    invoke-virtual {v12}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v11

    .line 842
    invoke-virtual {v12}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v12

    .line 840
    invoke-static {v11, v12}, Lcom/tendcloud/tenddata/o;->a(II)Lorg/json/JSONObject;

    move-result-object v11

    .line 838
    invoke-virtual {v9, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    goto :goto_4

    .line 843
    :cond_8
    instance-of v2, v8, Landroid/telephony/CellInfoWcdma;

    if-eqz v2, :cond_9

    const-string v10, "WCDMA"

    .line 845
    check-cast v8, Landroid/telephony/CellInfoWcdma;

    .line 847
    invoke-virtual {v8}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    .line 848
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v13

    .line 849
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v14

    .line 850
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v15

    .line 851
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v11

    .line 852
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v12

    .line 853
    invoke-virtual {v8}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v8

    :goto_2
    const/4 v2, -0x1

    goto :goto_4

    .line 854
    :cond_9
    instance-of v2, v8, Landroid/telephony/CellInfoLte;

    if-eqz v2, :cond_a

    const-string v10, "LTE"

    .line 856
    check-cast v8, Landroid/telephony/CellInfoLte;

    .line 858
    invoke-virtual {v8}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    .line 859
    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v13

    .line 860
    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v14

    .line 861
    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v15

    .line 862
    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v11

    .line 863
    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v12

    .line 864
    invoke-virtual {v8}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v8

    goto :goto_2

    :cond_a
    const/4 v2, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    :goto_3
    const/4 v15, -0x1

    :goto_4
    if-eq v13, v2, :cond_b

    .line 868
    invoke-virtual {v9, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_b
    if-eq v14, v2, :cond_c

    const-string v13, "networkId"

    .line 871
    invoke-virtual {v9, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_c
    if-eq v15, v2, :cond_d

    .line 874
    invoke-virtual {v9, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_d
    if-eq v11, v2, :cond_e

    const-string v13, "mcc"

    .line 877
    invoke-virtual {v9, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_e
    if-eq v12, v2, :cond_f

    const-string v2, "mnc"

    .line 880
    invoke-virtual {v9, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_f
    if-eqz v8, :cond_10

    .line 884
    invoke-virtual {v8}, Landroid/telephony/CellSignalStrength;->getAsuLevel()I

    move-result v2

    .line 883
    invoke-virtual {v9, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "dbm"

    .line 885
    invoke-virtual {v8}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result v8

    invoke-virtual {v9, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 887
    :cond_10
    invoke-virtual {v9, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 888
    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_11
    const/4 v0, 0x5

    .line 896
    :try_start_3
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-boolean v0, Lcom/tendcloud/tenddata/y;->c:Z

    if-eqz v0, :cond_12

    .line 897
    sget-object v0, Lcom/tendcloud/tenddata/o;->c:Landroid/telephony/TelephonyManager;

    .line 898
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 900
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_1
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NeighboringCellInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 902
    :try_start_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 903
    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "netId"

    .line 904
    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 905
    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getPsc()I

    move-result v8

    invoke-virtual {v3, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 906
    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 910
    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getNetworkType()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 911
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :cond_12
    const/4 v0, 0x1

    .line 920
    :try_start_5
    sput-boolean v0, Lcom/tendcloud/tenddata/o;->l:Z

    const/16 v0, 0x14

    .line 921
    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/o;->a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/o;->n:Lorg/json/JSONArray;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-object v0

    :catchall_2
    const/4 v0, 0x0

    goto :goto_6

    :catchall_3
    move-object v0, v2

    :goto_6
    return-object v0
.end method

.method public static w(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 979
    sget-boolean v0, Lcom/tendcloud/tenddata/ab;->R:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    .line 984
    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "wifi"

    .line 987
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 988
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->i(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 989
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 995
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    :catchall_0
    :cond_1
    return-object v1
.end method

.method public static x(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 6

    .line 1019
    sget-boolean v0, Lcom/tendcloud/tenddata/ab;->R:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1022
    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/o;->s:Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    .line 1023
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_1

    sget-boolean v0, Lcom/tendcloud/tenddata/o;->p:Z

    if-eqz v0, :cond_2

    .line 1024
    :cond_1
    sget-object p0, Lcom/tendcloud/tenddata/o;->s:Lorg/json/JSONArray;

    return-object p0

    :cond_2
    :try_start_0
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    .line 1028
    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "wifi"

    .line 1031
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 1034
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 1039
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1040
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catchall_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1042
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "networkId"

    .line 1043
    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "priority"

    .line 1044
    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "name"

    .line 1045
    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "id"

    .line 1046
    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1047
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    .line 1054
    :try_start_2
    sput-boolean p0, Lcom/tendcloud/tenddata/o;->p:Z

    const/16 p0, 0x1e

    .line 1055
    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/o;->b(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object p0

    sput-object p0, Lcom/tendcloud/tenddata/o;->s:Lorg/json/JSONArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    :catchall_1
    :cond_4
    return-object v1
.end method

.method public static y(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 7

    const-string v0, "ip"

    .line 1100
    sget-boolean v1, Lcom/tendcloud/tenddata/ab;->R:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 1103
    :cond_0
    sget-object v1, Lcom/tendcloud/tenddata/o;->r:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_4

    sget-boolean v1, Lcom/tendcloud/tenddata/o;->o:Z

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    :try_start_0
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    .line 1107
    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "wifi"

    .line 1110
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 1111
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1112
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v3, "bssid"

    .line 1118
    invoke-static {v3}, Lcom/tendcloud/tenddata/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1119
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v5, "name"

    const-string v6, "ssid"

    .line 1121
    invoke-static {v6}, Lcom/tendcloud/tenddata/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "id"

    .line 1122
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "level"

    .line 1123
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "hidden"

    .line 1125
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getHiddenSSID()Z

    move-result v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1126
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "speed"

    .line 1127
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "networkId"

    .line 1128
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1130
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1132
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "dns1"

    .line 1133
    iget v5, p0, Landroid/net/DhcpInfo;->dns1:I

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "dns2"

    .line 1134
    iget v5, p0, Landroid/net/DhcpInfo;->dns2:I

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "gw"

    .line 1135
    iget v5, p0, Landroid/net/DhcpInfo;->gateway:I

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1136
    iget v3, p0, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "mask"

    .line 1137
    iget v3, p0, Landroid/net/DhcpInfo;->netmask:I

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "server"

    .line 1138
    iget v3, p0, Landroid/net/DhcpInfo;->serverAddress:I

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "leaseDuration"

    .line 1139
    iget p0, p0, Landroid/net/DhcpInfo;->leaseDuration:I

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "dhcp"

    .line 1142
    invoke-virtual {v4, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_2
    const/4 p0, 0x1

    .line 1149
    :try_start_2
    sput-boolean p0, Lcom/tendcloud/tenddata/o;->o:Z

    .line 1150
    sget-object p0, Lcom/tendcloud/tenddata/o;->r:Lorg/json/JSONArray;

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1151
    sget-object p0, Lcom/tendcloud/tenddata/o;->r:Lorg/json/JSONArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    :catchall_1
    :cond_3
    return-object v2

    .line 1104
    :cond_4
    :goto_0
    sget-object p0, Lcom/tendcloud/tenddata/o;->r:Lorg/json/JSONArray;

    return-object p0
.end method

.method public static declared-synchronized z(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 13

    const-class v0, Lcom/tendcloud/tenddata/o;

    monitor-enter v0

    .line 1191
    :try_start_0
    sget-boolean v1, Lcom/tendcloud/tenddata/y;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1192
    monitor-exit v0

    return-object v2

    .line 1194
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/tendcloud/tenddata/ab;->R:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v1, :cond_1

    .line 1195
    monitor-exit v0

    return-object v2

    .line 1197
    :cond_1
    :try_start_2
    sget-object v1, Lcom/tendcloud/tenddata/o;->t:Lorg/json/JSONArray;

    if-eqz v1, :cond_3

    .line 1198
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_2

    sget-boolean v1, Lcom/tendcloud/tenddata/o;->q:Z

    if-eqz v1, :cond_3

    .line 1199
    :cond_2
    sget-object p0, Lcom/tendcloud/tenddata/o;->t:Lorg/json/JSONArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    monitor-exit v0

    return-object p0

    :cond_3
    :try_start_3
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    .line 1203
    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1206
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1207
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_9

    .line 1208
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_4
    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    .line 1209
    invoke-static {p0, v3}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/tendcloud/tenddata/o;->u:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v3, :cond_5

    .line 1212
    :try_start_4
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1214
    sget-object v5, Lcom/tendcloud/tenddata/o;->v:Lcom/tendcloud/tenddata/o$b;

    invoke-virtual {p0, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1221
    :catchall_0
    :try_start_5
    sput-boolean v4, Lcom/tendcloud/tenddata/o;->u:Z

    .line 1223
    :cond_5
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 1224
    sget-object p0, Lcom/tendcloud/tenddata/o;->v:Lcom/tendcloud/tenddata/o$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/o$b;->await()V

    .line 1225
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    .line 1226
    sget-object v1, Lcom/tendcloud/tenddata/o;->v:Lcom/tendcloud/tenddata/o$b;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/o$b;->reset()V

    if-eqz p0, :cond_9

    .line 1231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1232
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catchall_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 1233
    iget v5, v3, Landroid/net/wifi/ScanResult;->level:I

    const/16 v6, -0x55

    if-ge v5, v6, :cond_6

    goto :goto_0

    .line 1236
    :cond_6
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    const-string v6, "id"

    .line 1238
    iget-object v7, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "name"

    .line 1239
    iget-object v7, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "level"

    .line 1240
    iget v7, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "freq"

    .line 1241
    iget v7, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 v6, 0x11

    .line 1243
    invoke-static {v6}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "ts"

    .line 1244
    iget-wide v7, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "scanTs"

    .line 1246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    iget-wide v9, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    add-long/2addr v7, v9

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1248
    :cond_7
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 1255
    :cond_8
    :try_start_7
    sput-boolean v4, Lcom/tendcloud/tenddata/o;->q:Z

    const/16 p0, 0x14

    .line 1256
    invoke-static {v1, p0}, Lcom/tendcloud/tenddata/o;->a(Ljava/util/ArrayList;I)Lorg/json/JSONArray;

    move-result-object p0

    sput-object p0, Lcom/tendcloud/tenddata/o;->t:Lorg/json/JSONArray;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1257
    monitor-exit v0

    return-object p0

    .line 1266
    :catchall_2
    :cond_9
    monitor-exit v0

    return-object v2

    :catchall_3
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method
