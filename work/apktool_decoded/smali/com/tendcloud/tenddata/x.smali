.class public Lcom/tendcloud/tenddata/x;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static a:Landroid/location/Location; = null

.field private static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    sget-boolean v1, Lcom/tendcloud/tenddata/ab;->Q:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 31
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/x;->f(Landroid/content/Context;)Landroid/location/Location;

    move-result-object p0

    .line 32
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 43
    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/x;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, ""

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 58
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 5

    .line 68
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 69
    sget-boolean v1, Lcom/tendcloud/tenddata/ab;->Q:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 73
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/x;->f(Landroid/content/Context;)Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 75
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "lat"

    .line 76
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "lng"

    .line 77
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "ts"

    .line 78
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/16 v2, 0x11

    .line 79
    invoke-static {v2}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "elapsed"

    .line 80
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 82
    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "altitude"

    .line 83
    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 85
    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "hAccuracy"

    .line 87
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 89
    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "bearing"

    .line 90
    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 92
    :cond_4
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "speed"

    .line 93
    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_5
    const-string v2, "provider"

    .line 95
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_6
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 5

    .line 110
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 112
    invoke-static {p0}, Lcom/tendcloud/tenddata/o;->A(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "type"

    if-lez v1, :cond_0

    .line 114
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "sim"

    .line 115
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "extra"

    .line 116
    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 119
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "account"

    .line 120
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    sget-object v1, Lcom/tendcloud/tenddata/ab;->s:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "accountId"

    .line 123
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    :cond_1
    invoke-static {}, Lcom/tendcloud/tenddata/i;->l()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    .line 129
    invoke-static {v2}, Lcom/tendcloud/tenddata/h;->dForInternal([Ljava/lang/String;)V

    .line 130
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "accountProp"

    .line 132
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    :cond_2
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 136
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 138
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez p0, :cond_4

    return-object v0

    :catchall_0
    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)[[Ljava/lang/Long;
    .locals 0

    const/4 p0, 0x3

    new-array p0, p0, [[Ljava/lang/Long;

    return-object p0
.end method

.method private static f(Landroid/content/Context;)Landroid/location/Location;
    .locals 4

    .line 154
    sget-boolean v0, Lcom/tendcloud/tenddata/x;->b:Z

    if-eqz v0, :cond_0

    .line 155
    sget-object p0, Lcom/tendcloud/tenddata/x;->a:Landroid/location/Location;

    return-object p0

    :cond_0
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 158
    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 159
    sput-boolean v0, Lcom/tendcloud/tenddata/x;->b:Z

    return-object v1

    .line 166
    :cond_1
    :try_start_0
    sget-object p0, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    const-string v2, "gps"

    .line 168
    invoke-virtual {p0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "network"

    .line 169
    invoke-virtual {p0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    const-string v2, "passive"

    .line 175
    invoke-virtual {p0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :catchall_0
    :cond_4
    sput-object v1, Lcom/tendcloud/tenddata/x;->a:Landroid/location/Location;

    .line 183
    sput-boolean v0, Lcom/tendcloud/tenddata/x;->b:Z

    return-object v1
.end method
