.class public Lcom/tendcloud/tenddata/di;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static c:Lcom/tendcloud/tenddata/cu;

.field private static d:Lcom/tendcloud/tenddata/cx;

.field private static e:Lcom/tendcloud/tenddata/db;

.field private static f:Lcom/tendcloud/tenddata/cy;

.field private static volatile h:Lcom/tendcloud/tenddata/di;


# instance fields
.field public a:Lorg/json/JSONObject;

.field public b:Lorg/json/JSONObject;

.field private g:Lcom/tendcloud/tenddata/df;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/tendcloud/tenddata/db;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/db;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/di;->e:Lcom/tendcloud/tenddata/db;

    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/tendcloud/tenddata/di;->f:Lcom/tendcloud/tenddata/cy;

    .line 181
    sput-object v0, Lcom/tendcloud/tenddata/di;->h:Lcom/tendcloud/tenddata/di;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/tendcloud/tenddata/di;->a:Lorg/json/JSONObject;

    .line 36
    iput-object v0, p0, Lcom/tendcloud/tenddata/di;->b:Lorg/json/JSONObject;

    .line 37
    iput-object v0, p0, Lcom/tendcloud/tenddata/di;->g:Lcom/tendcloud/tenddata/df;

    return-void
.end method

.method public static b()Lcom/tendcloud/tenddata/di;
    .locals 2

    .line 197
    sget-object v0, Lcom/tendcloud/tenddata/di;->h:Lcom/tendcloud/tenddata/di;

    if-nez v0, :cond_1

    .line 198
    const-class v0, Lcom/tendcloud/tenddata/di;

    monitor-enter v0

    .line 199
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/di;->h:Lcom/tendcloud/tenddata/di;

    if-nez v1, :cond_0

    .line 200
    new-instance v1, Lcom/tendcloud/tenddata/di;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/di;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/di;->h:Lcom/tendcloud/tenddata/di;

    .line 202
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 204
    :cond_1
    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/di;->h:Lcom/tendcloud/tenddata/di;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/tendcloud/tenddata/ct;Z)Lorg/json/JSONObject;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 39
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/di;->a(Lcom/tendcloud/tenddata/ct;ZLcom/tendcloud/tenddata/a;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/tendcloud/tenddata/ct;ZLcom/tendcloud/tenddata/a;)Lorg/json/JSONObject;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 43
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tendcloud/tenddata/di;->a(Lcom/tendcloud/tenddata/ct;ZLcom/tendcloud/tenddata/a;Landroid/util/Pair;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/tendcloud/tenddata/ct;ZLcom/tendcloud/tenddata/a;Landroid/util/Pair;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tendcloud/tenddata/ct;",
            "Z",
            "Lcom/tendcloud/tenddata/a;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_a

    .line 47
    :try_start_0
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/ct;->b()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 51
    :cond_0
    const-class v0, Landroid/util/EventLogTags;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 52
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 54
    :try_start_2
    invoke-static {}, Lcom/tendcloud/tenddata/bh;->a()Lcom/tendcloud/tenddata/bh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/bh;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/n;->getFileLock(Ljava/lang/String;)V

    .line 55
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/tendcloud/tenddata/di;->a:Lorg/json/JSONObject;

    .line 56
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/tendcloud/tenddata/di;->b:Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 59
    :try_start_3
    sget-object v2, Lcom/tendcloud/tenddata/di;->c:Lcom/tendcloud/tenddata/cu;

    if-nez v2, :cond_1

    .line 60
    invoke-static {}, Lcom/tendcloud/tenddata/cu;->a()Lcom/tendcloud/tenddata/cu;

    move-result-object v2

    sput-object v2, Lcom/tendcloud/tenddata/di;->c:Lcom/tendcloud/tenddata/cu;

    .line 61
    sget-object v2, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 62
    sget-object v3, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/tendcloud/tenddata/dh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    sget-object v3, Lcom/tendcloud/tenddata/di;->c:Lcom/tendcloud/tenddata/cu;

    invoke-virtual {v3, v2}, Lcom/tendcloud/tenddata/cu;->setUniqueId(Ljava/lang/String;)V

    .line 65
    :cond_1
    sget-object v2, Lcom/tendcloud/tenddata/di;->c:Lcom/tendcloud/tenddata/cu;

    invoke-virtual {v2, p3}, Lcom/tendcloud/tenddata/cu;->setSubmitAppId(Lcom/tendcloud/tenddata/a;)V

    .line 66
    sget-object v2, Lcom/tendcloud/tenddata/di;->c:Lcom/tendcloud/tenddata/cu;

    invoke-virtual {v2, p3}, Lcom/tendcloud/tenddata/cu;->setSubmitChannelId(Lcom/tendcloud/tenddata/a;)V

    .line 68
    sget-object p3, Lcom/tendcloud/tenddata/di;->e:Lcom/tendcloud/tenddata/db;

    if-nez p3, :cond_2

    .line 69
    new-instance p3, Lcom/tendcloud/tenddata/db;

    invoke-direct {p3}, Lcom/tendcloud/tenddata/db;-><init>()V

    sput-object p3, Lcom/tendcloud/tenddata/di;->e:Lcom/tendcloud/tenddata/db;

    .line 71
    :cond_2
    sget-object p3, Lcom/tendcloud/tenddata/db;->a:Lcom/tendcloud/tenddata/da;

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/da;->a()V

    .line 72
    sget-object p3, Lcom/tendcloud/tenddata/di;->e:Lcom/tendcloud/tenddata/db;

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/db;->c()Lcom/tendcloud/tenddata/cz;

    move-result-object p3

    sget-object v2, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tendcloud/tenddata/o;->B(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p3, v2}, Lcom/tendcloud/tenddata/cz;->setSlots(I)V

    .line 74
    sget-object p3, Lcom/tendcloud/tenddata/di;->d:Lcom/tendcloud/tenddata/cx;

    if-nez p3, :cond_3

    .line 75
    new-instance p3, Lcom/tendcloud/tenddata/cx;

    invoke-direct {p3}, Lcom/tendcloud/tenddata/cx;-><init>()V

    sput-object p3, Lcom/tendcloud/tenddata/di;->d:Lcom/tendcloud/tenddata/cx;

    .line 77
    :cond_3
    sget-object p3, Lcom/tendcloud/tenddata/di;->f:Lcom/tendcloud/tenddata/cy;

    if-nez p3, :cond_4

    .line 78
    new-instance p3, Lcom/tendcloud/tenddata/cy;

    invoke-direct {p3}, Lcom/tendcloud/tenddata/cy;-><init>()V

    sput-object p3, Lcom/tendcloud/tenddata/di;->f:Lcom/tendcloud/tenddata/cy;

    .line 79
    invoke-virtual {p3}, Lcom/tendcloud/tenddata/cy;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    :catchall_0
    :cond_4
    :try_start_4
    sget-object p3, Lcom/tendcloud/tenddata/di;->f:Lcom/tendcloud/tenddata/cy;

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/cy;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    const-string p3, "version"

    const-string v2, "2.0"

    .line 88
    invoke-virtual {v1, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "action"

    .line 90
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/ct;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "device"

    .line 92
    sget-object p3, Lcom/tendcloud/tenddata/di;->e:Lcom/tendcloud/tenddata/db;

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/db;->b()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "app"

    .line 94
    sget-object p3, Lcom/tendcloud/tenddata/di;->c:Lcom/tendcloud/tenddata/cu;

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/cu;->b()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sdk"

    .line 96
    sget-object p3, Lcom/tendcloud/tenddata/di;->d:Lcom/tendcloud/tenddata/cx;

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/cx;->b()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "appContext"

    .line 98
    invoke-static {}, Lcom/tendcloud/tenddata/cr;->a()Lcom/tendcloud/tenddata/cr;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/cr;->b()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "user"

    .line 100
    sget-object p3, Lcom/tendcloud/tenddata/di;->f:Lcom/tendcloud/tenddata/cy;

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/cy;->b()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sharingFilterPermission"

    .line 102
    sget-object p3, Lcom/tendcloud/tenddata/ab;->v:Lcom/tendcloud/tenddata/TalkingDataSharingFilter;

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/TalkingDataSharingFilter;->ordinal()I

    move-result p3

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string p1, "ts"

    .line 106
    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    .line 111
    invoke-static {p3}, Lcom/tendcloud/tenddata/dh;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/tendcloud/tenddata/di;->e:Lcom/tendcloud/tenddata/db;

    .line 112
    invoke-virtual {p3}, Lcom/tendcloud/tenddata/db;->a()Lcom/tendcloud/tenddata/dc;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/dc;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/tendcloud/tenddata/di;->e:Lcom/tendcloud/tenddata/db;

    .line 113
    invoke-virtual {p3}, Lcom/tendcloud/tenddata/db;->a()Lcom/tendcloud/tenddata/dc;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/dc;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "fingerprint"

    .line 115
    invoke-virtual {v1, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_7

    .line 123
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 124
    new-instance p2, Lcom/tendcloud/tenddata/df;

    sget-object p3, Lcom/tendcloud/tenddata/dg;->a:Lcom/tendcloud/tenddata/dg;

    invoke-direct {p2, p3}, Lcom/tendcloud/tenddata/df;-><init>(Lcom/tendcloud/tenddata/dg;)V

    .line 125
    invoke-virtual {p2}, Lcom/tendcloud/tenddata/df;->b()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 127
    iget-object p2, p0, Lcom/tendcloud/tenddata/di;->g:Lcom/tendcloud/tenddata/df;

    if-nez p2, :cond_5

    .line 128
    new-instance p2, Lcom/tendcloud/tenddata/df;

    sget-object p3, Lcom/tendcloud/tenddata/dg;->b:Lcom/tendcloud/tenddata/dg;

    invoke-direct {p2, p3}, Lcom/tendcloud/tenddata/df;-><init>(Lcom/tendcloud/tenddata/dg;)V

    iput-object p2, p0, Lcom/tendcloud/tenddata/di;->g:Lcom/tendcloud/tenddata/df;

    .line 130
    :cond_5
    iget-object p2, p0, Lcom/tendcloud/tenddata/di;->g:Lcom/tendcloud/tenddata/df;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/df;->b()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 134
    :try_start_6
    sget-object p2, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string p3, "android.permission.BLUETOOTH"

    invoke-static {p2, p3}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 136
    new-instance p2, Lcom/tendcloud/tenddata/df;

    sget-object p3, Lcom/tendcloud/tenddata/dg;->c:Lcom/tendcloud/tenddata/dg;

    invoke-direct {p2, p3}, Lcom/tendcloud/tenddata/df;-><init>(Lcom/tendcloud/tenddata/dg;)V

    .line 137
    invoke-virtual {p2}, Lcom/tendcloud/tenddata/df;->b()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    :cond_6
    :try_start_7
    const-string p2, "networks"

    .line 143
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    invoke-static {}, Lcom/tendcloud/tenddata/bh;->a()Lcom/tendcloud/tenddata/bh;

    move-result-object p1

    const-string p2, "Location"

    invoke-virtual {p1, p2}, Lcom/tendcloud/tenddata/bh;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 147
    new-instance p2, Lcom/tendcloud/tenddata/cv;

    invoke-direct {p2}, Lcom/tendcloud/tenddata/cv;-><init>()V

    const-string p3, "locations"

    .line 148
    invoke-virtual {p2}, Lcom/tendcloud/tenddata/cv;->b()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_7

    const-string p2, "Location"

    .line 150
    invoke-virtual {p0, p2, p1}, Lcom/tendcloud/tenddata/di;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_7
    if-eqz p4, :cond_8

    .line 154
    iget-object p1, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_8

    .line 155
    iget-object p1, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lorg/json/JSONArray;

    invoke-virtual {p0, p1, p2}, Lcom/tendcloud/tenddata/di;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 158
    :cond_8
    sget-boolean p1, Lcom/tendcloud/tenddata/ab;->q:Z

    if-nez p1, :cond_9

    const-string p1, "cloudcontrol"

    .line 159
    iget-object p2, p0, Lcom/tendcloud/tenddata/di;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    :cond_9
    invoke-static {}, Lcom/tendcloud/tenddata/bh;->a()Lcom/tendcloud/tenddata/bh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/bh;->c()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 168
    :catchall_2
    :try_start_8
    invoke-static {}, Lcom/tendcloud/tenddata/bh;->a()Lcom/tendcloud/tenddata/bh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/bh;->b()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/tendcloud/tenddata/n;->releaseFileLock(Ljava/lang/String;)V

    goto :goto_1

    :catchall_3
    invoke-static {}, Lcom/tendcloud/tenddata/bh;->a()Lcom/tendcloud/tenddata/bh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/bh;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 171
    :goto_1
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    monitor-exit p0

    return-object v1

    :catchall_4
    move-exception p1

    .line 172
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_a
    :goto_2
    const/4 p1, 0x0

    .line 49
    monitor-exit p0

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 176
    sget-object v0, Lcom/tendcloud/tenddata/di;->f:Lcom/tendcloud/tenddata/cy;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/cy;->d()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1

    .line 185
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/ab;->q:Z

    if-eqz v0, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/di;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/tendcloud/tenddata/di;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
