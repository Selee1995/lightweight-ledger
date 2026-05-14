.class public Lcom/tendcloud/tenddata/bi;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/bi$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/bi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/bi;->a()Lcom/tendcloud/tenddata/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/z;->register(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/tendcloud/tenddata/bi;->b()V

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/bi;
    .locals 2

    .line 25
    sget-object v0, Lcom/tendcloud/tenddata/bi;->a:Lcom/tendcloud/tenddata/bi;

    if-nez v0, :cond_1

    .line 26
    const-class v0, Lcom/tendcloud/tenddata/bi;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/bi;->a:Lcom/tendcloud/tenddata/bi;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/tendcloud/tenddata/bi;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/bi;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/bi;->a:Lcom/tendcloud/tenddata/bi;

    .line 30
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 32
    :cond_1
    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/bi;->a:Lcom/tendcloud/tenddata/bi;

    return-object v0
.end method

.method private static final a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 168
    array-length v3, v2

    const/16 v4, 0x32

    if-le v3, v4, :cond_0

    goto :goto_0

    :cond_0
    array-length v4, v2

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    const-string v5, "\tat "

    .line 170
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    aget-object v5, v2, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 174
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    .line 176
    invoke-static {v0, v2, p0, v1}, Lcom/tendcloud/tenddata/bi;->a(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;Ljava/lang/Throwable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :catchall_0
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final a(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;Ljava/lang/Throwable;I)V
    .locals 6

    const-string v0, "\r\n"

    .line 187
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 188
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 189
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v2, :cond_0

    if-ltz v3, :cond_0

    .line 190
    aget-object v4, v1, v2

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x32

    if-le v2, p1, :cond_1

    const/16 v2, 0x32

    :cond_1
    const-string p1, "Caused by : "

    .line 196
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    :goto_1
    if-gt p1, v2, :cond_2

    const-string v3, "\t"

    .line 200
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    aget-object v3, v1, p1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x5

    if-lt p3, p1, :cond_3

    return-void

    .line 209
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    add-int/lit8 p3, p3, 0x1

    .line 211
    invoke-static {p0, v1, p2, p3}, Lcom/tendcloud/tenddata/bi;->a(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;Ljava/lang/Throwable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    return-void
.end method

.method static a(Ljava/lang/Throwable;Ljava/lang/String;Lcom/tendcloud/tenddata/a;Z)V
    .locals 10

    const-string v0, "com.android."

    const-string v1, "android."

    const-string v2, "javax."

    const-string v3, "java."

    const-string v4, ":"

    .line 105
    sget-object v5, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    if-nez v5, :cond_0

    return-void

    .line 111
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    :goto_0
    if-eqz p3, :cond_2

    .line 112
    sget-boolean p1, Lcom/tendcloud/tenddata/ab;->K:Z

    if-eqz p1, :cond_2

    .line 113
    invoke-static {v5, v6, p2}, Lcom/tendcloud/tenddata/i;->c(JLcom/tendcloud/tenddata/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    move-object p1, p0

    .line 122
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 123
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_1

    .line 126
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    .line 127
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    sget-object v5, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x3

    if-ge v6, v8, :cond_8

    .line 131
    array-length v8, p2

    if-ge v7, v8, :cond_8

    .line 132
    aget-object v8, p2, v7

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 133
    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_3

    .line 135
    :cond_4
    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_3

    .line 137
    :cond_5
    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_3

    .line 139
    :cond_6
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 140
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_3

    .line 143
    :cond_7
    aget-object v8, p2, v7

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 147
    :cond_8
    new-instance p2, Lcom/tendcloud/tenddata/bx;

    invoke-direct {p2}, Lcom/tendcloud/tenddata/bx;-><init>()V

    const-string p3, "apm"

    .line 148
    iput-object p3, p2, Lcom/tendcloud/tenddata/bx;->b:Ljava/lang/String;

    const-string p3, "error"

    .line 149
    iput-object p3, p2, Lcom/tendcloud/tenddata/bx;->c:Ljava/lang/String;

    .line 150
    new-instance p3, Ljava/util/TreeMap;

    invoke-direct {p3}, Ljava/util/TreeMap;-><init>()V

    const-string v0, "msg"

    .line 151
    invoke-static {p0}, Lcom/tendcloud/tenddata/bi;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "type"

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iput-object p3, p2, Lcom/tendcloud/tenddata/bx;->d:Ljava/util/Map;

    .line 154
    sget-object p0, Lcom/tendcloud/tenddata/a;->UNIVERSAL:Lcom/tendcloud/tenddata/a;

    iput-object p0, p2, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    .line 155
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method private static b()V
    .locals 1

    .line 76
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/bi$a;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/bi$a;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method a(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "occurTime"

    const-string v1, "throwable"

    :try_start_0
    const-string v2, "service"

    .line 49
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/a;

    .line 50
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v1, p1, v2, v0}, Lcom/tendcloud/tenddata/bi;->a(Ljava/lang/Throwable;Ljava/lang/String;Lcom/tendcloud/tenddata/a;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final onTDEBEventError(Lcom/tendcloud/tenddata/zz$a;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 60
    :try_start_0
    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "apiType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    return-void

    .line 65
    :cond_1
    iget-object p1, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/bi;->a(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method
