.class final Lcom/tendcloud/tenddata/c;
.super Ljava/lang/Object;
.source "td"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/app/Activity;Lcom/tendcloud/tenddata/a;)V
    .locals 2

    const/4 v0, 0x0

    .line 28
    :try_start_0
    sput v0, Lcom/tendcloud/tenddata/ab;->n:I

    .line 29
    invoke-static {}, Lcom/tendcloud/tenddata/zz;->b()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result p0

    const/16 v0, 0x80

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const-string p0, "Ignore page changing during screen switch"

    .line 31
    invoke-static {p0}, Lcom/tendcloud/tenddata/h;->iForDeveloper(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 33
    sput-boolean p0, Lcom/tendcloud/tenddata/zz;->d:Z

    return-void

    .line 37
    :cond_0
    new-instance p0, Lcom/tendcloud/tenddata/c$1;

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/c$1;-><init>(Lcom/tendcloud/tenddata/a;)V

    invoke-static {p0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method static a(Lcom/tendcloud/tenddata/a;)V
    .locals 1

    .line 98
    sget-boolean v0, Lcom/tendcloud/tenddata/ab;->K:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tendcloud/tenddata/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 99
    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/c;->a(Landroid/app/Activity;Lcom/tendcloud/tenddata/a;)V

    :cond_0
    return-void
.end method

.method private static a()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.Activity"

    .line 105
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isResumed"

    new-array v3, v0, [Ljava/lang/Class;

    .line 106
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 107
    invoke-static {}, Lcom/tendcloud/tenddata/c;->b()Landroid/app/Activity;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    .line 109
    sput-boolean v1, Lcom/tendcloud/tenddata/ab;->K:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 111
    invoke-static {v1}, Lcom/tendcloud/tenddata/h;->eForInternal(Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method

.method private static b()Landroid/app/Activity;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 118
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 119
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mActivities"

    .line 121
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 124
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "paused"

    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 127
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 128
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v1, "activity"

    .line 129
    invoke-virtual {v4, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 130
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    :cond_1
    return-object v0
.end method

.method static b(Landroid/app/Activity;Lcom/tendcloud/tenddata/a;)V
    .locals 4

    .line 60
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/ab;->K:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 65
    sput v0, Lcom/tendcloud/tenddata/ab;->n:I

    .line 66
    invoke-static {}, Lcom/tendcloud/tenddata/zz;->b()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 67
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 68
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 69
    iput v1, v0, Landroid/os/Message;->what:I

    .line 70
    invoke-static {}, Lcom/tendcloud/tenddata/zz;->b()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 72
    new-instance v0, Lcom/tendcloud/tenddata/c$2;

    invoke-direct {v0, p1, p0}, Lcom/tendcloud/tenddata/c$2;-><init>(Lcom/tendcloud/tenddata/a;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
