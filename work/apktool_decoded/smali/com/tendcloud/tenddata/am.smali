.class final Lcom/tendcloud/tenddata/am;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/am$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x3a98

.field private static final b:I = 0x3a98


# instance fields
.field private c:Ljava/net/URL;

.field private d:Lcom/tendcloud/tenddata/aq;

.field private e:Lcom/tendcloud/tenddata/ap;

.field private f:Lcom/tendcloud/tenddata/an;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I


# direct methods
.method private constructor <init>(Ljava/net/URL;Lcom/tendcloud/tenddata/aq;Lcom/tendcloud/tenddata/ap;Lcom/tendcloud/tenddata/an;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/net/URL;

    .line 46
    iput-object p2, p0, Lcom/tendcloud/tenddata/am;->d:Lcom/tendcloud/tenddata/aq;

    .line 47
    iput-object p3, p0, Lcom/tendcloud/tenddata/am;->e:Lcom/tendcloud/tenddata/ap;

    .line 48
    iput-object p4, p0, Lcom/tendcloud/tenddata/am;->f:Lcom/tendcloud/tenddata/an;

    .line 49
    iput p5, p0, Lcom/tendcloud/tenddata/am;->j:I

    .line 50
    iput p6, p0, Lcom/tendcloud/tenddata/am;->k:I

    .line 51
    iput-object p7, p0, Lcom/tendcloud/tenddata/am;->g:Ljava/lang/String;

    .line 52
    iput-object p8, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    .line 53
    iput-object p9, p0, Lcom/tendcloud/tenddata/am;->i:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/net/URL;Lcom/tendcloud/tenddata/aq;Lcom/tendcloud/tenddata/ap;Lcom/tendcloud/tenddata/an;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/am$1;)V
    .locals 0

    .line 16
    invoke-direct/range {p0 .. p9}, Lcom/tendcloud/tenddata/am;-><init>(Ljava/net/URL;Lcom/tendcloud/tenddata/aq;Lcom/tendcloud/tenddata/ap;Lcom/tendcloud/tenddata/an;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/tendcloud/tenddata/aq;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->d:Lcom/tendcloud/tenddata/aq;

    return-object v0
.end method

.method a(Lcom/tendcloud/tenddata/a;)Lcom/tendcloud/tenddata/ar;
    .locals 7

    const-string v0, "TD_app_pefercen_profile"

    const-string v1, ""

    .line 77
    invoke-static {v1}, Lcom/tendcloud/tenddata/ar;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/ar;

    move-result-object v1

    const/4 v2, 0x0

    .line 80
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/tendcloud/tenddata/am;->a(Z)Lcom/tendcloud/tenddata/ar;

    move-result-object v1

    .line 81
    iget-object v3, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/net/URL;

    .line 82
    iget-object v4, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object p1

    const-string v5, "SDK"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/ar;->b()I

    move-result p1

    invoke-static {}, Lcom/tendcloud/tenddata/ar;->a()I

    move-result v5

    if-ne p1, v5, :cond_2

    .line 84
    invoke-static {v4}, Lcom/tendcloud/tenddata/ai;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 85
    :goto_0
    sget-object v5, Lcom/tendcloud/tenddata/ai;->a:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    if-gt p1, v5, :cond_2

    .line 86
    invoke-static {}, Lcom/tendcloud/tenddata/ai;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    .line 87
    invoke-static {v3, v5}, Lcom/tendcloud/tenddata/ai;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    iput-object v5, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/net/URL;

    .line 88
    invoke-virtual {v3, v5}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 91
    :cond_0
    invoke-virtual {p0, v2}, Lcom/tendcloud/tenddata/am;->a(Z)Lcom/tendcloud/tenddata/ar;

    move-result-object v1

    .line 92
    iget-object v5, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {v5}, Lcom/tendcloud/tenddata/ai;->a(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/ar;->b()I

    move-result v5

    invoke-static {}, Lcom/tendcloud/tenddata/ar;->a()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 94
    sget-object p1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "TD_sdk_last_send_url"

    iget-object v3, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v2, v3}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sget-object p1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "TD_sdk_last_send_host"

    iget-object v3, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 101
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tendcloud/tenddata/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/ar;->b()I

    move-result p1

    invoke-static {}, Lcom/tendcloud/tenddata/ar;->a()I

    move-result v0

    const/4 v2, 0x2

    if-eq p1, v0, :cond_3

    .line 103
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/tendcloud/tenddata/ak;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/tendcloud/tenddata/ak;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/tendcloud/tenddata/ak;->a(Ljava/lang/String;)V

    return-object v1

    .line 107
    :cond_3
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/tendcloud/tenddata/ak;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    .line 108
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/net/URL;

    iget-object v4, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/tendcloud/tenddata/ak;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/tendcloud/tenddata/ak;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/net/URL;

    .line 112
    invoke-virtual {p0, v3}, Lcom/tendcloud/tenddata/am;->a(Z)Lcom/tendcloud/tenddata/ar;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/ar;->b()I

    move-result p1

    invoke-static {}, Lcom/tendcloud/tenddata/ar;->a()I

    move-result v3

    if-ne p1, v3, :cond_8

    .line 114
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v3, v2}, Lcom/tendcloud/tenddata/ak;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 117
    :cond_4
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/tendcloud/tenddata/ak;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 118
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/net/URL;

    iget-object v4, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/tendcloud/tenddata/ak;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/tendcloud/tenddata/ak;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/net/URL;

    .line 122
    invoke-virtual {p0, v3}, Lcom/tendcloud/tenddata/am;->a(Z)Lcom/tendcloud/tenddata/ar;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/ar;->b()I

    move-result p1

    invoke-static {}, Lcom/tendcloud/tenddata/ar;->a()I

    move-result v4

    if-eq p1, v4, :cond_5

    .line 124
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/tendcloud/tenddata/ak;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v2}, Lcom/tendcloud/tenddata/ak;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/tendcloud/tenddata/ak;->a(Ljava/lang/String;)V

    .line 130
    :cond_5
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/ar;->b()I

    move-result p1

    invoke-static {}, Lcom/tendcloud/tenddata/ar;->a()I

    move-result v4

    if-ne p1, v4, :cond_6

    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    .line 131
    invoke-static {p1, v0}, Lcom/tendcloud/tenddata/ak;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 132
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/net/URL;

    iget-object v4, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/tendcloud/tenddata/ak;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/tendcloud/tenddata/ak;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/net/URL;

    .line 136
    invoke-virtual {p0, v3}, Lcom/tendcloud/tenddata/am;->a(Z)Lcom/tendcloud/tenddata/ar;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/ar;->b()I

    move-result p1

    invoke-static {}, Lcom/tendcloud/tenddata/ar;->a()I

    move-result v4

    if-eq p1, v4, :cond_6

    .line 138
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tendcloud/tenddata/ak;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v2}, Lcom/tendcloud/tenddata/ak;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    :cond_6
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/ar;->b()I

    move-result p1

    invoke-static {}, Lcom/tendcloud/tenddata/ar;->a()I

    move-result v4

    if-ne p1, v4, :cond_7

    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    const/4 v4, 0x4

    .line 145
    invoke-static {p1, v4}, Lcom/tendcloud/tenddata/ak;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 146
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/net/URL;

    iget-object v5, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/tendcloud/tenddata/ak;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/tendcloud/tenddata/ak;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/net/URL;

    .line 150
    invoke-virtual {p0, v3}, Lcom/tendcloud/tenddata/am;->a(Z)Lcom/tendcloud/tenddata/ar;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/ar;->b()I

    move-result p1

    invoke-static {}, Lcom/tendcloud/tenddata/ar;->a()I

    move-result v5

    if-eq p1, v5, :cond_7

    .line 152
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/tendcloud/tenddata/ak;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v2}, Lcom/tendcloud/tenddata/ak;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    :cond_7
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/ar;->b()I

    move-result p1

    invoke-static {}, Lcom/tendcloud/tenddata/ar;->a()I

    move-result v2

    if-ne p1, v2, :cond_8

    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/tendcloud/tenddata/aj;->b(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/tendcloud/tenddata/aj;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 158
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/tendcloud/tenddata/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 160
    iget-object v2, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/net/URL;

    invoke-static {v2, p1}, Lcom/tendcloud/tenddata/ak;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    iput-object v2, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/net/URL;

    .line 161
    iget-object v2, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/tendcloud/tenddata/aj;->updateTimeStamp(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, v3}, Lcom/tendcloud/tenddata/am;->a(Z)Lcom/tendcloud/tenddata/ar;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/ar;->b()I

    move-result v2

    invoke-static {}, Lcom/tendcloud/tenddata/ar;->a()I

    move-result v3

    if-eq v2, v3, :cond_8

    .line 167
    iget-object v2, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/tendcloud/tenddata/ak;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_8
    :goto_2
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/ar;->b()I

    move-result p1

    invoke-static {}, Lcom/tendcloud/tenddata/ar;->a()I

    move-result v2

    if-ne p1, v2, :cond_9

    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/tendcloud/tenddata/aj;->b(Ljava/lang/String;)I

    move-result p1

    if-ge p1, v0, :cond_9

    .line 173
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/tendcloud/tenddata/aj;->updateFailureCountWithHost(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_9
    return-object v1
.end method

.method a(Z)Lcom/tendcloud/tenddata/ar;
    .locals 7

    const-string v0, "Host"

    const/4 v1, 0x0

    .line 208
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 209
    iget-object v4, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x3a98

    .line 210
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 211
    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 213
    iget-object v1, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/net/URL;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "https://"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    sget-object v1, Lcom/tendcloud/tenddata/ah;->a:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 216
    invoke-static {v4}, Lcom/tendcloud/tenddata/ah;->setHostNameVerifyAllowAll(Ljava/net/URLConnection;)V

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 220
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->g:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/tendcloud/tenddata/ah;->a(Ljava/net/URLConnection;Ljava/lang/String;)V

    .line 222
    :cond_1
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 223
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v4, v0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-virtual {v4, v0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_3
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->d:Lcom/tendcloud/tenddata/aq;

    if-eqz p1, :cond_4

    .line 227
    invoke-virtual {p1, v4}, Lcom/tendcloud/tenddata/aq;->a(Ljava/net/HttpURLConnection;)V

    .line 230
    :cond_4
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->e:Lcom/tendcloud/tenddata/ap;

    if-eqz p1, :cond_5

    .line 231
    invoke-virtual {p1, v4}, Lcom/tendcloud/tenddata/ap;->a(Ljava/net/HttpURLConnection;)V

    .line 233
    :cond_5
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->f:Lcom/tendcloud/tenddata/an;

    if-eqz p1, :cond_6

    .line 234
    invoke-virtual {p1, v4}, Lcom/tendcloud/tenddata/an;->a(Ljava/net/HttpURLConnection;)V

    .line 240
    :cond_6
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 242
    iget-object p1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->f:Lcom/tendcloud/tenddata/an;

    invoke-static {p1, v4, v2, v3, v0}, Lcom/tendcloud/tenddata/ar;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;JLcom/tendcloud/tenddata/an;)Lcom/tendcloud/tenddata/ar;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_7

    .line 250
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 247
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/ar;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/ar;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_7

    .line 250
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    :goto_2
    return-object p1

    :catchall_2
    move-exception p1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw p1
.end method

.method b()Lcom/tendcloud/tenddata/ar;
    .locals 3

    const-string v0, ""

    .line 183
    invoke-static {v0}, Lcom/tendcloud/tenddata/ar;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/ar;

    move-result-object v0

    const/4 v1, 0x0

    .line 185
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/tendcloud/tenddata/am;->a(Z)Lcom/tendcloud/tenddata/ar;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/ar;->b()I

    move-result v1

    invoke-static {}, Lcom/tendcloud/tenddata/ar;->a()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 187
    iget-object v1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/net/URL;

    invoke-static {v2, v1}, Lcom/tendcloud/tenddata/ak;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/net/URL;

    const/4 v1, 0x1

    .line 193
    invoke-virtual {p0, v1}, Lcom/tendcloud/tenddata/am;->a(Z)Lcom/tendcloud/tenddata/ar;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tendcloud/tenddata/am;->d:Lcom/tendcloud/tenddata/aq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n headers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tendcloud/tenddata/am;->e:Lcom/tendcloud/tenddata/ap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n content length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tendcloud/tenddata/am;->f:Lcom/tendcloud/tenddata/an;

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/an;->a()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n content Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tendcloud/tenddata/am;->f:Lcom/tendcloud/tenddata/an;

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/an;->b()Lcom/tendcloud/tenddata/an$a;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n host: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tendcloud/tenddata/am;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n ip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tendcloud/tenddata/am;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n connectionTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tendcloud/tenddata/am;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n readTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tendcloud/tenddata/am;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n cert:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tendcloud/tenddata/am;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
