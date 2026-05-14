.class public Lcom/tendcloud/tenddata/br;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/br;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 253
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/br;->a()Lcom/tendcloud/tenddata/br;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/z;->register(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/br;
    .locals 2

    .line 235
    sget-object v0, Lcom/tendcloud/tenddata/br;->a:Lcom/tendcloud/tenddata/br;

    if-nez v0, :cond_1

    .line 236
    const-class v0, Lcom/tendcloud/tenddata/br;

    monitor-enter v0

    .line 237
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/br;->a:Lcom/tendcloud/tenddata/br;

    if-nez v1, :cond_0

    .line 238
    new-instance v1, Lcom/tendcloud/tenddata/br;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/br;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/br;->a:Lcom/tendcloud/tenddata/br;

    .line 240
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 242
    :cond_1
    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/br;->a:Lcom/tendcloud/tenddata/br;

    return-object v0
.end method

.method private a(JLcom/tendcloud/tenddata/a;)V
    .locals 8

    const-string v0, "["

    .line 137
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "][Session] - New session!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "][Session] - Id: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 140
    invoke-static {p3}, Lcom/tendcloud/tenddata/i;->f(Lcom/tendcloud/tenddata/a;)J

    move-result-wide v2

    sub-long v4, p1, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    move-wide v4, v6

    .line 144
    :cond_0
    invoke-static {v1, p3}, Lcom/tendcloud/tenddata/i;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    .line 145
    invoke-static {p1, p2, p3}, Lcom/tendcloud/tenddata/i;->a(JLcom/tendcloud/tenddata/a;)V

    .line 148
    invoke-static {v1, p3}, Lcom/tendcloud/tenddata/i;->b(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    .line 151
    invoke-static {}, Lcom/tendcloud/tenddata/cr;->a()Lcom/tendcloud/tenddata/cr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/cr;->setSessionId(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/tendcloud/tenddata/cr;->a()Lcom/tendcloud/tenddata/cr;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tendcloud/tenddata/cr;->setSessionStartTime(J)V

    .line 154
    new-instance p1, Lcom/tendcloud/tenddata/bx;

    invoke-direct {p1}, Lcom/tendcloud/tenddata/bx;-><init>()V

    const-string p2, "session"

    .line 155
    iput-object p2, p1, Lcom/tendcloud/tenddata/bx;->b:Ljava/lang/String;

    const-string p2, "begin"

    .line 156
    iput-object p2, p1, Lcom/tendcloud/tenddata/bx;->c:Ljava/lang/String;

    .line 157
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    const-string v0, "sessionId"

    .line 158
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "interval"

    const-wide/16 v1, 0x3e8

    .line 159
    div-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iput-object p2, p1, Lcom/tendcloud/tenddata/bx;->d:Ljava/util/Map;

    .line 162
    iput-object p3, p1, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    .line 163
    new-instance p2, Lcom/tendcloud/tenddata/br$2;

    invoke-direct {p2, p0, p3}, Lcom/tendcloud/tenddata/br$2;-><init>(Lcom/tendcloud/tenddata/br;Lcom/tendcloud/tenddata/a;)V

    iput-object p2, p1, Lcom/tendcloud/tenddata/bx;->f:Lcom/tendcloud/tenddata/cq;

    .line 183
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V

    .line 195
    sget-object p1, Lcom/tendcloud/tenddata/ab;->Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private a(Lcom/tendcloud/tenddata/a;)V
    .locals 8

    .line 74
    :try_start_0
    invoke-static {p1}, Lcom/tendcloud/tenddata/i;->a(Lcom/tendcloud/tenddata/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 76
    invoke-static {p1}, Lcom/tendcloud/tenddata/i;->c(Lcom/tendcloud/tenddata/a;)J

    move-result-wide v1

    .line 77
    invoke-static {p1}, Lcom/tendcloud/tenddata/i;->f(Lcom/tendcloud/tenddata/a;)J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 79
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "APP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "APP_SQL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TRACKING"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SDK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-wide/16 v5, 0x1f4

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    const-wide/16 v3, -0x3e8

    .line 85
    :cond_1
    new-instance v5, Lcom/tendcloud/tenddata/bx;

    invoke-direct {v5}, Lcom/tendcloud/tenddata/bx;-><init>()V

    const-string v6, "session"

    .line 86
    iput-object v6, v5, Lcom/tendcloud/tenddata/bx;->b:Ljava/lang/String;

    const-string v6, "end"

    .line 87
    iput-object v6, v5, Lcom/tendcloud/tenddata/bx;->c:Ljava/lang/String;

    .line 89
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    const-string v7, "sessionId"

    .line 90
    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "start"

    .line 91
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "duration"

    const-wide/16 v1, 0x3e8

    .line 92
    div-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iput-object v6, v5, Lcom/tendcloud/tenddata/bx;->d:Ljava/util/Map;

    .line 94
    iput-object p1, v5, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    .line 95
    new-instance v0, Lcom/tendcloud/tenddata/br$1;

    invoke-direct {v0, p0, p1}, Lcom/tendcloud/tenddata/br$1;-><init>(Lcom/tendcloud/tenddata/br;Lcom/tendcloud/tenddata/a;)V

    iput-object v0, v5, Lcom/tendcloud/tenddata/bx;->f:Lcom/tendcloud/tenddata/cq;

    .line 114
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 125
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/i;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/br;Lcom/tendcloud/tenddata/a;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/br;->b(Lcom/tendcloud/tenddata/a;)V

    return-void
.end method

.method private final a(Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "service"

    .line 44
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/a;

    const-string v1, "occurTime"

    .line 45
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 46
    invoke-static {v0}, Lcom/tendcloud/tenddata/i;->c(Lcom/tendcloud/tenddata/a;)J

    move-result-wide v3

    .line 47
    invoke-static {v0}, Lcom/tendcloud/tenddata/i;->f(Lcom/tendcloud/tenddata/a;)J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, v5, v3

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    sub-long v5, v1, v5

    const-wide/16 v7, 0x7530

    const-string p1, ""

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    .line 51
    :try_start_1
    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/br;->a(Lcom/tendcloud/tenddata/a;)V

    .line 52
    invoke-direct {p0, v1, v2, v0}, Lcom/tendcloud/tenddata/br;->a(JLcom/tendcloud/tenddata/a;)V

    .line 53
    invoke-static {p1}, Lcom/tendcloud/tenddata/i;->setLastActivity(Ljava/lang/String;)V

    goto :goto_1

    .line 55
    :cond_1
    invoke-static {v0}, Lcom/tendcloud/tenddata/i;->a(Lcom/tendcloud/tenddata/a;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 57
    invoke-direct {p0, v1, v2, v0}, Lcom/tendcloud/tenddata/br;->a(JLcom/tendcloud/tenddata/a;)V

    .line 58
    invoke-static {p1}, Lcom/tendcloud/tenddata/i;->setLastActivity(Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "][Session] - Same session as before! Session id is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/tendcloud/tenddata/cr;->a()Lcom/tendcloud/tenddata/cr;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/tendcloud/tenddata/cr;->setSessionId(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/tendcloud/tenddata/cr;->a()Lcom/tendcloud/tenddata/cr;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/tendcloud/tenddata/cr;->setSessionStartTime(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method

.method private b(Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 226
    new-instance v0, Lcom/tendcloud/tenddata/bw;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/bw;-><init>()V

    .line 227
    iput-object p1, v0, Lcom/tendcloud/tenddata/bw;->a:Lcom/tendcloud/tenddata/a;

    .line 228
    sget-object p1, Lcom/tendcloud/tenddata/bw$a;->IMMEDIATELY:Lcom/tendcloud/tenddata/bw$a;

    iput-object p1, v0, Lcom/tendcloud/tenddata/bw;->b:Lcom/tendcloud/tenddata/bw$a;

    .line 229
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private final b(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pageName"

    :try_start_0
    const-string v1, "service"

    .line 205
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/a;

    const-string v2, "occurTime"

    .line 206
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "sessionEnd"

    .line 207
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    invoke-direct {p0, v1}, Lcom/tendcloud/tenddata/br;->a(Lcom/tendcloud/tenddata/a;)V

    return-void

    .line 211
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-static {p1}, Lcom/tendcloud/tenddata/i;->setLastActivity(Ljava/lang/String;)V

    .line 216
    :cond_1
    invoke-direct {p0, v1}, Lcom/tendcloud/tenddata/br;->b(Lcom/tendcloud/tenddata/a;)V

    .line 217
    invoke-static {v2, v3, v1}, Lcom/tendcloud/tenddata/i;->c(JLcom/tendcloud/tenddata/a;)V

    const/4 p1, 0x0

    .line 218
    sput-object p1, Lcom/tendcloud/tenddata/ab;->J:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public final onTDEBEventSession(Lcom/tendcloud/tenddata/zz$a;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 24
    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "apiType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 30
    iget-object p1, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/br;->a(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 33
    iget-object p1, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/br;->b(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method
