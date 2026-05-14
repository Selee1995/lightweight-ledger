.class public Lcom/tendcloud/tenddata/bo;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/bo$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/bo;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/bo;->a()Lcom/tendcloud/tenddata/bo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/z;->register(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/bo;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/bo;
    .locals 2

    .line 29
    sget-object v0, Lcom/tendcloud/tenddata/bo;->a:Lcom/tendcloud/tenddata/bo;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/tendcloud/tenddata/br;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/bo;->a:Lcom/tendcloud/tenddata/bo;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/tendcloud/tenddata/bo;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/bo;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/bo;->a:Lcom/tendcloud/tenddata/bo;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/bo;->a:Lcom/tendcloud/tenddata/bo;

    return-object v0
.end method

.method private final a(JLjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 8

    const/4 v0, 0x1

    .line 94
    sput-boolean v0, Lcom/tendcloud/tenddata/zz;->c:Z

    .line 95
    iget-object v0, p0, Lcom/tendcloud/tenddata/bo;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "onPageBegin being called!  pagename: "

    if-eqz p4, :cond_1

    .line 99
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", refer: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    :goto_0
    if-eqz p3, :cond_2

    .line 111
    new-instance v0, Lcom/tendcloud/tenddata/bo$a;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/tendcloud/tenddata/bo$a;-><init>(Lcom/tendcloud/tenddata/bo;JLjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/bo$1;)V

    .line 112
    iget-object p1, p0, Lcom/tendcloud/tenddata/bo;->b:Ljava/util/HashMap;

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance p1, Lcom/tendcloud/tenddata/bx;

    invoke-direct {p1}, Lcom/tendcloud/tenddata/bx;-><init>()V

    const-string p2, "page"

    .line 115
    iput-object p2, p1, Lcom/tendcloud/tenddata/bx;->b:Ljava/lang/String;

    const-string p2, "enter"

    .line 116
    iput-object p2, p1, Lcom/tendcloud/tenddata/bx;->c:Ljava/lang/String;

    .line 117
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    const-string p3, "startTime"

    .line 118
    invoke-static {v0}, Lcom/tendcloud/tenddata/bo$a;->access$100(Lcom/tendcloud/tenddata/bo$a;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "duration"

    const/4 p4, 0x0

    .line 119
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "name"

    .line 120
    invoke-static {v0}, Lcom/tendcloud/tenddata/bo$a;->access$200(Lcom/tendcloud/tenddata/bo$a;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "from"

    .line 121
    invoke-static {v0}, Lcom/tendcloud/tenddata/bo$a;->access$300(Lcom/tendcloud/tenddata/bo$a;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iput-object p2, p1, Lcom/tendcloud/tenddata/bx;->d:Ljava/util/Map;

    .line 123
    iput-object p5, p1, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    .line 124
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method private final a(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    .locals 8

    .line 133
    iget-object v0, p0, Lcom/tendcloud/tenddata/bo;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageEnd being called! pageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/tendcloud/tenddata/bo;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/bo$a;

    if-eqz v0, :cond_1

    .line 140
    new-instance v1, Lcom/tendcloud/tenddata/bx;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/bx;-><init>()V

    const-string v2, "page"

    .line 141
    iput-object v2, v1, Lcom/tendcloud/tenddata/bx;->b:Ljava/lang/String;

    const-string v2, "leave"

    .line 142
    iput-object v2, v1, Lcom/tendcloud/tenddata/bx;->c:Ljava/lang/String;

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0}, Lcom/tendcloud/tenddata/bo$a;->access$400(Lcom/tendcloud/tenddata/bo$a;)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    .line 144
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 152
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    const-string v5, "startTime"

    .line 153
    invoke-static {v0}, Lcom/tendcloud/tenddata/bo$a;->access$400(Lcom/tendcloud/tenddata/bo$a;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "name"

    .line 154
    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "from"

    .line 155
    invoke-static {v0}, Lcom/tendcloud/tenddata/bo$a;->access$500(Lcom/tendcloud/tenddata/bo$a;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "duration"

    .line 156
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iput-object v4, v1, Lcom/tendcloud/tenddata/bx;->d:Ljava/util/Map;

    .line 158
    iput-object p2, v1, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    .line 159
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V

    .line 165
    :cond_1
    sget-boolean p2, Lcom/tendcloud/tenddata/ab;->I:Z

    if-eqz p2, :cond_2

    .line 166
    invoke-static {p1}, Lcom/tendcloud/tenddata/i;->setLastActivity(Ljava/lang/String;)V

    .line 168
    :cond_2
    sput-object p1, Lcom/tendcloud/tenddata/ab;->J:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 8
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
    const-string v0, "apiType"

    .line 71
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "service"

    .line 72
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/tendcloud/tenddata/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    const-string v2, "pageName"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-direct {p0, p1, v7}, Lcom/tendcloud/tenddata/bo;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V

    goto :goto_1

    .line 76
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/ab;->J:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tendcloud/tenddata/i;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tendcloud/tenddata/ab;->J:Ljava/lang/String;

    :goto_0
    move-object v6, v0

    const-string v0, "occurTime"

    .line 77
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 78
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    .line 79
    invoke-direct/range {v2 .. v7}, Lcom/tendcloud/tenddata/bo;->a(JLjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method


# virtual methods
.method public final onTDEBEventPage(Lcom/tendcloud/tenddata/zz$a;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 53
    :try_start_0
    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "apiType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    return-void

    .line 61
    :cond_1
    iget-object v0, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "occurTime"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 62
    iget-object p1, p1, Lcom/tendcloud/tenddata/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/bo;->a(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method
