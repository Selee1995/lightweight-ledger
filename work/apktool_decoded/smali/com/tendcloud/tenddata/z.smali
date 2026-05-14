.class public final Lcom/tendcloud/tenddata/z;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/z$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/z;


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Lcom/tendcloud/tenddata/ae;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/tendcloud/tenddata/z$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/z;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 44
    new-instance v0, Lcom/tendcloud/tenddata/z$1;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/z$1;-><init>(Lcom/tendcloud/tenddata/z;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/z;->c:Ljava/lang/ThreadLocal;

    .line 54
    new-instance v0, Lcom/tendcloud/tenddata/z$2;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/z$2;-><init>(Lcom/tendcloud/tenddata/z;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/z;->d:Ljava/lang/ThreadLocal;

    .line 309
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/z;->e:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/z;
    .locals 2

    .line 29
    sget-object v0, Lcom/tendcloud/tenddata/z;->a:Lcom/tendcloud/tenddata/z;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/tendcloud/tenddata/z;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/z;->a:Lcom/tendcloud/tenddata/z;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/tendcloud/tenddata/z;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/z;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/z;->a:Lcom/tendcloud/tenddata/z;

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
    sget-object v0, Lcom/tendcloud/tenddata/z;->a:Lcom/tendcloud/tenddata/z;

    return-object v0
.end method

.method private c(Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 288
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 289
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 291
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 294
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    .line 295
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 299
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    return-object v1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method a(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Lcom/tendcloud/tenddata/ae;",
            ">;"
        }
    .end annotation

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/z;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Ljava/lang/Object;Lcom/tendcloud/tenddata/ae;)V
    .locals 2

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/z;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/tendcloud/tenddata/z$a;

    invoke-direct {v1, p1, p2}, Lcom/tendcloud/tenddata/z$a;-><init>(Ljava/lang/Object;Lcom/tendcloud/tenddata/ae;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method b(Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/z;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 275
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/z;->c(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/tendcloud/tenddata/z;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v0

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b()V
    .locals 3

    const/4 v0, 0x0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/z;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/tendcloud/tenddata/z;->d:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    .line 208
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tendcloud/tenddata/z;->d:Ljava/lang/ThreadLocal;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 210
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/z;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/z$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    .line 220
    iget-object v1, p0, Lcom/tendcloud/tenddata/z;->d:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    .line 215
    :cond_2
    :try_start_2
    iget-object v2, v1, Lcom/tendcloud/tenddata/z$a;->handler:Lcom/tendcloud/tenddata/ae;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/ae;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    iget-object v2, v1, Lcom/tendcloud/tenddata/z$a;->event:Ljava/lang/Object;

    iget-object v1, v1, Lcom/tendcloud/tenddata/z$a;->handler:Lcom/tendcloud/tenddata/ae;

    invoke-virtual {p0, v2, v1}, Lcom/tendcloud/tenddata/z;->b(Ljava/lang/Object;Lcom/tendcloud/tenddata/ae;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 220
    iget-object v2, p0, Lcom/tendcloud/tenddata/z;->d:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method protected b(Ljava/lang/Object;Lcom/tendcloud/tenddata/ae;)V
    .locals 0

    .line 239
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/tendcloud/tenddata/ae;->handleEvent(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public post(Ljava/lang/Object;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 160
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/z;->b(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    .line 163
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 164
    invoke-virtual {p0, v2}, Lcom/tendcloud/tenddata/z;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 166
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 168
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tendcloud/tenddata/ae;

    .line 169
    invoke-virtual {p0, p1, v3}, Lcom/tendcloud/tenddata/z;->a(Ljava/lang/Object;Lcom/tendcloud/tenddata/ae;)V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 174
    instance-of v0, p1, Lcom/tendcloud/tenddata/ag;

    if-nez v0, :cond_3

    .line 175
    new-instance v0, Lcom/tendcloud/tenddata/ag;

    invoke-direct {v0, p0, p1}, Lcom/tendcloud/tenddata/ag;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V

    .line 178
    :cond_3
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/z;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 77
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/tendcloud/tenddata/ad;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 78
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 79
    iget-object v2, p0, Lcom/tendcloud/tenddata/z;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_3

    .line 82
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 83
    iget-object v3, p0, Lcom/tendcloud/tenddata/z;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 88
    :cond_3
    :goto_0
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 89
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :catchall_0
    :cond_4
    return-void
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 113
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/tendcloud/tenddata/ad;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 114
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v1}, Lcom/tendcloud/tenddata/z;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v1, :cond_4

    .line 118
    invoke-interface {v1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 124
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tendcloud/tenddata/ae;

    .line 125
    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    invoke-virtual {v3}, Lcom/tendcloud/tenddata/ae;->b()V

    goto :goto_1

    .line 129
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_4
    :goto_2
    return-void
.end method
