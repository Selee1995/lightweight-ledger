.class final Lcom/alibaba/android/arouter/launcher/_ARouter;
.super Ljava/lang/Object;
.source "_ARouter.java"


# static fields
.field private static volatile autoInject:Z

.field private static volatile debuggable:Z

.field private static volatile executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile hasInit:Z

.field private static volatile instance:Lcom/alibaba/android/arouter/launcher/_ARouter;

.field private static interceptorService:Lcom/alibaba/android/arouter/facade/service/InterceptorService;

.field static logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

.field private static mContext:Landroid/content/Context;

.field private static volatile monitorMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/alibaba/android/arouter/utils/DefaultLogger;

    const-string v1, "ARouter::"

    invoke-direct {v0, v1}, Lcom/alibaba/android/arouter/utils/DefaultLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const/4 v0, 0x0

    .line 46
    sput-boolean v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->monitorMode:Z

    .line 47
    sput-boolean v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->debuggable:Z

    .line 48
    sput-boolean v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->autoInject:Z

    const/4 v1, 0x0

    .line 49
    sput-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->instance:Lcom/alibaba/android/arouter/launcher/_ARouter;

    .line 50
    sput-boolean v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->hasInit:Z

    .line 51
    invoke-static {}, Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;->getInstance()Lcom/alibaba/android/arouter/thread/DefaultPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private _navigation(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;
    .locals 9

    if-nez p1, :cond_0

    .line 336
    sget-object p1, Lcom/alibaba/android/arouter/launcher/_ARouter;->mContext:Landroid/content/Context;

    :cond_0
    move-object v3, p1

    .line 338
    sget-object p1, Lcom/alibaba/android/arouter/launcher/_ARouter$3;->$SwitchMap$com$alibaba$android$arouter$facade$enums$RouteType:[I

    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getType()Lcom/alibaba/android/arouter/facade/enums/RouteType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/enums/RouteType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eq p1, v0, :cond_5

    const/4 p3, 0x2

    if-eq p1, p3, :cond_4

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    const/4 p3, 0x4

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    goto :goto_1

    .line 378
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getDestination()Ljava/lang/Class;

    move-result-object p1

    const/4 p3, 0x0

    :try_start_0
    new-array p4, p3, [Ljava/lang/Class;

    .line 380
    invoke-virtual {p1, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 381
    instance-of p3, p1, Landroid/app/Fragment;

    if-eqz p3, :cond_2

    .line 382
    move-object p3, p1

    check-cast p3, Landroid/app/Fragment;

    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 383
    :cond_2
    instance-of p3, p1, Landroid/support/v4/app/Fragment;

    if-eqz p3, :cond_3

    .line 384
    move-object p3, p1

    check-cast p3, Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 389
    sget-object p2, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Fetch fragment instance error, "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/arouter/utils/TextUtils;->formatStackTrace([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ARouter::"

    invoke-interface {p2, p3, p1}, Lcom/alibaba/android/arouter/facade/template/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v7

    .line 374
    :cond_4
    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getProvider()Lcom/alibaba/android/arouter/facade/template/IProvider;

    move-result-object p1

    return-object p1

    .line 341
    :cond_5
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getDestination()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v4, v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 342
    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 345
    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getFlags()I

    move-result p1

    const/4 v0, -0x1

    if-eq v0, p1, :cond_6

    .line 347
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 348
    :cond_6
    instance-of p1, v3, Landroid/app/Activity;

    if-nez p1, :cond_7

    const/high16 p1, 0x10000000

    .line 349
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 353
    :cond_7
    :goto_2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Lcom/alibaba/android/arouter/launcher/_ARouter$2;

    move-object v0, v8

    move-object v1, p0

    move v2, p3

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/arouter/launcher/_ARouter$2;-><init>(Lcom/alibaba/android/arouter/launcher/_ARouter;ILandroid/content/Context;Landroid/content/Intent;Lcom/alibaba/android/arouter/facade/Postcard;Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;)V

    invoke-virtual {p1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v7
.end method

.method static synthetic access$000(Lcom/alibaba/android/arouter/launcher/_ARouter;Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/arouter/launcher/_ARouter;->_navigation(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static afterInit()V
    .locals 2

    .line 246
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/arouter/service/interceptor"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/arouter/facade/service/InterceptorService;

    sput-object v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->interceptorService:Lcom/alibaba/android/arouter/facade/service/InterceptorService;

    return-void
.end method

.method static attachBaseContext()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "ARouter::"

    const-string v1, "ARouter start attachBaseContext"

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 124
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 127
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x1

    .line 128
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v5, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 129
    invoke-virtual {v2, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mInstrumentation"

    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 136
    new-instance v3, Lcom/alibaba/android/arouter/core/InstrumentationHook;

    invoke-direct {v3}, Lcom/alibaba/android/arouter/core/InstrumentationHook;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "ARouter hook instrumentation success!"

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ARouter hook instrumentation failed! ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static canAutoInject()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    sget-boolean v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->autoInject:Z

    return v0
.end method

.method static debuggable()Z
    .locals 1

    .line 162
    sget-boolean v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->debuggable:Z

    return v0
.end method

.method static declared-synchronized destroy()V
    .locals 4

    const-class v0, Lcom/alibaba/android/arouter/launcher/_ARouter;

    monitor-enter v0

    .line 76
    :try_start_0
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/_ARouter;->debuggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 77
    sput-boolean v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->hasInit:Z

    .line 78
    invoke-static {}, Lcom/alibaba/android/arouter/core/LogisticsCenter;->suspend()V

    .line 79
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v2, "ARouter::"

    const-string v3, "ARouter destroy success!"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v2, "ARouter::"

    const-string v3, "Destroy can be used in debug mode only!"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/arouter/facade/template/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized enableAutoInject()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/alibaba/android/arouter/launcher/_ARouter;

    monitor-enter v0

    const/4 v1, 0x1

    .line 112
    :try_start_0
    sput-boolean v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->autoInject:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private extractGroup(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 227
    invoke-static {p1}, Lcom/alibaba/android/arouter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 232
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-static {p1}, Lcom/alibaba/android/arouter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 234
    :cond_0
    new-instance p1, Lcom/alibaba/android/arouter/exception/HandlerException;

    const-string v0, "ARouter::Extract the default group failed! There\'s nothing between 2 \'/\'!"

    invoke-direct {p1, v0}, Lcom/alibaba/android/arouter/exception/HandlerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 239
    sget-object v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to extract default group! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ARouter::"

    invoke-interface {v0, v1, p1}, Lcom/alibaba/android/arouter/facade/template/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 228
    :cond_1
    new-instance p1, Lcom/alibaba/android/arouter/exception/HandlerException;

    const-string v0, "ARouter::Extract the default group failed, the path must be start with \'/\' and contain more than 2 \'/\'!"

    invoke-direct {p1, v0}, Lcom/alibaba/android/arouter/exception/HandlerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static getInstance()Lcom/alibaba/android/arouter/launcher/_ARouter;
    .locals 2

    .line 86
    sget-boolean v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->hasInit:Z

    if-eqz v0, :cond_2

    .line 89
    sget-object v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->instance:Lcom/alibaba/android/arouter/launcher/_ARouter;

    if-nez v0, :cond_1

    .line 90
    const-class v0, Lcom/alibaba/android/arouter/launcher/_ARouter;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->instance:Lcom/alibaba/android/arouter/launcher/_ARouter;

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lcom/alibaba/android/arouter/launcher/_ARouter;

    invoke-direct {v1}, Lcom/alibaba/android/arouter/launcher/_ARouter;-><init>()V

    sput-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->instance:Lcom/alibaba/android/arouter/launcher/_ARouter;

    .line 94
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 96
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->instance:Lcom/alibaba/android/arouter/launcher/_ARouter;

    return-object v0

    .line 87
    :cond_2
    new-instance v0, Lcom/alibaba/android/arouter/exception/InitException;

    const-string v1, "ARouterCore::Init::Invoke init(context) first!"

    invoke-direct {v0, v1}, Lcom/alibaba/android/arouter/exception/InitException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static declared-synchronized init(Landroid/app/Application;)Z
    .locals 3

    const-class v0, Lcom/alibaba/android/arouter/launcher/_ARouter;

    monitor-enter v0

    .line 60
    :try_start_0
    sput-object p0, Lcom/alibaba/android/arouter/launcher/_ARouter;->mContext:Landroid/content/Context;

    .line 61
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p0, v1}, Lcom/alibaba/android/arouter/core/LogisticsCenter;->init(Landroid/content/Context;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 62
    sget-object p0, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v1, "ARouter::"

    const-string v2, "ARouter init success!"

    invoke-interface {p0, v1, v2}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 63
    sput-boolean p0, Lcom/alibaba/android/arouter/launcher/_ARouter;->hasInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static inject(Ljava/lang/Object;)V
    .locals 2

    .line 172
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/arouter/service/autowired"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/arouter/facade/service/AutowiredService;

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0, p0}, Lcom/alibaba/android/arouter/facade/service/AutowiredService;->autowire(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static isMonitorMode()Z
    .locals 1

    .line 158
    sget-boolean v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->monitorMode:Z

    return v0
.end method

.method static declared-synchronized monitorMode()V
    .locals 4

    const-class v0, Lcom/alibaba/android/arouter/launcher/_ARouter;

    monitor-enter v0

    const/4 v1, 0x1

    .line 153
    :try_start_0
    sput-boolean v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->monitorMode:Z

    .line 154
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v2, "ARouter::"

    const-string v3, "ARouter monitorMode on"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized openDebug()V
    .locals 4

    const-class v0, Lcom/alibaba/android/arouter/launcher/_ARouter;

    monitor-enter v0

    const/4 v1, 0x1

    .line 101
    :try_start_0
    sput-boolean v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->debuggable:Z

    .line 102
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v2, "ARouter::"

    const-string v3, "ARouter openDebug"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized openLog()V
    .locals 4

    const-class v0, Lcom/alibaba/android/arouter/launcher/_ARouter;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/alibaba/android/arouter/facade/template/ILogger;->showLog(Z)V

    .line 107
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v2, "ARouter::"

    const-string v3, "ARouter openLog"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized printStackTrace()V
    .locals 4

    const-class v0, Lcom/alibaba/android/arouter/launcher/_ARouter;

    monitor-enter v0

    .line 144
    :try_start_0
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/alibaba/android/arouter/facade/template/ILogger;->showStackTrace(Z)V

    .line 145
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v2, "ARouter::"

    const-string v3, "ARouter printStackTrace"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized setExecutor(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    const-class v0, Lcom/alibaba/android/arouter/launcher/_ARouter;

    monitor-enter v0

    .line 149
    :try_start_0
    sput-object p0, Lcom/alibaba/android/arouter/launcher/_ARouter;->executor:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static setLogger(Lcom/alibaba/android/arouter/facade/template/ILogger;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 167
    sput-object p0, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    :cond_0
    return-void
.end method


# virtual methods
.method protected build(Landroid/net/Uri;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 4

    if-eqz p1, :cond_1

    .line 197
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/arouter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->navigation(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;

    if-eqz v0, :cond_0

    .line 202
    invoke-interface {v0, p1}, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;->forUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 204
    :cond_0
    new-instance v0, Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/arouter/launcher/_ARouter;->extractGroup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/alibaba/android/arouter/facade/Postcard;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-object v0

    .line 198
    :cond_1
    new-instance p1, Lcom/alibaba/android/arouter/exception/HandlerException;

    const-string v0, "ARouter::Parameter invalid!"

    invoke-direct {p1, v0}, Lcom/alibaba/android/arouter/exception/HandlerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 2

    .line 182
    invoke-static {p1}, Lcom/alibaba/android/arouter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->navigation(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0, p1}, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;->forString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 189
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/arouter/launcher/_ARouter;->extractGroup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/arouter/launcher/_ARouter;->build(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    return-object p1

    .line 183
    :cond_1
    new-instance p1, Lcom/alibaba/android/arouter/exception/HandlerException;

    const-string v0, "ARouter::Parameter is invalid!"

    invoke-direct {p1, v0}, Lcom/alibaba/android/arouter/exception/HandlerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected build(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 2

    .line 212
    invoke-static {p1}, Lcom/alibaba/android/arouter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/alibaba/android/arouter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->navigation(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;

    if-eqz v0, :cond_0

    .line 217
    invoke-interface {v0, p1}, Lcom/alibaba/android/arouter/facade/service/PathReplaceService;->forString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 219
    :cond_0
    new-instance v0, Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/android/arouter/facade/Postcard;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 213
    :cond_1
    new-instance p1, Lcom/alibaba/android/arouter/exception/HandlerException;

    const-string p2, "ARouter::Parameter is invalid!"

    invoke-direct {p1, p2}, Lcom/alibaba/android/arouter/exception/HandlerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected navigation(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    .line 276
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/android/arouter/core/LogisticsCenter;->completion(Lcom/alibaba/android/arouter/facade/Postcard;)V
    :try_end_0
    .catch Lcom/alibaba/android/arouter/exception/NoRouteFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p4, :cond_0

    .line 299
    invoke-interface {p4, p2}, Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;->onFound(Lcom/alibaba/android/arouter/facade/Postcard;)V

    .line 302
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->isGreenChannel()Z

    move-result v1

    if-nez v1, :cond_1

    .line 303
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->interceptorService:Lcom/alibaba/android/arouter/facade/service/InterceptorService;

    new-instance v8, Lcom/alibaba/android/arouter/launcher/_ARouter$1;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/android/arouter/launcher/_ARouter$1;-><init>(Lcom/alibaba/android/arouter/launcher/_ARouter;Landroid/content/Context;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;Lcom/alibaba/android/arouter/facade/Postcard;)V

    invoke-interface {v1, p2, v8}, Lcom/alibaba/android/arouter/facade/service/InterceptorService;->doInterceptions(Lcom/alibaba/android/arouter/facade/Postcard;Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;)V

    return-object v0

    .line 329
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/arouter/launcher/_ARouter;->_navigation(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p3

    .line 278
    sget-object v1, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    invoke-virtual {p3}, Lcom/alibaba/android/arouter/exception/NoRouteFoundException;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v2, "ARouter::"

    invoke-interface {v1, v2, p3}, Lcom/alibaba/android/arouter/facade/template/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/_ARouter;->debuggable()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 281
    sget-object p3, Lcom/alibaba/android/arouter/launcher/_ARouter;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There\'s no route matched!\n Path = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Group = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 281
    invoke-static {p3, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p3

    .line 283
    invoke-virtual {p3}, Landroid/widget/Toast;->show()V

    :cond_2
    if-eqz p4, :cond_3

    .line 287
    invoke-interface {p4, p2}, Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;->onLost(Lcom/alibaba/android/arouter/facade/Postcard;)V

    goto :goto_0

    .line 289
    :cond_3
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p3

    const-class p4, Lcom/alibaba/android/arouter/facade/service/DegradeService;

    invoke-virtual {p3, p4}, Lcom/alibaba/android/arouter/launcher/ARouter;->navigation(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/android/arouter/facade/service/DegradeService;

    if-eqz p3, :cond_4

    .line 291
    invoke-interface {p3, p1, p2}, Lcom/alibaba/android/arouter/facade/service/DegradeService;->onLost(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;)V

    :cond_4
    :goto_0
    return-object v0
.end method

.method protected navigation(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 251
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/arouter/core/LogisticsCenter;->buildProvider(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    if-nez v0, :cond_0

    .line 255
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/arouter/core/LogisticsCenter;->buildProvider(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 258
    :cond_0
    invoke-static {v0}, Lcom/alibaba/android/arouter/core/LogisticsCenter;->completion(Lcom/alibaba/android/arouter/facade/Postcard;)V

    .line 259
    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->getProvider()Lcom/alibaba/android/arouter/facade/template/IProvider;

    move-result-object p1
    :try_end_0
    .catch Lcom/alibaba/android/arouter/exception/NoRouteFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 261
    sget-object v0, Lcom/alibaba/android/arouter/launcher/_ARouter;->logger:Lcom/alibaba/android/arouter/facade/template/ILogger;

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/exception/NoRouteFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ARouter::"

    invoke-interface {v0, v1, p1}, Lcom/alibaba/android/arouter/facade/template/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
